#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AudioUnitProperties_symbols(JSContext*);
@interface JSValue (AudioToolbox_AudioUnitProperties)
+(JSValue*) valueWithAUDependentParameter: (AUDependentParameter) s inContext: (JSContext*) context;
-(AUDependentParameter) toAUDependentParameter;
+(JSValue*) valueWithAudioUnitMeterClipping: (AudioUnitMeterClipping) s inContext: (JSContext*) context;
-(AudioUnitMeterClipping) toAudioUnitMeterClipping;
+(JSValue*) valueWithMixerDistanceParams: (MixerDistanceParams) s inContext: (JSContext*) context;
-(MixerDistanceParams) toMixerDistanceParams;
+(JSValue*) valueWithAudioOutputUnitStartAtTimeParams: (AudioOutputUnitStartAtTimeParams) s inContext: (JSContext*) context;
-(AudioOutputUnitStartAtTimeParams) toAudioOutputUnitStartAtTimeParams;
+(JSValue*) valueWithAUChannelInfo: (AUChannelInfo) s inContext: (JSContext*) context;
-(AUChannelInfo) toAUChannelInfo;
+(JSValue*) valueWithAudioUnitFrequencyResponseBin: (AudioUnitFrequencyResponseBin) s inContext: (JSContext*) context;
-(AudioUnitFrequencyResponseBin) toAudioUnitFrequencyResponseBin;
+(JSValue*) valueWithAudioUnitParameterHistoryInfo: (AudioUnitParameterHistoryInfo) s inContext: (JSContext*) context;
-(AudioUnitParameterHistoryInfo) toAudioUnitParameterHistoryInfo;
@end
#pragma clang diagnostic pop