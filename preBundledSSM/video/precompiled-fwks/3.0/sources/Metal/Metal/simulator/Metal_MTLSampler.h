#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLSampler_symbols(JSContext*);
@protocol MTLSamplerDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLSamplerBorderColor borderColor;
@property (nonatomic) MTLSamplerMipFilter mipFilter;
@property (nonatomic) MTLSamplerMinMagFilter minFilter;
@property (nonatomic) BOOL normalizedCoordinates;
@property (nonatomic) BOOL lodAverage;
@property (nonatomic) MTLSamplerMinMagFilter magFilter;
@property (nonatomic) MTLSamplerAddressMode rAddressMode;
@property (nonatomic) MTLSamplerAddressMode sAddressMode;
@property (nonatomic) float lodMinClamp;
@property (copy,nonatomic) NSString * label;
@property (nonatomic) float lodMaxClamp;
@property (nonatomic) NSUInteger maxAnisotropy;
@property (nonatomic) BOOL supportArgumentBuffers;
@property (nonatomic) MTLSamplerAddressMode tAddressMode;
@property (nonatomic) MTLCompareFunction compareFunction;
@end
@protocol MTLSamplerDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLSamplerStateInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSString * label;
@end
@protocol MTLSamplerStateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop