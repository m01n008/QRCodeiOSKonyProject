#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLFence_symbols(JSContext*);
@protocol MTLFenceInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (copy,atomic) NSString * label;
@end
@protocol MTLFenceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop