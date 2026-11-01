#include <cstring>
using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
extern "C" void spk_math_probe(const float*,float*,uint3);
extern "C" void desktop_math_probe(const float*,float*,uint3);
extern "C" int compare(const float *in,float *a,float *b,unsigned n) {
 for(unsigned i=0;i<n;i++){spk_math_probe(in,a,uint3{i,0,0});desktop_math_probe(in,b,uint3{i,0,0});}
 return std::memcmp(a,b,n*sizeof(float));
}
