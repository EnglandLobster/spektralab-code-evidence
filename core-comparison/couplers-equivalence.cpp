#include <cmath>
#include <cstdio>
#include <cstdint>
#include <random>
using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
extern "C" void spk_couplers_correction(const float*,const float*,const float*,const unsigned*,const float*,const unsigned*,float*,uint3);
extern "C" void desktop_couplers_correction(const float* cmy ,
                                    const float* m ,
                                    const float* dmax ,
                                    const uint* pos ,
                                    const float* shift ,
                                    const uint* n ,
                                    float* out ,
                                    uint3 thread_position_in_grid ) {
    uint i = thread_position_in_grid.x;
    if (i >= n[0]) return;
    float c0 = cmy[3u * i], c1 = cmy[3u * i + 1u], c2 = cmy[3u * i + 2u];
    if (pos[0] != 0u) { c0 = dmax[0] - c0; c1 = dmax[1] - c1; c2 = dmax[2] - c2; }
    float sh = shift[0];
    c0 += sh * c0 * c0; c1 += sh * c1 * c1; c2 += sh * c2 * c2;
    out[3u * i]      = c0 * m[0] + c1 * m[3] + c2 * m[6];
    out[3u * i + 1u] = c0 * m[1] + c1 * m[4] + c2 * m[7];
    out[3u * i + 2u] = c0 * m[2] + c1 * m[5] + c2 * m[8];
}

int main(){
 std::mt19937 gen(321);std::uniform_real_distribution<float> r(-2.0f,3.0f);
 float maxerr=0;unsigned checked=0;
 for(unsigned t=0;t<10000;t++){
  unsigned n=3,pos=t%2;float c[9],m[9],dmax[3],shift=r(gen),a[9],b[9];
  for(auto &x:c)x=r(gen);for(auto &x:m)x=r(gen);for(auto &x:dmax)x=r(gen);
  for(int i=0;i<9;i++)a[i]=b[i]=1234.0f;
  for(unsigned i=0;i<=n;i++){
   spk_couplers_correction(c,m,dmax,&pos,&shift,&n,a,uint3{i,0,0});
   desktop_couplers_correction(c,m,dmax,&pos,&shift,&n,b,uint3{i,0,0});
  }
  for(int i=0;i<9;i++){float e=std::fabs(a[i]-b[i]);maxerr=std::fmax(maxerr,e);if(e>2e-6f*std::fmax(1.0f,std::fabs(b[i])))return 1;checked++;}
 }
 printf("{\"cases\":10000,\"channel_outputs\":%u,\"maximum_absolute_difference\":%.9g,\"passed\":true}\n",checked,maxerr);
}
