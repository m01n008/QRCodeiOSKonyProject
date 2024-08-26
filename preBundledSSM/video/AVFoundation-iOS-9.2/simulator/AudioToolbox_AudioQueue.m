#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioQueue)
+(JSValue*) valueWithAudioQueueParameterEvent: (AudioQueueParameterEvent) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mID": @(s.mID),
		@"mValue": @(s.mValue),
	} inContext: context];
}
-(AudioQueueParameterEvent) toAudioQueueParameterEvent {
	return (AudioQueueParameterEvent) {
		(AudioQueueParameterID) [self[@"mID"] toDouble],
		(AudioQueueParameterValue) [self[@"mValue"] toDouble],
	};
}
+(JSValue*) valueWithAudioQueueLevelMeterState: (AudioQueueLevelMeterState) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mAveragePower": @(s.mAveragePower),
		@"mPeakPower": @(s.mPeakPower),
	} inContext: context];
}
-(AudioQueueLevelMeterState) toAudioQueueLevelMeterState {
	return (AudioQueueLevelMeterState) {
		(Float32) [self[@"mAveragePower"] toDouble],
		(Float32) [self[@"mPeakPower"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioQueueErr_InvalidBuffer"] = @-66687L;
	context[@"kAudioQueueErr_BufferEmpty"] = @-66686L;
	context[@"kAudioQueueErr_DisposalPending"] = @-66685L;
	context[@"kAudioQueueErr_InvalidProperty"] = @-66684L;
	context[@"kAudioQueueErr_InvalidPropertySize"] = @-66683L;
	context[@"kAudioQueueErr_InvalidParameter"] = @-66682L;
	context[@"kAudioQueueErr_CannotStart"] = @-66681L;
	context[@"kAudioQueueErr_InvalidDevice"] = @-66680L;
	context[@"kAudioQueueErr_BufferInQueue"] = @-66679L;
	context[@"kAudioQueueErr_InvalidRunState"] = @-66678L;
	context[@"kAudioQueueErr_InvalidQueueType"] = @-66677L;
	context[@"kAudioQueueErr_Permissions"] = @-66676L;
	context[@"kAudioQueueErr_InvalidPropertyValue"] = @-66675L;
	context[@"kAudioQueueErr_PrimeTimedOut"] = @-66674L;
	context[@"kAudioQueueErr_CodecNotFound"] = @-66673L;
	context[@"kAudioQueueErr_InvalidCodecAccess"] = @-66672L;
	context[@"kAudioQueueErr_QueueInvalidated"] = @-66671L;
	context[@"kAudioQueueErr_TooManyTaps"] = @-66670L;
	context[@"kAudioQueueErr_InvalidTapContext"] = @-66669L;
	context[@"kAudioQueueErr_RecordUnderrun"] = @-66668L;
	context[@"kAudioQueueErr_InvalidTapType"] = @-66667L;
	context[@"kAudioQueueErr_BufferEnqueuedTwice"] = @-66666L;
	context[@"kAudioQueueErr_EnqueueDuringReset"] = @-66632L;
	context[@"kAudioQueueErr_InvalidOfflineMode"] = @-66626L;

	context[@"kAudioQueueProperty_IsRunning"] = @1634824814UL;
	context[@"kAudioQueueDeviceProperty_SampleRate"] = @1634825074UL;
	context[@"kAudioQueueDeviceProperty_NumberChannels"] = @1634821219UL;
	context[@"kAudioQueueProperty_CurrentDevice"] = @1634820964UL;
	context[@"kAudioQueueProperty_MagicCookie"] = @1634823523UL;
	context[@"kAudioQueueProperty_MaximumOutputPacketSize"] = @2020569203UL;
	context[@"kAudioQueueProperty_StreamDescription"] = @1634821748UL;
	context[@"kAudioQueueProperty_ChannelLayout"] = @1634820972UL;
	context[@"kAudioQueueProperty_EnableLevelMetering"] = @1634823525UL;
	context[@"kAudioQueueProperty_CurrentLevelMeter"] = @1634823542UL;
	context[@"kAudioQueueProperty_CurrentLevelMeterDB"] = @1634823524UL;
	context[@"kAudioQueueProperty_DecodeBufferSizeFrames"] = @1684234854UL;
	context[@"kAudioQueueProperty_ConverterError"] = @1902343781UL;
	context[@"kAudioQueueProperty_EnableTimePitch"] = @1902081136UL;
	context[@"kAudioQueueProperty_TimePitchAlgorithm"] = @1903456353UL;
	context[@"kAudioQueueProperty_TimePitchBypass"] = @1903456354UL;

	context[@"kAudioQueueTimePitchAlgorithm_Spectral"] = @1936745827UL;
	context[@"kAudioQueueTimePitchAlgorithm_TimeDomain"] = @1953064047UL;
	context[@"kAudioQueueTimePitchAlgorithm_Varispeed"] = @1987276900UL;

	context[@"kAudioQueueTimePitchAlgorithm_LowQualityZeroLatency"] = @1819376236UL;

	context[@"kAudioQueueProperty_HardwareCodecPolicy"] = @1634820976UL;

	context[@"kAudioQueueHardwareCodecPolicy_Default"] = @0UL;
	context[@"kAudioQueueHardwareCodecPolicy_UseSoftwareOnly"] = @1UL;
	context[@"kAudioQueueHardwareCodecPolicy_UseHardwareOnly"] = @2UL;
	context[@"kAudioQueueHardwareCodecPolicy_PreferSoftware"] = @3UL;
	context[@"kAudioQueueHardwareCodecPolicy_PreferHardware"] = @4UL;

	context[@"kAudioQueueProperty_ChannelAssignments"] = @1634820961UL;

	context[@"kAudioQueueParam_Volume"] = @1UL;
	context[@"kAudioQueueParam_PlayRate"] = @2UL;
	context[@"kAudioQueueParam_Pitch"] = @3UL;
	context[@"kAudioQueueParam_VolumeRampTime"] = @4UL;
	context[@"kAudioQueueParam_Pan"] = @13UL;

	context[@"kAudioQueueProcessingTap_PreEffects"] = @1UL;
	context[@"kAudioQueueProcessingTap_PostEffects"] = @2UL;
	context[@"kAudioQueueProcessingTap_Siphon"] = @4UL;
	context[@"kAudioQueueProcessingTap_StartOfStream"] = @256UL;
	context[@"kAudioQueueProcessingTap_EndOfStream"] = @512UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioQueue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
