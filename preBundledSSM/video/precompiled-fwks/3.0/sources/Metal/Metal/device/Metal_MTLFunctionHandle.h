#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLFunctionHandle_symbols(JSContext*);
@protocol MTLFunctionHandleInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) MTLFunctionType functionType;
@property (readonly) NSString * name;
@end
@protocol MTLFunctionHandleClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop