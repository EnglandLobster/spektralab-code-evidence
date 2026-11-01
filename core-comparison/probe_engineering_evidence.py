"""Verify engineering/self-test correspondences, not photographic model outputs."""
from pathlib import Path
import contextlib, ctypes, hashlib, io, json, re, struct, subprocess
import numpy as np
import macho_inspect as mi
from arm64_core_probe import Machine, HEAP, STACK

ROOT = Path(__file__).resolve().parent.parent
OUT = ROOT/'core-comparison'
DESKTOP = ROOT/'reference-sources/desktop'
COMMIT = 'fd891c6bc5eb350387602deb5c1ef9b6dcdab948'

def digest(path): return hashlib.sha256(path.read_bytes()).hexdigest()

def main():
    host = (DESKTOP/'engine/src/gpu/metal_gpu.cpp').read_text()
    util = (DESKTOP/'engine/src/shaders/util.metal').read_text()
    body = host[host.index('bool check_math_mode('):host.index('// The frame markers')]
    strings = []
    for match in re.finditer(r'"(?:[^"\\]|\\.)*"(?:\s*"(?:[^"\\]|\\.)*")*', body):
        parts = re.findall(r'"((?:[^"\\]|\\.)*)"', match.group())
        value = ''.join(parts)
        raw = value.encode()
        off = mi.DATA.find(raw+b'\0')
        strings.append({'text':value, 'utf8_bytes':len(raw), 'present_in_ios':off>=0,
                        'file_offset':hex(off) if off>=0 else None,
                        'preferred_va':hex(mi.BASE+off) if off>=0 else None})
    # Exact text and bytes are extracted from both sides, not OCR or inference.
    assert all(s['present_in_ios'] for s in strings)
    p = host.index('for (size_t i = 0; i < n; ++i) {', host.index('bool check_math_mode('))
    end = host.index('\n        begin_frame();',p)
    input_loop = host[p:end]
    kernel = util[util.index('kernel void spk_math_probe('):util.index('// A strided sample')]
    kernel = re.sub(r'\[\[.*?\]\]', '', kernel)
    kernel = re.sub(r'\bdevice\s+', '', kernel)
    kernel = kernel.replace('kernel void spk_math_probe', 'extern "C" void desktop_math_probe')
    cpp = '#include <cstddef>\nusing uint=unsigned;\nusing uint3=uint __attribute__((ext_vector_type(3)));\n'
    classify_start=host.index('size_t zeros = 0, mismatched = 0;',host.index('bool check_math_mode('))
    classify_end=host.index('\n        end_frame();',classify_start)
    classifier=host[classify_start:classify_end]
    cpp += '#include <cmath>\nextern "C" void desktop_probe_inputs(float *in) { constexpr size_t n=64;\n'+input_loop+'\n}\n'+kernel
    cpp += '\nextern "C" void desktop_classify(const float *in,const float *got,unsigned *counts) {constexpr size_t n=64;\n'+classifier+'\ncounts[0]=zeros;counts[1]=mismatched;\n}\n'
    (OUT/'math-probe-reference.cpp').write_text(cpp)
    obj = OUT/'math-probe-ios-air.o'
    lib = OUT/'math-probe-comparison.dylib'
    subprocess.run(['xcrun','clang','-c','-O2','-Wno-override-module','-x','ir',str(OUT/'air-bitcode/054.bc'),'-o',str(obj)],check=True)
    subprocess.run(['xcrun','clang++','-std=c++17','-O2','-ffp-contract=on','-dynamiclib',str(OUT/'math-probe-reference.cpp'),str(obj),'-o',str(lib)],check=True)
    native = ctypes.CDLL(str(lib))
    inputs = np.zeros(128,dtype='<f4')
    native.desktop_probe_inputs.argtypes=[ctypes.c_void_p]
    native.desktop_probe_inputs(inputs.ctypes.data)
    machine=Machine();machine.reg('sp',STACK);machine.reg('x8',0)
    # Pure input-generation block of acquired iOS host function; excludes GPU dispatch.
    machine.run(0x100911bdc,0x100911c70)
    got=bytes(machine.uc.mem_read(STACK+0x88,512))
    assert got==inputs.tobytes()
    # Compile and execute the actual AIR kernel and the fixed desktop source.
    # uint3 is an ARM64 128-bit vector passed in v0, inaccessible to ctypes;
    # a C wrapper calls both implementations with the correct vector ABI.
    wrapper='''#include <cstring>
using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
extern "C" void spk_math_probe(const float*,float*,uint3);
extern "C" void desktop_math_probe(const float*,float*,uint3);
extern "C" int compare(const float *in,float *a,float *b,unsigned n) {
 for(unsigned i=0;i<n;i++){spk_math_probe(in,a,uint3{i,0,0});desktop_math_probe(in,b,uint3{i,0,0});}
 return std::memcmp(a,b,n*sizeof(float));
}
'''
    (OUT/'math-probe-wrapper.cpp').write_text(wrapper)
    lib2=OUT/'math-probe-comparison-wrapper.dylib'
    subprocess.run(['xcrun','clang++','-std=c++17','-O2','-ffp-contract=on','-dynamiclib',str(OUT/'math-probe-reference.cpp'),str(OUT/'math-probe-wrapper.cpp'),str(obj),'-o',str(lib2)],check=True)
    native2=ctypes.CDLL(str(lib2));native2.compare.argtypes=[ctypes.c_void_p]*3+[ctypes.c_uint]
    native2.compare.restype=ctypes.c_int
    rng=np.random.default_rng(20261029)
    random_in=rng.uniform(-30,30,20000).astype('<f4')
    a=np.zeros(10000,dtype='<f4');b=a.copy()
    assert native2.compare(random_in.ctypes.data,a.ctypes.data,b.ctypes.data,10000)==0
    probe_a=np.zeros(64,dtype='<f4');probe_b=probe_a.copy()
    assert native2.compare(inputs.ctypes.data,probe_a.ctypes.data,probe_b.ctypes.data,64)==0
    classifications=[]
    native2.desktop_classify.argtypes=[ctypes.c_void_p]*3
    for name,values in [('all_zero',np.zeros(64,dtype='<f4')),('actual_probe',probe_a),('one_wrong',probe_a.copy()),('one_nonzero_replaced_with_zero',probe_a.copy())]:
        if name=='one_wrong': values[0]=123.0
        if name=='one_nonzero_replaced_with_zero':
            assert probe_a[0]!=0
            values[0]=0
        machine.cursor=HEAP
        outp=machine.raw(values.tobytes())
        machine.uc.mem_write(STACK+0x88,inputs.tobytes())
        machine.reg('x0',outp)
        machine.run(0x100911da0,0x100912078)
        zeros=machine.reg('x22');mismatch=machine.reg('x21')
        ref_counts=np.zeros(2,dtype='<u4')
        native2.desktop_classify(inputs.ctypes.data,values.ctypes.data,ref_counts.ctypes.data)
        assert ref_counts.tolist()==[zeros,mismatch],(name,ref_counts,zeros,mismatch)
        classifications.append({'case':name,'zero_count':zeros,'mismatched_count':mismatch,
                                'desktop_counts_equal':True,'classifier_accepts':zeros!=64 and mismatch==0})
    expected_zeros=int(np.count_nonzero(probe_a==0))
    assert [(r['zero_count'],r['mismatched_count']) for r in classifications]==[(64,0),(expected_zeros,0),(expected_zeros-int(probe_a[0]==0),1),(expected_zeros+1,0)], classifications
    with contextlib.redirect_stdout(io.StringIO()) as out:
        mi.disasm(0x1009120b0,0x100912104)
        mi.disasm(0x100912158,0x10091216c)
    (OUT/'math-probe-literal-xrefs.asm').write_text(out.getvalue())
    report={'sample':'SpektraLab iOS 1.0.1 build 202610271810','binary_sha256':digest(ROOT/'decrypted-binaries/SpektraLab'),
      'reference_commit':COMMIT,'ios_host_function':['0x100911ba0','0x10091223c'],
      'host_input_generator':{'ios_block':['0x100911bdc','0x100911c70'],'pairs':64,'all_128_input_float_bytes_equal':True,
                   'desktop_source':'engine/src/gpu/metal_gpu.cpp:175-180'},
      'gpu_probe':{'ios_air':'air-ir/054.ll','desktop_source':'engine/src/shaders/util.metal:148-154',
                   'random_pairs':10000,'startup_pairs':64,'output_bytes_all_equal':True,
                   'scope':'Recovered AIR compiled for Mac CPU against desktop source with only Metal qualifiers/attributes removed; not an on-device GPU test.'},
      'ios_classifier':{'block':['0x100911da0','0x100912078'],'injected_test_results':classifications},
      'diagnostics':strings,'diagnostic_fragments':len(strings),'matched_utf8_bytes':sum(x['utf8_bytes'] for x in strings),
      'scope':'Engineering self-test, exact diagnostic text and actual code references; does not by itself establish historical copying or authorization status.'}
    (OUT/'engineering-probe-results.json').write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
    print(json.dumps({k:v for k,v in report.items() if k!='diagnostics'},ensure_ascii=False,indent=2))

if __name__=='__main__':main()
