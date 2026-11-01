#include <cstddef>
using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
#include <cmath>
extern "C" void desktop_probe_inputs(float *in) { constexpr size_t n=64;
for (size_t i = 0; i < n; ++i) {
            in[2 * i] = 0.1f + 0.37f * float(i);
            in[2 * i + 1] = in[2 * i] * 0.5f + 1.0f;
        }
}
extern "C" void desktop_math_probe(const float* in ,
                           float* out ,
                           uint3 thread_position_in_grid ) {
    uint i = thread_position_in_grid.x;
    float a = in[2u * i], b = in[2u * i + 1u];
    out[i] = a * b - a * b;
}


extern "C" void desktop_classify(const float *in,const float *got,unsigned *counts) {constexpr size_t n=64;
size_t zeros = 0, mismatched = 0;
        for (size_t i = 0; i < n; ++i) {
            const float a = in[2 * i], b = in[2 * i + 1];
            const float want = std::fma(a, b, -(a * b));
            if (got[i] == 0.0f) ++zeros;
            else if (got[i] != want) ++mismatched;
        }
counts[0]=zeros;counts[1]=mismatched;
}
