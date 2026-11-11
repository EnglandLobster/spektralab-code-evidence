#import <CoreImage/CoreImage.h>
#import <Metal/Metal.h>
int main(int argc,char**argv){@autoreleasepool{
CGColorSpaceRef p3=CGColorSpaceCreateWithName(kCGColorSpaceExtendedLinearDisplayP3);
CGFloat w[]={.9642,1,.8249},b[]={0,0,0},g[]={1,1,1},m[]={.7976749,.2880402,0,.1351917,.7118741,0,.0313534,.0000857,.8252100};
CGColorSpaceRef pp=CGColorSpaceCreateCalibratedRGB(w,b,g,m);
CIContext *c=[CIContext contextWithMTLDevice:MTLCreateSystemDefaultDevice() options:@{kCIContextWorkingColorSpace:(__bridge id)p3,kCIContextWorkingFormat:@(kCIFormatRGBAh),kCIContextCacheIntermediates:@NO,kCIContextHighQualityDownsample:@YES}];
CIImage *im=[CIImage imageWithContentsOfURL:[NSURL fileURLWithPath:@(argv[1])] options:@{kCIImageApplyOrientationProperty:@YES}];
CGRect r=im.extent; if(r.size.width!=960 || r.size.height!=720)return 2;
NSMutableData *d=[NSMutableData dataWithLength:960*720*16];
[c render:im toBitmap:d.mutableBytes rowBytes:960*16 bounds:r format:kCIFormatRGBAf colorSpace:pp];
return [d writeToFile:@(argv[2]) atomically:YES]?0:3;
}}
