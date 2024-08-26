#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreAudioTypes_CoreAudioBaseTypes_symbols(JSContext*);
@interface JSValue (CoreAudioTypes_CoreAudioBaseTypes)
+(JSValue*) valueWithAudioValueRange: (AudioValueRange) s inContext: (JSContext*) context;
-(AudioValueRange) toAudioValueRange;
+(JSValue*) valueWithAudioStreamBasicDescription: (AudioStreamBasicDescription) s inContext: (JSContext*) context;
-(AudioStreamBasicDescription) toAudioStreamBasicDescription;
+(JSValue*) valueWithAudioStreamPacketDescription: (AudioStreamPacketDescription) s inContext: (JSContext*) context;
-(AudioStreamPacketDescription) toAudioStreamPacketDescription;
+(JSValue*) valueWithAudioClassDescription: (AudioClassDescription) s inContext: (JSContext*) context;
-(AudioClassDescription) toAudioClassDescription;
+(JSValue*) valueWithSMPTETime: (SMPTETime) s inContext: (JSContext*) context;
-(SMPTETime) toSMPTETime;
+(JSValue*) valueWithAudioFormatListItem: (AudioFormatListItem) s inContext: (JSContext*) context;
-(AudioFormatListItem) toAudioFormatListItem;
+(JSValue*) valueWithAudioTimeStamp: (AudioTimeStamp) s inContext: (JSContext*) context;
-(AudioTimeStamp) toAudioTimeStamp;
@end
#pragma clang diagnostic pop