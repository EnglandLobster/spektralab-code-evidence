"""Run acquired iOS CPU code; replace only imported libc/libm routines.

All algorithm code, vector management, nanmax and interpolation run from the
decrypted Mach-O. No corresponding desktop algorithm is substituted.
"""
from pathlib import Path
import ast, collections, hashlib, json, math, random, struct
from types import SimpleNamespace
import numpy as np
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn import arm64_const as A
import macho_inspect as m

ROOT = Path(__file__).resolve().parent.parent
STOP = 0x400000000
STACK = 0x200080000
HEAP = 0x300000000

class Machine:
    def __init__(self):
        self.uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
        self.uc.mem_map(m.BASE, (len(m.DATA)+4095)&~4095)
        self.uc.mem_write(m.BASE, m.DATA)
        self.uc.mem_map(0x200000000, 0x100000)
        self.uc.mem_map(HEAP, 0x4000000)
        self.uc.mem_map(STOP, 4096)
        self.cursor = HEAP
        self.calls = collections.Counter()
        self.math_hooks = {0x100979994: math.exp, 0x1009799a0: math.exp2,
                           0x1009799ac: math.expm1, 0x100979a6c: math.log,
                           0x100979a84: math.log1p, 0x100979970: math.erf,
                           0x10097997c: math.erfc}
        self.uc.hook_add(UC_HOOK_CODE, self.hook, begin=0x100979000, end=0x10097ffff)

    def reg(self, n, v=None):
        reg = getattr(A, 'UC_ARM64_REG_'+n.upper())
        if v is None: return self.uc.reg_read(reg)
        self.uc.reg_write(reg, v)

    def d(self, n, v=None):
        if v is None: return struct.unpack('<d', struct.pack('<Q', self.reg('d'+str(n))))[0]
        self.reg('d'+str(n), struct.unpack('<Q', struct.pack('<d', float(v)))[0])

    def alloc(self, n):
        p = self.cursor
        self.cursor += (n+31)&~31
        if self.cursor >= HEAP+0x4000000: raise RuntimeError('heap exhausted')
        return p

    def raw(self, data):
        p = self.alloc(len(data))
        self.uc.mem_write(p, data)
        return p

    def vec(self, data):
        data = np.asarray(data, dtype='<f8').tobytes()
        p = self.raw(data)
        return self.raw(struct.pack('<3Q', p, p+len(data), p+len(data)))

    def read_vec(self, p):
        a, b = struct.unpack('<2Q', self.uc.mem_read(p, 16))
        return np.frombuffer(self.uc.mem_read(a, b-a), dtype='<f8').copy()

    def hook(self, uc, addr, size, user):
        self.calls[hex(addr)] += 1
        x = lambda n: self.reg('x'+str(n))
        if addr in self.math_hooks:
            self.d(0, self.math_hooks[addr](self.d(0)))
        elif addr in (0x10097970c, 0x100979aa8):
            self.reg('x0', self.alloc(x(0)))
        elif addr == 0x100979700:
            pass # operator delete, bump allocation makes free a no-op
        elif addr == 0x10097982c:
            uc.mem_write(x(0), bytes(x(1)))
        elif addr in (0x100979ad8, 0x100979ae4):
            uc.mem_write(x(0), bytes(uc.mem_read(x(1), x(2))))
        elif addr == 0x100979af0:
            uc.mem_write(x(0), bytes([x(1)&255])*x(2))
        else:
            raise RuntimeError('unhandled import '+hex(addr))
        self.reg('pc', self.reg('lr'))

    def run(self, start, end=STOP):
        self.reg('sp', STACK)
        self.reg('lr', STOP)
        self.uc.emu_start(start, end, count=3000000)
        if self.reg('pc') != end: raise RuntimeError('instruction limit')

def upstream_functions(path, names, extra=None):
    source = (ROOT/'reference-sources/upstream'/path).read_text()
    tree = ast.parse(source)
    nodes = [n for n in tree.body if isinstance(n, ast.FunctionDef) and n.name in names]
    assert len(nodes) == len(names)
    env = {'np': np, 'contract': np.einsum}
    env.update(extra or {})
    exec(compile(ast.Module(body=nodes, type_ignores=[]), str(path), 'exec'), env)
    return env

