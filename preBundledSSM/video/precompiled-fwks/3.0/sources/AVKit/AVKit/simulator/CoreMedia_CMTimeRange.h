#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMedia_CMTimeRange_symbols(JSContext*);
@interface JSValue (CoreMedia_CMTimeRange)
+(JSValue*) valueWithCMTimeRange: (CMTimeRange) s inContext: (JSContext*) context;
-(CMTimeRange) toCMTimeRange;
+(JSValue*) valueWithCMTimeMapping: (CMTimeMapping) s inContext: (JSContext*) context;
-(CMTimeMapping) toCMTimeMapping;
@end
#pragma clang diagnostic pop