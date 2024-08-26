#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMedia_CMTime_symbols(JSContext*);
@interface JSValue (CoreMedia_CMTime)
+(JSValue*) valueWithCMTime: (CMTime) s inContext: (JSContext*) context;
-(CMTime) toCMTime;
@end
#pragma clang diagnostic pop