def logistic_test():
    env = upstream_functions('src/spektrafilm/utils/spectral_upsampling.py',
                             ['locked_logistic_rising'], {'_SQRT2PI': float(np.sqrt(2*np.pi))})
    fn = env['locked_logistic_rising']
    machine = Machine()
    branches = collections.Counter()
    def observe(uc, addr, size, user):
        if addr in (0x1008f57f4, 0x1008f580c, 0x1008f5824, 0x1008f5838):
            branches[hex(addr)] += 1
    machine.uc.hook_add(UC_HOOK_CODE, observe, begin=0x1008f57f4, end=0x1008f5840)
    rng = random.Random(20261029)
    cases = [(0, 0, 1, n) for n in [-1, 0, 1e-8, 1e-5, 1, 50/math.log(2), 100, 1000]]
    cases += [(x, 0, 1, n) for n in [1e-8, .1, 1, 100] for x in [-10000,-1,0,1,10000]]
    cases += [(rng.uniform(300,850), rng.uniform(350,800), 10**rng.uniform(-1,2),
               10**rng.uniform(-7,2.5)) for _ in range(2000)]
    errors = []
    for vals in cases:
        for i, value in enumerate(vals): machine.d(i, value)
        machine.run(0x1008f5754)
        actual = machine.d(0)
        with np.errstate(all='ignore'): expected = float(fn(*vals))
        errors.append(abs(actual-expected))
        assert abs(actual-expected) < 2e-10, (vals, actual, expected)
    constants = {hex(a): struct.unpack_from('<d', m.DATA, m.offset(a))[0]
                 for a in [0x1009b3350, 0x1009c1998, 0x1009c19a0]}
    assert len(branches) == 4 and all(branches.values())
    return {'cases': len(cases), 'max_abs_error': max(errors), 'ios_function': '0x1008f5754-0x1008f5864',
            'reference': 'Executed unmodified upstream locked_logistic_rising AST with NumPy',
            'constants': constants, 'import_calls': dict(machine.calls), 'observed_branch_hits':dict(branches),
            'covered': ['nu floor', 'exponent clip -500/+500', 'nu*log(2) <=50 and >50', 't<=0 and t>0']}

def polynomial_test():
    env = upstream_functions('src/spektrafilm/utils/spectral_upsampling.py', ['poly2d_deg4','hanika_sigmoid'])
    machine = Machine()
    rng = np.random.default_rng(20261029)
    errors = []
    # Execute the first-channel inlined polynomial + 2-stop sigmoid + exp2 block.
    # x, x^2, x^3, x^4 and y are loop-invariant/live-in values, initialized explicitly.
    for _ in range(1500):
        x, y = rng.uniform(-1,1,2)
        params = rng.uniform(-5,5,15)
        params[0] = rng.uniform(-1e6,1e6) # unused constant must remain ignored
        machine.cursor = HEAP
        p = machine.raw(params.astype('<f8').tobytes())
        machine.reg('sp', STACK)
        machine.reg('x26', p)
        for n, value in [(4,x),(1,x*x),(6,x*x*x),(7,x**4),(11,y),(5,1)]: machine.d(n,value)
        machine.uc.mem_write(STACK+0x520, struct.pack('<2d', x*x, 0))
        machine.run(0x1008f4be8, 0x1008f4c8c)
        actual = machine.d(0)
        expected = float(np.exp2(env['hanika_sigmoid'](env['poly2d_deg4'](np.array([x,y]), params), 2)))
        errors.append(abs(actual-expected))
        assert abs(actual-expected) < 2e-13, (x,y,actual,expected)
    return {'cases':len(errors),'max_abs_error':max(errors),'ios_block':'0x1008f4be8-0x1008f4c8c (exclusive)',
            'reference':'Executed upstream poly2d_deg4 and hanika_sigmoid AST; NumPy exp2',
            'matched':'14 nonconstant coefficients in same order; p0 ignored; correction bounded to +/-2 stops'}

def density_test():
    env = upstream_functions('src/spektrafilm/model/couplers.py', ['compute_density_curves_before_dir_couplers'])
    fn = env['compute_density_curves_before_dir_couplers']
    machine = Machine()
    rng = np.random.default_rng(20261029)
    errors = []; channels = 0
    for positive in (False, True):
        for n in [3,7,16,17,32,65,128]:
            for _ in range(12):
                exposure = np.linspace(-3,3,n)
                centers = rng.uniform(-1,1,3)
                curves = 3/(1+np.exp(-(exposure[:,None]-centers)*rng.uniform(.5,2,3)))
                if positive: curves = 3-curves
                matrix = rng.uniform(0,.025,(3,3))
                machine.cursor = HEAP
                args = [machine.vec(curves),machine.vec(exposure),
                        machine.raw(matrix.astype('<f8').tobytes()),int(positive),machine.vec([])]
                for i,value in enumerate(args): machine.reg('x'+str(i),value)
                machine.run(0x1008ed6f8)
                actual = machine.read_vec(args[4]).reshape(n,3)
                expected = fn(curves,exposure,matrix,positive=positive)
                errors.append(float(np.max(np.abs(actual-expected)))); channels+=n*3
                assert errors[-1] < 1e-12, (positive,n,errors[-1])
    return {'cases':len(errors),'channel_outputs':channels,'max_abs_error':max(errors),
            'ios_function':'0x1008ed6f8-0x1008edf64',
            'reference':'Executed unmodified upstream compute_density_curves_before_dir_couplers AST; contract mapped to numpy.einsum',
            'import_calls':dict(machine.calls), 'scope':'Complete CPU function, including its actual nanmax and interpolation helpers; monotonic finite test curves'}

