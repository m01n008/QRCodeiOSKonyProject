#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLDepthStencil_symbols(JSContext*);
@protocol MTLDepthStencilDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLCompareFunction depthCompareFunction;
@property (copy,nonatomic) NSString * label;
@property (copy,nonatomic) MTLStencilDescriptor * frontFaceStencil;
@property (getter=isDepthWriteEnabled,nonatomic) BOOL depthWriteEnabled;
@property (copy,nonatomic) MTLStencilDescriptor * backFaceStencil;
@end
@protocol MTLDepthStencilDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLStencilDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) uint32_t writeMask;
@property (nonatomic) MTLStencilOperation depthFailureOperation;
@property (nonatomic) MTLCompareFunction stencilCompareFunction;
@property (nonatomic) MTLStencilOperation depthStencilPassOperation;
@property (nonatomic) uint32_t readMask;
@property (nonatomic) MTLStencilOperation stencilFailureOperation;
@end
@protocol MTLStencilDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLDepthStencilStateInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSString * label;
@end
@protocol MTLDepthStencilStateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop