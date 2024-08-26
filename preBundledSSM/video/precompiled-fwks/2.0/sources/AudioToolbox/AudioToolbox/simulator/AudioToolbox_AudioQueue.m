#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
		(AudioQueueParameterID) [self[@"mID"] toUInt32],
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
static void registerCFunctions(JSContext* context)
{
	context[@"AudioQueueReset"] = ^OSStatus(id arg0) {
		return AudioQueueReset(arg0);
	};
	context[@"AudioQueueSetParameter"] = ^OSStatus(id arg0, AudioQueueParameterID arg1, AudioQueueParameterValue arg2) {
		return AudioQueueSetParameter(arg0, arg1, arg2);
	};
	context[@"AudioQueueDispose"] = ^OSStatus(id arg0, Boolean arg1) {
		return AudioQueueDispose(arg0, arg1);
	};
	context[@"AudioQueueProcessingTapDispose"] = ^OSStatus(id arg0) {
		return AudioQueueProcessingTapDispose(arg0);
	};
	context[@"AudioQueueDisposeTimeline"] = ^OSStatus(id arg0, id arg1) {
		return AudioQueueDisposeTimeline(arg0, arg1);
	};
	context[@"AudioQueueStop"] = ^OSStatus(id arg0, Boolean arg1) {
		return AudioQueueStop(arg0, arg1);
	};
	context[@"AudioQueuePause"] = ^OSStatus(id arg0) {
		return AudioQueuePause(arg0);
	};
	context[@"AudioQueueFlush"] = ^OSStatus(id arg0) {
		return AudioQueueFlush(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioQueueErr_InvalidBuffer"] = @-66687;
	context[@"kAudioQueueErr_BufferEmpty"] = @-66686;
	context[@"kAudioQueueErr_DisposalPending"] = @-66685;
	context[@"kAudioQueueErr_InvalidProperty"] = @-66684;
	context[@"kAudioQueueErr_InvalidPropertySize"] = @-66683;
	context[@"kAudioQueueErr_InvalidParameter"] = @-66682;
	context[@"kAudioQueueErr_CannotStart"] = @-66681;
	context[@"kAudioQueueErr_InvalidDevice"] = @-66680;
	context[@"kAudioQueueErr_BufferInQueue"] = @-66679;
	context[@"kAudioQueueErr_InvalidRunState"] = @-66678;
	context[@"kAudioQueueErr_InvalidQueueType"] = @-66677;
	context[@"kAudioQueueErr_Permissions"] = @-66676;
	context[@"kAudioQueueErr_InvalidPropertyValue"] = @-66675;
	context[@"kAudioQueueErr_PrimeTimedOut"] = @-66674;
	context[@"kAudioQueueErr_CodecNotFound"] = @-66673;
	context[@"kAudioQueueErr_InvalidCodecAccess"] = @-66672;
	context[@"kAudioQueueErr_QueueInvalidated"] = @-66671;
	context[@"kAudioQueueErr_TooManyTaps"] = @-66670;
	context[@"kAudioQueueErr_InvalidTapContext"] = @-66669;
	context[@"kAudioQueueErr_RecordUnderrun"] = @-66668;
	context[@"kAudioQueueErr_InvalidTapType"] = @-66667;
	context[@"kAudioQueueErr_BufferEnqueuedTwice"] = @-66666;
	context[@"kAudioQueueErr_CannotStartYet"] = @-66665;
	context[@"kAudioQueueErr_EnqueueDuringReset"] = @-66632;
	context[@"kAudioQueueErr_InvalidOfflineMode"] = @-66626;

	context[@"kAudioQueueProperty_IsRunning"] = @1634824814U;
	context[@"kAudioQueueDeviceProperty_SampleRate"] = @1634825074U;
	context[@"kAudioQueueDeviceProperty_NumberChannels"] = @1634821219U;
	context[@"kAudioQueueProperty_CurrentDevice"] = @1634820964U;
	context[@"kAudioQueueProperty_MagicCookie"] = @1634823523U;
	context[@"kAudioQueueProperty_MaximumOutputPacketSize"] = @2020569203U;
	context[@"kAudioQueueProperty_StreamDescription"] = @1634821748U;
	context[@"kAudioQueueProperty_ChannelLayout"] = @1634820972U;
	context[@"kAudioQueueProperty_EnableLevelMetering"] = @1634823525U;
	context[@"kAudioQueueProperty_CurrentLevelMeter"] = @1634823542U;
	context[@"kAudioQueueProperty_CurrentLevelMeterDB"] = @1634823524U;
	context[@"kAudioQueueProperty_DecodeBufferSizeFrames"] = @1684234854U;
	context[@"kAudioQueueProperty_ConverterError"] = @1902343781U;
	context[@"kAudioQueueProperty_EnableTimePitch"] = @1902081136U;
	context[@"kAudioQueueProperty_TimePitchAlgorithm"] = @1903456353U;
	context[@"kAudioQueueProperty_TimePitchBypass"] = @1903456354U;

	context[@"kAudioQueueTimePitchAlgorithm_Spectral"] = @1936745827U;
	context[@"kAudioQueueTimePitchAlgorithm_TimeDomain"] = @1953064047U;
	context[@"kAudioQueueTimePitchAlgorithm_Varispeed"] = @1987276900U;

	context[@"kAudioQueueTimePitchAlgorithm_LowQualityZeroLatency"] = @1819376236U;

	context[@"kAudioQueueProperty_HardwareCodecPolicy"] = @1634820976U;

	context[@"kAudioQueueHardwareCodecPolicy_Default"] = @0U;
	context[@"kAudioQueueHardwareCodecPolicy_UseSoftwareOnly"] = @1U;
	context[@"kAudioQueueHardwareCodecPolicy_UseHardwareOnly"] = @2U;
	context[@"kAudioQueueHardwareCodecPolicy_PreferSoftware"] = @3U;
	context[@"kAudioQueueHardwareCodecPolicy_PreferHardware"] = @4U;

	context[@"kAudioQueueProperty_ChannelAssignments"] = @1634820961U;

	context[@"kAudioQueueParam_Volume"] = @1U;
	context[@"kAudioQueueParam_PlayRate"] = @2U;
	context[@"kAudioQueueParam_Pitch"] = @3U;
	context[@"kAudioQueueParam_VolumeRampTime"] = @4U;
	context[@"kAudioQueueParam_Pan"] = @13U;

	context[@"kAudioQueueProcessingTap_PreEffects"] = @1U;
	context[@"kAudioQueueProcessingTap_PostEffects"] = @2U;
	context[@"kAudioQueueProcessingTap_Siphon"] = @4U;
	context[@"kAudioQueueProcessingTap_StartOfStream"] = @256U;
	context[@"kAudioQueueProcessingTap_EndOfStream"] = @512U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioQueue_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