def morph_alias_test():
    env = upstream_functions('src/spektrafilm/utils/morph_curves.py',
        ['_morph_channel_params','_speed_layer_indices','_channel_gamma_factor','_developer_exhaustion_center_offset'],
        {'SIGMA_FLOOR': .05})
    machine = Machine()
    rng = np.random.default_rng(20261029)
    errors = []; example = None
    for n in (1,2,3,4,5):
        for test in range(40):
            centers = rng.permutation(np.linspace(-2,2,n))
            sigmas = rng.uniform(.06,.8,n)
            vals = [1.0, rng.uniform(.5,3), rng.uniform(.5,3), rng.uniform(.5,3),
                    rng.uniform(.5,3), rng.uniform(.5,3), rng.uniform(.5,3), 0]
            if n == 2 and test == 0:
                centers = np.array([-1.,1.]); sigmas = np.array([.4,.4])
                vals = [1.,2.,1.,1.,1.,1.,1.,0.]
            model = SimpleNamespace(centers=centers[None,:], amplitudes=np.ones((1,n)), sigmas=sigmas[None,:])
            params = SimpleNamespace(**dict(zip(['active','gamma_factor','gamma_factor_fast',
                'gamma_factor_slow','gamma_factor_red','gamma_factor_green','gamma_factor_blue','developer_exhaustion'],vals)))
            expected_c, _, expected_s, _ = env['_morph_channel_params'](model, params, 0, 'negative')
            machine.cursor = HEAP
            # DensityCurvesModel: 24-byte std::string, channel/layer counts, 3 vectors.
            model_bytes = bytearray(0x70)
            struct.pack_into('<2Q',model_bytes,0x18,1,n)
            for off,data in [(0x28,centers),(0x40,np.ones(n)),(0x58,sigmas)]:
                v = machine.vec(data)
                model_bytes[off:off+24] = machine.uc.mem_read(v,24)
            model_ptr = machine.raw(bytes(model_bytes))
            morph_bytes = bytearray(64); morph_bytes[0] = 1
            struct.pack_into('<7d',morph_bytes,8,*vals[1:])
            args = [machine.vec([-2,0,2]), model_ptr, machine.raw(bytes(morph_bytes)),
                    0, machine.vec([]), machine.raw(bytes(24))]
            for i,value in enumerate(args): machine.reg('x'+str(i),value)
            # Stop after all three scale operations, before developer-exhaustion calculation.
            machine.run(0x1008edf64,0x1008ee4b4)
            actual_c = np.frombuffer(machine.uc.mem_read(machine.reg('x19'),n*8),dtype='<f8').copy()
            actual_s = np.frombuffer(machine.uc.mem_read(machine.reg('x24'),n*8),dtype='<f8').copy()
            err = max(float(np.max(np.abs(actual_c-expected_c))),float(np.max(np.abs(actual_s-expected_s))))
            errors.append(err)
            assert err < 1e-14,(n,actual_c,expected_c,actual_s,expected_s)
            if n == 2 and test == 0:
                example = {'input_centers':centers.tolist(),'input_sigmas':sigmas.tolist(),
                           'global_gamma':2, 'upstream_centers':expected_c.tolist(), 'ios_centers':actual_c.tolist(),
                           'upstream_sigmas':expected_s.tolist(),'ios_sigmas':actual_s.tolist(),
                           'observation':'Second layer is both mid and slow, so it is divided by gamma twice; first layer once.'}
    return {'cases':len(errors),'max_abs_error':max(errors),'ios_block':'0x1008ee408-0x1008ee4b4 (exclusive)',
            'execution':'Starts at full print_curves_morph entry; reads real mutated arrays immediately after scaling',
            'reference':'Unmodified upstream _morph_channel_params AST, exhaustion=0 early-return path',
            'layers':[1,2,3,4,5], 'two_layer_alias_example':example,
            'scope':'Synthetic edge cases for implementation fingerprinting; no claim that shipped profiles use 1 or 2 layers'}

if __name__ == '__main__':
    report = {'binary_sha256': hashlib.sha256(m.DATA).hexdigest(),
              'method':'Unicorn ARM64 executes acquired App Store code; only imported libm/libc and operator new/delete are hooked',
              'logistic':logistic_test(), 'polynomial':polynomial_test(), 'pre_dir_density':density_test(),
              'morph_layer_alias':morph_alias_test()}
    (ROOT/'core-comparison/arm64-core-probe-results.json').write_text(json.dumps(report,indent=2)+'\n')
    print(json.dumps(report,indent=2))
