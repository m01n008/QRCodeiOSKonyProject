#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMedia_CMSampleBuffer_symbols(JSContext*);
@interface JSValue (CoreMedia_CMSampleBuffer)
+(JSValue*) valueWithCMSampleTimingInfo: (CMSampleTimingInfo) s inContext: (JSContext*) context;
-(CMSampleTimingInfo) toCMSampleTimingInfo;
@end
#pragma clang diagnostic pop