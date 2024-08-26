#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AudioQueue_symbols(JSContext*);
@interface JSValue (AudioToolbox_AudioQueue)
+(JSValue*) valueWithAudioQueueParameterEvent: (AudioQueueParameterEvent) s inContext: (JSContext*) context;
-(AudioQueueParameterEvent) toAudioQueueParameterEvent;
+(JSValue*) valueWithAudioQueueLevelMeterState: (AudioQueueLevelMeterState) s inContext: (JSContext*) context;
-(AudioQueueLevelMeterState) toAudioQueueLevelMeterState;
@end
#pragma clang diagnostic pop