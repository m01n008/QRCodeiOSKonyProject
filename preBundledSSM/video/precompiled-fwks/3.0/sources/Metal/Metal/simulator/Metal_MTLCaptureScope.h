#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCaptureScope_symbols(JSContext*);
@protocol MTLCaptureScopeInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) id device;
@property (readonly,nonatomic) id commandQueue;
@property (copy,atomic) NSString * label;
-(void) endScope;
-(void) beginScope;
@end
@protocol MTLCaptureScopeClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop