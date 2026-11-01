"""Direct acquired-iOS versus pinned Andrea/SpektraFilm source comparisons.

No SpektraLab desktop implementation is used as an expected-result oracle.
"""
from pathlib import Path
from types import SimpleNamespace
import ast, __future__, contextlib, ctypes, hashlib, io, json, math, struct, subprocess, sys
import numpy as np
from scipy.stats import norm
from scipy.optimize import brentq
import macho_inspect as mi
from arm64_core_probe import Machine, HEAP
from macho_rebase import apply_rebases

ROOT=Path(__file__).resolve().parent.parent
OUT=ROOT/'core-comparison'
UP=ROOT/'reference-sources/upstream/src/spektrafilm'

def source_functions(path,names,extra=None):
    tree=ast.parse((UP/path).read_text())
    nodes=[n for n in tree.body if isinstance(n,ast.FunctionDef) and n.name in names]
    assert len(nodes)==len(names)
    for node in nodes:node.decorator_list=[]
    env={'np':np,'math':math,'numba':SimpleNamespace(prange=range),'prange':range}
    env.update(extra or {})
    exec(compile(ast.Module(body=nodes,type_ignores=[]),str(UP/path),'exec',flags=__future__.annotations.compiler_flag),env)
    return env

class MoreMathMachine(Machine):
    def hook(self,uc,addr,size,user):
        if addr in (0x100979a54,0x100979d6c):
            fn=math.hypot if addr==0x100979a54 else math.pow
            self.d(0,fn(self.d(0),self.d(1)));self.reg('pc',self.reg('lr'));return
        super().hook(uc,addr,size,user)

def radial_test():
    env=source_functions('utils/gamut_compression.py',['reinhard_knee','_ray_polygon_distance','compress_xy_radial'])
    m=MoreMathMachine();rng=np.random.default_rng(261029)
    polygons=[np.array([[-1,-1],[1,-1],[1,1],[-1,1],[-1,-1]],float)]
    for n in (3,9,24):
        t=np.linspace(0,2*np.pi,n,endpoint=False);r=rng.uniform(.6,1.3,n)
        poly=np.stack([r*np.cos(t),r*np.sin(t)],axis=1);polygons.append(np.vstack([poly,poly[0]]))
    records=[];maxerr=0.;cases=0
    for poly in polygons:
        points=np.vstack([rng.uniform(-2,2,(150,2)),[[0,0],[5e-10,0],[2e-9,0],[0,1],[1,0],[2,0]]])
        for xy in points:
            threshold=float(rng.choice([0,.2,.6]));power=float(rng.choice([2,4,6]));white=np.zeros(2)
            expected=env['compress_xy_radial'](xy,white,threshold=threshold,limit=1.,power=power,locus=poly)
            m.cursor=HEAP;args=[m.raw(xy.astype('<f8').tobytes()),m.raw(white.tobytes()),m.vec(poly),m.raw(bytes(16))]
            for i,p in enumerate(args):m.reg('x'+str(i),p)
            for i,v in enumerate([threshold,1.,power]):m.d(i,v)
            m.run(0x1008f39e0)
            actual=np.frombuffer(m.uc.mem_read(args[3],16),dtype='<f8').copy()
            err=float(np.max(abs(actual-expected)));maxerr=max(maxerr,err);cases+=1
            assert err<1e-11,(xy,actual,expected)
    # A deliberately missed polygon: upstream documentation says NaN, actual ray helper returns +inf.
    miss_poly=polygons[0];origin=np.array([3.,0.]);direction=np.array([1.,0.])
    miss=env['_ray_polygon_distance'](origin,direction,miss_poly)
    assert np.isposinf(miss)
    return {'cases':cases,'max_abs_error':maxerr,'ios_function':'0x1008f39e0-0x1008f3b78',
      'upstream':'utils/gamut_compression.py:283-393',
      'matched_choices':['parallel-ray epsilon 1e-12','forward intersection t>1e-9',
                        'segment parameter 0<=s<=1','nearest positive intersection','near-white distance<1e-9 passthrough',
                        'distance normalization, Reinhard knee, radial reconstruction'],
      'scope':'Complete CPU radial compression function with actual inlined ray intersection and actual knee function; synthetic closed polygons, not full LUT baking'}

