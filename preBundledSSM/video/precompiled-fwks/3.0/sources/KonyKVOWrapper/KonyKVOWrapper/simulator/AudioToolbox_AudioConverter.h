#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AudioConverter_symbols(JSContext*);
@interface JSValue (AudioToolbox_AudioConverter)
+(JSValue*) valueWithAudioConverterPrimeInfo: (AudioConverterPrimeInfo) s inContext: (JSContext*) context;
-(AudioConverterPrimeInfo) toAudioConverterPrimeInfo;
@end
#pragma clang diagnostic pop