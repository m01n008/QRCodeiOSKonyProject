#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioSessionActivationOptionNone"] = @0UL;

	context[@"AVAudioSessionPortOverrideNone"] = @0UL;
	context[@"AVAudioSessionPortOverrideSpeaker"] = @1936747378UL;

	context[@"AVAudioSessionRouteChangeReasonUnknown"] = @0UL;
	context[@"AVAudioSessionRouteChangeReasonNewDeviceAvailable"] = @1UL;
	context[@"AVAudioSessionRouteChangeReasonOldDeviceUnavailable"] = @2UL;
	context[@"AVAudioSessionRouteChangeReasonCategoryChange"] = @3UL;
	context[@"AVAudioSessionRouteChangeReasonOverride"] = @4UL;
	context[@"AVAudioSessionRouteChangeReasonWakeFromSleep"] = @6UL;
	context[@"AVAudioSessionRouteChangeReasonNoSuitableRouteForCategory"] = @7UL;
	context[@"AVAudioSessionRouteChangeReasonRouteConfigurationChange"] = @8UL;

	context[@"AVAudioSessionCategoryOptionMixWithOthers"] = @1UL;
	context[@"AVAudioSessionCategoryOptionDuckOthers"] = @2UL;
	context[@"AVAudioSessionCategoryOptionAllowBluetooth"] = @4UL;
	context[@"AVAudioSessionCategoryOptionDefaultToSpeaker"] = @8UL;
	context[@"AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers"] = @17UL;
	context[@"AVAudioSessionCategoryOptionAllowBluetoothA2DP"] = @32UL;
	context[@"AVAudioSessionCategoryOptionAllowAirPlay"] = @64UL;

	context[@"AVAudioSessionInterruptionTypeBegan"] = @1UL;
	context[@"AVAudioSessionInterruptionTypeEnded"] = @0UL;

	context[@"AVAudioSessionInterruptionOptionShouldResume"] = @1UL;

	context[@"AVAudioSessionSetActiveOptionNotifyOthersOnDeactivation"] = @1UL;

	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeBegin"] = @1UL;
	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeEnd"] = @0UL;

	context[@"AVAudioSessionIOTypeNotSpecified"] = @0UL;
	context[@"AVAudioSessionIOTypeAggregated"] = @1UL;

	context[@"AVAudioSessionRouteSharingPolicyDefault"] = @0UL;
	context[@"AVAudioSessionRouteSharingPolicyLongFormAudio"] = @1UL;
	context[@"AVAudioSessionRouteSharingPolicyLongForm"] = @1UL;
	context[@"AVAudioSessionRouteSharingPolicyIndependent"] = @2UL;
	context[@"AVAudioSessionRouteSharingPolicyLongFormVideo"] = @3UL;

	context[@"AVAudioSessionPromptStyleNone"] = @1852796517UL;
	context[@"AVAudioSessionPromptStyleShort"] = @1936224884UL;
	context[@"AVAudioSessionPromptStyleNormal"] = @1852992876UL;

	context[@"AVAudioStereoOrientationNone"] = @0L;
	context[@"AVAudioStereoOrientationPortrait"] = @1L;
	context[@"AVAudioStereoOrientationPortraitUpsideDown"] = @2L;
	context[@"AVAudioStereoOrientationLandscapeRight"] = @3L;
	context[@"AVAudioStereoOrientationLandscapeLeft"] = @4L;

	context[@"AVAudioSessionRecordPermissionUndetermined"] = @1970168948UL;
	context[@"AVAudioSessionRecordPermissionDenied"] = @1684369017UL;
	context[@"AVAudioSessionRecordPermissionGranted"] = @1735552628UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAudioSessionPortThunderbolt;
	if (p != NULL) context[@"AVAudioSessionPortThunderbolt"] = AVAudioSessionPortThunderbolt;
	p = (void*) &AVAudioSessionPortVirtual;
	if (p != NULL) context[@"AVAudioSessionPortVirtual"] = AVAudioSessionPortVirtual;
	p = (void*) &AVAudioSessionPortBluetoothHFP;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothHFP"] = AVAudioSessionPortBluetoothHFP;
	p = (void*) &AVAudioSessionPortBuiltInMic;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInMic"] = AVAudioSessionPortBuiltInMic;
	p = (void*) &AVAudioSessionCategoryAmbient;
	if (p != NULL) context[@"AVAudioSessionCategoryAmbient"] = AVAudioSessionCategoryAmbient;
	p = (void*) &AVAudioSessionModeVoiceChat;
	if (p != NULL) context[@"AVAudioSessionModeVoiceChat"] = AVAudioSessionModeVoiceChat;
	p = (void*) &AVAudioSessionModeMeasurement;
	if (p != NULL) context[@"AVAudioSessionModeMeasurement"] = AVAudioSessionModeMeasurement;
	p = (void*) &AVAudioSessionPortHeadsetMic;
	if (p != NULL) context[@"AVAudioSessionPortHeadsetMic"] = AVAudioSessionPortHeadsetMic;
	p = (void*) &AVAudioSessionCategoryAudioProcessing;
	if (p != NULL) context[@"AVAudioSessionCategoryAudioProcessing"] = AVAudioSessionCategoryAudioProcessing;
	p = (void*) &AVAudioSessionPortHDMI;
	if (p != NULL) context[@"AVAudioSessionPortHDMI"] = AVAudioSessionPortHDMI;
	p = (void*) &AVAudioSessionPortLineOut;
	if (p != NULL) context[@"AVAudioSessionPortLineOut"] = AVAudioSessionPortLineOut;
	p = (void*) &AVAudioSessionPortPCI;
	if (p != NULL) context[@"AVAudioSessionPortPCI"] = AVAudioSessionPortPCI;
	p = (void*) &AVAudioSessionPortBuiltInSpeaker;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInSpeaker"] = AVAudioSessionPortBuiltInSpeaker;
	p = (void*) &AVAudioSessionPortFireWire;
	if (p != NULL) context[@"AVAudioSessionPortFireWire"] = AVAudioSessionPortFireWire;
	p = (void*) &AVAudioSessionModeVideoRecording;
	if (p != NULL) context[@"AVAudioSessionModeVideoRecording"] = AVAudioSessionModeVideoRecording;
	p = (void*) &AVAudioSessionModeGameChat;
	if (p != NULL) context[@"AVAudioSessionModeGameChat"] = AVAudioSessionModeGameChat;
	p = (void*) &AVAudioSessionCategoryPlayback;
	if (p != NULL) context[@"AVAudioSessionCategoryPlayback"] = AVAudioSessionCategoryPlayback;
	p = (void*) &AVAudioSessionModeSpokenAudio;
	if (p != NULL) context[@"AVAudioSessionModeSpokenAudio"] = AVAudioSessionModeSpokenAudio;
	p = (void*) &AVAudioSessionCategoryRecord;
	if (p != NULL) context[@"AVAudioSessionCategoryRecord"] = AVAudioSessionCategoryRecord;
	p = (void*) &AVAudioSessionPortLineIn;
	if (p != NULL) context[@"AVAudioSessionPortLineIn"] = AVAudioSessionPortLineIn;
	p = (void*) &AVAudioSessionPortAVB;
	if (p != NULL) context[@"AVAudioSessionPortAVB"] = AVAudioSessionPortAVB;
	p = (void*) &AVAudioSessionPortBluetoothLE;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothLE"] = AVAudioSessionPortBluetoothLE;
	p = (void*) &AVAudioSessionPortHeadphones;
	if (p != NULL) context[@"AVAudioSessionPortHeadphones"] = AVAudioSessionPortHeadphones;
	p = (void*) &AVAudioSessionCategoryPlayAndRecord;
	if (p != NULL) context[@"AVAudioSessionCategoryPlayAndRecord"] = AVAudioSessionCategoryPlayAndRecord;
	p = (void*) &AVAudioSessionModeVoicePrompt;
	if (p != NULL) context[@"AVAudioSessionModeVoicePrompt"] = AVAudioSessionModeVoicePrompt;
	p = (void*) &AVAudioSessionPortDisplayPort;
	if (p != NULL) context[@"AVAudioSessionPortDisplayPort"] = AVAudioSessionPortDisplayPort;
	p = (void*) &AVAudioSessionModeVideoChat;
	if (p != NULL) context[@"AVAudioSessionModeVideoChat"] = AVAudioSessionModeVideoChat;
	p = (void*) &AVAudioSessionPortUSBAudio;
	if (p != NULL) context[@"AVAudioSessionPortUSBAudio"] = AVAudioSessionPortUSBAudio;
	p = (void*) &AVAudioSessionCategoryMultiRoute;
	if (p != NULL) context[@"AVAudioSessionCategoryMultiRoute"] = AVAudioSessionCategoryMultiRoute;
	p = (void*) &AVAudioSessionPortCarAudio;
	if (p != NULL) context[@"AVAudioSessionPortCarAudio"] = AVAudioSessionPortCarAudio;
	p = (void*) &AVAudioSessionModeDefault;
	if (p != NULL) context[@"AVAudioSessionModeDefault"] = AVAudioSessionModeDefault;
	p = (void*) &AVAudioSessionPortBuiltInReceiver;
	if (p != NULL) context[@"AVAudioSessionPortBuiltInReceiver"] = AVAudioSessionPortBuiltInReceiver;
	p = (void*) &AVAudioSessionPortBluetoothA2DP;
	if (p != NULL) context[@"AVAudioSessionPortBluetoothA2DP"] = AVAudioSessionPortBluetoothA2DP;
	p = (void*) &AVAudioSessionPortAirPlay;
	if (p != NULL) context[@"AVAudioSessionPortAirPlay"] = AVAudioSessionPortAirPlay;
	p = (void*) &AVAudioSessionModeMoviePlayback;
	if (p != NULL) context[@"AVAudioSessionModeMoviePlayback"] = AVAudioSessionModeMoviePlayback;
	p = (void*) &AVAudioSessionCategorySoloAmbient;
	if (p != NULL) context[@"AVAudioSessionCategorySoloAmbient"] = AVAudioSessionCategorySoloAmbient;
}
void load_AVFoundation_AVFAudio_AVAudioSessionTypes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
