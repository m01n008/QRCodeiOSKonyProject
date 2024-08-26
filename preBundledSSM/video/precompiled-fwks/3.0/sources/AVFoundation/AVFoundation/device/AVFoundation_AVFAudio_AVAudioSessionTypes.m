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
	context[@"AVAudioSessionActivationOptionNone"] = @0U;

	context[@"AVAudioSessionPortOverrideNone"] = @0U;
	context[@"AVAudioSessionPortOverrideSpeaker"] = @1936747378U;

	context[@"AVAudioSessionRouteChangeReasonUnknown"] = @0U;
	context[@"AVAudioSessionRouteChangeReasonNewDeviceAvailable"] = @1U;
	context[@"AVAudioSessionRouteChangeReasonOldDeviceUnavailable"] = @2U;
	context[@"AVAudioSessionRouteChangeReasonCategoryChange"] = @3U;
	context[@"AVAudioSessionRouteChangeReasonOverride"] = @4U;
	context[@"AVAudioSessionRouteChangeReasonWakeFromSleep"] = @6U;
	context[@"AVAudioSessionRouteChangeReasonNoSuitableRouteForCategory"] = @7U;
	context[@"AVAudioSessionRouteChangeReasonRouteConfigurationChange"] = @8U;

	context[@"AVAudioSessionCategoryOptionMixWithOthers"] = @1U;
	context[@"AVAudioSessionCategoryOptionDuckOthers"] = @2U;
	context[@"AVAudioSessionCategoryOptionAllowBluetooth"] = @4U;
	context[@"AVAudioSessionCategoryOptionDefaultToSpeaker"] = @8U;
	context[@"AVAudioSessionCategoryOptionInterruptSpokenAudioAndMixWithOthers"] = @17U;
	context[@"AVAudioSessionCategoryOptionAllowBluetoothA2DP"] = @32U;
	context[@"AVAudioSessionCategoryOptionAllowAirPlay"] = @64U;

	context[@"AVAudioSessionInterruptionTypeBegan"] = @1U;
	context[@"AVAudioSessionInterruptionTypeEnded"] = @0U;

	context[@"AVAudioSessionInterruptionOptionShouldResume"] = @1U;

	context[@"AVAudioSessionSetActiveOptionNotifyOthersOnDeactivation"] = @1U;

	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeBegin"] = @1U;
	context[@"AVAudioSessionSilenceSecondaryAudioHintTypeEnd"] = @0U;

	context[@"AVAudioSessionIOTypeNotSpecified"] = @0U;
	context[@"AVAudioSessionIOTypeAggregated"] = @1U;

	context[@"AVAudioSessionRouteSharingPolicyDefault"] = @0U;
	context[@"AVAudioSessionRouteSharingPolicyLongFormAudio"] = @1U;
	context[@"AVAudioSessionRouteSharingPolicyLongForm"] = @1U;
	context[@"AVAudioSessionRouteSharingPolicyIndependent"] = @2U;
	context[@"AVAudioSessionRouteSharingPolicyLongFormVideo"] = @3U;

	context[@"AVAudioSessionPromptStyleNone"] = @1852796517U;
	context[@"AVAudioSessionPromptStyleShort"] = @1936224884U;
	context[@"AVAudioSessionPromptStyleNormal"] = @1852992876U;

	context[@"AVAudioStereoOrientationNone"] = @0;
	context[@"AVAudioStereoOrientationPortrait"] = @1;
	context[@"AVAudioStereoOrientationPortraitUpsideDown"] = @2;
	context[@"AVAudioStereoOrientationLandscapeRight"] = @3;
	context[@"AVAudioStereoOrientationLandscapeLeft"] = @4;

	context[@"AVAudioSessionRecordPermissionUndetermined"] = @1970168948U;
	context[@"AVAudioSessionRecordPermissionDenied"] = @1684369017U;
	context[@"AVAudioSessionRecordPermissionGranted"] = @1735552628U;

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