def compile_curves():
    source='''using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
extern "C" void spk_curves(const float*,const float*,const float*,const float*,const uint*,float*,uint3);
extern "C" void run_curves(const float*x,const float*xa,const float*inv,const float*y,const uint*meta,float*out){
for(uint i=0;i<meta[1];i++)spk_curves(x,xa,inv,y,meta,out,uint3{i,0,0});}
'''
    (OUT/'upstream-curves-wrapper.cpp').write_text(source)
    obj=OUT/'upstream-curves-ios.o';lib=OUT/'upstream-curves-ios.dylib'
    subprocess.run(['xcrun','clang','-c','-O2','-Wno-override-module','-x','ir',str(OUT/'air-bitcode/028.bc'),'-o',str(obj)],check=True)
    subprocess.run(['xcrun','clang++','-std=c++17','-O2','-dynamiclib',str(OUT/'upstream-curves-wrapper.cpp'),str(obj),'-o',str(lib)],check=True)
    native=ctypes.CDLL(str(lib));native.run_curves.argtypes=[ctypes.c_void_p]*6
    return native

def interp_test():
    env=source_functions('utils/fast_interp.py',['fast_interp','np_interp_for_image'])
    native=compile_curves();rng=np.random.default_rng(261029)
    errors=[];outputs=0;examples=[]
    for n in (4,8,17,65):
        for t in range(35):
            axis=np.cumsum(rng.integers(0,4,(n,3)),axis=0).astype('<f4')
            axis[-1]=np.maximum(axis[-1],axis[0]+1)
            y=rng.uniform(-1,4,(n,3)).astype('<f4')
            x=rng.uniform(-1,float(axis.max()+1),(20,3)).astype('<f4')
            x[:3]=axis[[0,n//2,n-1]]
            dx=np.diff(axis.astype(float),axis=0)
            inv=np.divide(1.,dx,out=np.zeros_like(dx),where=dx!=0).astype('<f4')
            out=np.zeros_like(x);meta=np.array([n,len(x)],dtype='<u4')
            native.run_curves(*[a.ctypes.data for a in [x,axis,inv,y,meta,out]])
            # Upstream arithmetic runs in Python/NumPy double precision; iOS recovered AIR uses float32/FMA.
            expected=env['fast_interp'](x.astype(float),axis.astype(float),y.astype(float))
            err=float(np.max(abs(out-expected)));errors.append(err);outputs+=out.size
            assert np.allclose(out,expected,atol=1.5e-6,rtol=1e-6),(n,t,err)
    for axis1,query in [([0,0,1,2],0),([0,1,1,2],1)]:
        axis=np.repeat(np.array(axis1,dtype='<f4')[:,None],3,axis=1)
        y=np.repeat(np.array([10,20,30,40],dtype='<f4')[:,None],3,axis=1)
        x=np.full((1,3),query,dtype='<f4');meta=np.array([4,1],dtype='<u4');out=np.zeros_like(x)
        dx=np.diff(axis.astype(float),axis=0);inv=np.divide(1.,dx,out=np.zeros_like(dx),where=dx!=0).astype('<f4')
        native.run_curves(*[a.ctypes.data for a in [x,axis,inv,y,meta,out]])
        original=env['fast_interp'](x.astype(float),axis.astype(float),y.astype(float))
        baseline=env['np_interp_for_image'](x.astype(float),axis.astype(float),y.astype(float))
        assert np.array_equal(out,original)
        examples.append({'axis':axis1,'y':[10,20,30,40],'query':query,'ios':float(out[0,0]),
                         'upstream_fast_interp':float(original[0,0]),'numpy_interp_baseline':float(baseline[0,0])})
    return {'random_cases':len(errors),'random_channel_outputs':outputs,'max_abs_error':max(errors),
       'edge_examples':examples,'ios_ir':'air-ir/028.ll','upstream':'utils/fast_interp.py:5-83 (baseline helper:85-100)',
       'scope':'Recovered iOS AIR compiled to Mac CPU; upstream function body unchanged, Numba decorator omitted and prange mapped to range; reciprocal input supplied according to upstream precomputation'}

def morph_test():
    names=['_signed_z','_gumbel_matched_cdf','_layer_cdf','_evaluate_channel_density',
           '_evaluate_fitted_density','_speed_layer_indices','_channel_gamma_factor',
           '_developer_exhaustion_center_offset','_morph_channel_params','apply_print_curves_morph']
    text=(UP/'utils/morph_curves.py').read_text();constants={}
    tree=ast.parse(text)
    env=source_functions('utils/morph_curves.py',names,{'_norm_dist':norm,'_brentq':brentq})
    for node in tree.body:
        if isinstance(node,ast.Assign) and any(isinstance(t,ast.Name) and t.id in ('SIGMA_FLOOR','_GUMBEL_LOCATION','_GUMBEL_WIDTH') for t in node.targets):
            exec(compile(ast.Module(body=[node],type_ignores=[]),'upstream-constants','exec'),env)
    m=Machine();rebases=apply_rebases(m)
    (OUT/'morph-emulator-rebases.json').write_text(json.dumps(rebases,indent=2)+'\n')
    rng=np.random.default_rng(261029);errors=[];outputs=0
    for positive in (False,True):
        for exhaust in (0.,.2,.6,1.):
            for trial in range(8):
                centers=rng.uniform(-1,1,(3,3));sigmas=rng.uniform(.5,1.2,(3,3));amps=rng.uniform(.2,1.3,(3,3))
                model=SimpleNamespace(centers=centers,amplitudes=amps,sigmas=sigmas,n_layers=3)
                vals=[1.,*rng.uniform(.7,1.6,6),exhaust]
                params=SimpleNamespace(**dict(zip(['active','gamma_factor','gamma_factor_fast','gamma_factor_slow',
                      'gamma_factor_red','gamma_factor_green','gamma_factor_blue','developer_exhaustion'],vals)))
                exposure=np.linspace(-2,2,17)
                expected=env['apply_print_curves_morph'](exposure,model,params,profile_type='positive' if positive else 'negative')
                m.cursor=HEAP;model_bytes=bytearray(0x70);struct.pack_into('<2Q',model_bytes,0x18,3,3)
                for off,data in [(0x28,centers),(0x40,amps),(0x58,sigmas)]:
                    ptr=m.vec(data);model_bytes[off:off+24]=m.uc.mem_read(ptr,24)
                morph_bytes=bytearray(64);morph_bytes[0]=1;struct.pack_into('<7d',morph_bytes,8,*vals[1:])
                args=[m.vec(exposure),m.raw(bytes(model_bytes)),m.raw(bytes(morph_bytes)),int(positive),m.vec([]),m.raw(bytes(24))]
                for i,p in enumerate(args):m.reg('x'+str(i),p)
                try:m.run(0x1008edf64)
                except Exception:
                    print('morph emulation context',positive,exhaust,trial,{k:hex(m.reg(k)) for k in ['pc','lr','x0','x8','x9','x16','x17']},flush=True)
                    raise
                assert m.reg('x0')==1
                actual=m.read_vec(args[4]).reshape(17,3)
                err=float(np.max(abs(actual-expected)));errors.append(err);outputs+=actual.size
                assert err<2e-9,(positive,exhaust,trial,err)
    return {'cases':len(errors),'channel_outputs':outputs,'max_abs_error':max(errors),
      'ios_function':'0x1008edf64-0x1008eec84 plus actual called helpers',
      'upstream':'utils/morph_curves.py:77-296','exhaustion_values':[0,.2,.6,1],
      'emulator_loader':{'rebases_applied':rebases['rebases_applied'],'format':'DYLD_CHAINED_PTR_64_OFFSET; original instructions unchanged'},
      'scope':'Complete CPU curve morph with 3 channels and 3 layers, both positive/negative, real iOS sorting, Gumbel mixing, residual and root solver; upstream SciPy norm/brentq'}

if __name__=='__main__':
    report={'date':'2026-10-29','upstream_repository':'andreavolpato/spektrafilm',
      'upstream_commit':'3bb2c2d2801ff68b92019cf1dbcbb133d60832bc',
      'ios_sample':'1.0.1 build 202610271810','binary_sha256':hashlib.sha256(mi.DATA).hexdigest(),
      'reference_policy':'Expected values use pinned original SpektraFilm functions, no desktop SpektraLab result oracle'}
    if len(sys.argv)>1:
        report.update(json.loads((OUT/'direct-upstream-round2-results.json').read_text()))
    for name,fn in [('gamut_radial',radial_test),('curve_interpolation',interp_test),('complete_curve_morph',morph_test)]:
        if len(sys.argv)>1 and name not in sys.argv[1:]:continue
        report[name]=fn();print(name,json.dumps(report[name],ensure_ascii=False),flush=True)
        (OUT/'direct-upstream-round2-results.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
