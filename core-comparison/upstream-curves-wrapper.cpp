using uint=unsigned;
using uint3=uint __attribute__((ext_vector_type(3)));
extern "C" void spk_curves(const float*,const float*,const float*,const float*,const uint*,float*,uint3);
extern "C" void run_curves(const float*x,const float*xa,const float*inv,const float*y,const uint*meta,float*out){
for(uint i=0;i<meta[1];i++)spk_curves(x,xa,inv,y,meta,out,uint3{i,0,0});}
