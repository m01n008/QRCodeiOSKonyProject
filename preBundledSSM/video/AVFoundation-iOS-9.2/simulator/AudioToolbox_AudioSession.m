#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioSessionNoError"] = @0;
	context[@"kAudioSessionNotInitialized"] = @560557673;
	context[@"kAudioSessionAlreadyInitialized"] = @1768843636;
	context[@"kAudioSessionInitializationError"] = @1768843583;
	context[@"kAudioSessionUnsupportedPropertyError"] = @1886681407;
	context[@"kAudioSessionBadPropertySizeError"] = @561211770;
	context[@"kAudioSessionNotActiveError"] = @560030580;
	context[@"kAudioServicesNoHardwareError"] = @1852794999;
	context[@"kAudioSessionNoCategorySet"] = @1063477620;
	context[@"kAudioSessionIncompatibleCategory"] = @560161140;
	context[@"kAudioSessionUnspecifiedError"] = @2003329396;

	context[@"kAudioSessionBeginInterruption"] = @1;
	context[@"kAudioSessionEndInterruption"] = @0;

	context[@"kAudioSessionCategory_AmbientSound"] = @1634558569;
	context[@"kAudioSessionCategory_SoloAmbientSound"] = @1936682095;
	context[@"kAudioSessionCategory_MediaPlayback"] = @1835361385;
	context[@"kAudioSessionCategory_RecordAudio"] = @1919247201;
	context[@"kAudioSessionCategory_PlayAndRecord"] = @1886151026;
	context[@"kAudioSessionCategory_AudioProcessing"] = @1886547811;

	context[@"kAudioSessionOverrideAudioRoute_None"] = @0;
	context[@"kAudioSessionOverrideAudioRoute_Speaker"] = @1936747378;

	context[@"kAudioSessionRouteChangeReason_Unknown"] = @0;
	context[@"kAudioSessionRouteChangeReason_NewDeviceAvailable"] = @1;
	context[@"kAudioSessionRouteChangeReason_OldDeviceUnavailable"] = @2;
	context[@"kAudioSessionRouteChangeReason_CategoryChange"] = @3;
	context[@"kAudioSessionRouteChangeReason_Override"] = @4;
	context[@"kAudioSessionRouteChangeReason_WakeFromSleep"] = @6;
	context[@"kAudioSessionRouteChangeReason_NoSuitableRouteForCategory"] = @7;
	context[@"kAudioSessionRouteChangeReason_RouteConfigurationChange"] = @8;

	context[@"kAudioSessionInterruptionType_ShouldResume"] = @1769108333;
	context[@"kAudioSessionInterruptionType_ShouldNotResume"] = @561148781;

	context[@"kAudioSessionMode_Default"] = @1684434036;
	context[@"kAudioSessionMode_VoiceChat"] = @1986225012;
	context[@"kAudioSessionMode_VideoRecording"] = @1987208036;
	context[@"kAudioSessionMode_Measurement"] = @1836281204;
	context[@"kAudioSessionMode_GameChat"] = @1735222132;

	context[@"kAudioSessionProperty_PreferredHardwareSampleRate"] = @1752658802;
	context[@"kAudioSessionProperty_PreferredHardwareIOBufferDuration"] = @1768907364;
	context[@"kAudioSessionProperty_AudioCategory"] = @1633902964;
	context[@"kAudioSessionProperty_AudioRouteChange"] = @1919902568;
	context[@"kAudioSessionProperty_CurrentHardwareSampleRate"] = @1667789682;
	context[@"kAudioSessionProperty_CurrentHardwareInputNumberChannels"] = @1667787107;
	context[@"kAudioSessionProperty_CurrentHardwareOutputNumberChannels"] = @1667788643;
	context[@"kAudioSessionProperty_CurrentHardwareOutputVolume"] = @1667788662;
	context[@"kAudioSessionProperty_CurrentHardwareInputLatency"] = @1667853428;
	context[@"kAudioSessionProperty_CurrentHardwareOutputLatency"] = @1668246644;
	context[@"kAudioSessionProperty_CurrentHardwareIOBufferDuration"] = @1667785316;
	context[@"kAudioSessionProperty_OtherAudioIsPlaying"] = @1869899890;
	context[@"kAudioSessionProperty_OverrideAudioRoute"] = @1870033508;
	context[@"kAudioSessionProperty_AudioInputAvailable"] = @1634296182;
	context[@"kAudioSessionProperty_ServerDied"] = @1684628836;
	context[@"kAudioSessionProperty_OtherMixableAudioShouldDuck"] = @1685414763;
	context[@"kAudioSessionProperty_OverrideCategoryMixWithOthers"] = @1668114808;
	context[@"kAudioSessionProperty_OverrideCategoryDefaultToSpeaker"] = @1668509803;
	context[@"kAudioSessionProperty_OverrideCategoryEnableBluetoothInput"] = @1667394677;
	context[@"kAudioSessionProperty_InterruptionType"] = @1954115685;
	context[@"kAudioSessionProperty_Mode"] = @1836016741;
	context[@"kAudioSessionProperty_InputSources"] = @1936876403;
	context[@"kAudioSessionProperty_OutputDestinations"] = @1685288051;
	context[@"kAudioSessionProperty_InputSource"] = @1769173603;
	context[@"kAudioSessionProperty_OutputDestination"] = @1868854132;
	context[@"kAudioSessionProperty_InputGainAvailable"] = @1768382838;
	context[@"kAudioSessionProperty_InputGainScalar"] = @1768387427;
	context[@"kAudioSessionProperty_AudioRouteDescription"] = @1668440434;

	context[@"kAudioSessionSetActiveFlag_NotifyOthersOnDeactivation"] = @1;

	context[@"kAudioSessionCategory_UserInterfaceSoundEffects"] = @1969841784;
	context[@"kAudioSessionCategory_LiveAudio"] = @1818850917;

	context[@"kAudioSessionProperty_AudioRoute"] = @1919907188;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kAudioSession_AudioRouteKey_Type;
	if (p != NULL) context[@"kAudioSession_AudioRouteKey_Type"] = [JSValue valueWithObject: (__bridge id) kAudioSession_AudioRouteKey_Type inContext: context];
	p = (void*) &kAudioSessionOutputRoute_BuiltInReceiver;
	if (p != NULL) context[@"kAudioSessionOutputRoute_BuiltInReceiver"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_BuiltInReceiver inContext: context];
	p = (void*) &kAudioSession_AudioRouteKey_Inputs;
	if (p != NULL) context[@"kAudioSession_AudioRouteKey_Inputs"] = [JSValue valueWithObject: (__bridge id) kAudioSession_AudioRouteKey_Inputs inContext: context];
	p = (void*) &kAudioSession_InputSourceKey_ID;
	if (p != NULL) context[@"kAudioSession_InputSourceKey_ID"] = [JSValue valueWithObject: (__bridge id) kAudioSession_InputSourceKey_ID inContext: context];
	p = (void*) &kAudioSession_InputSourceKey_Description;
	if (p != NULL) context[@"kAudioSession_InputSourceKey_Description"] = [JSValue valueWithObject: (__bridge id) kAudioSession_InputSourceKey_Description inContext: context];
	p = (void*) &kAudioSessionInputRoute_HeadsetMic;
	if (p != NULL) context[@"kAudioSessionInputRoute_HeadsetMic"] = [JSValue valueWithObject: (__bridge id) kAudioSessionInputRoute_HeadsetMic inContext: context];
	p = (void*) &kAudioSession_AudioRouteChangeKey_CurrentRouteDescription;
	if (p != NULL) context[@"kAudioSession_AudioRouteChangeKey_CurrentRouteDescription"] = [JSValue valueWithObject: (__bridge id) kAudioSession_AudioRouteChangeKey_CurrentRouteDescription inContext: context];
	p = (void*) &kAudioSession_OutputDestinationKey_ID;
	if (p != NULL) context[@"kAudioSession_OutputDestinationKey_ID"] = [JSValue valueWithObject: (__bridge id) kAudioSession_OutputDestinationKey_ID inContext: context];
	p = (void*) &kAudioSessionOutputRoute_BluetoothA2DP;
	if (p != NULL) context[@"kAudioSessionOutputRoute_BluetoothA2DP"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_BluetoothA2DP inContext: context];
	p = (void*) &kAudioSessionInputRoute_USBAudio;
	if (p != NULL) context[@"kAudioSessionInputRoute_USBAudio"] = [JSValue valueWithObject: (__bridge id) kAudioSessionInputRoute_USBAudio inContext: context];
	p = (void*) &kAudioSessionOutputRoute_LineOut;
	if (p != NULL) context[@"kAudioSessionOutputRoute_LineOut"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_LineOut inContext: context];
	p = (void*) &kAudioSessionInputRoute_BluetoothHFP;
	if (p != NULL) context[@"kAudioSessionInputRoute_BluetoothHFP"] = [JSValue valueWithObject: (__bridge id) kAudioSessionInputRoute_BluetoothHFP inContext: context];
	p = (void*) &kAudioSessionOutputRoute_USBAudio;
	if (p != NULL) context[@"kAudioSessionOutputRoute_USBAudio"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_USBAudio inContext: context];
	p = (void*) &kAudioSessionInputRoute_LineIn;
	if (p != NULL) context[@"kAudioSessionInputRoute_LineIn"] = [JSValue valueWithObject: (__bridge id) kAudioSessionInputRoute_LineIn inContext: context];
	p = (void*) &kAudioSession_AudioRouteKey_Outputs;
	if (p != NULL) context[@"kAudioSession_AudioRouteKey_Outputs"] = [JSValue valueWithObject: (__bridge id) kAudioSession_AudioRouteKey_Outputs inContext: context];
	p = (void*) &kAudioSessionOutputRoute_AirPlay;
	if (p != NULL) context[@"kAudioSessionOutputRoute_AirPlay"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_AirPlay inContext: context];
	p = (void*) &kAudioSessionOutputRoute_HDMI;
	if (p != NULL) context[@"kAudioSessionOutputRoute_HDMI"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_HDMI inContext: context];
	p = (void*) &kAudioSessionOutputRoute_BuiltInSpeaker;
	if (p != NULL) context[@"kAudioSessionOutputRoute_BuiltInSpeaker"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_BuiltInSpeaker inContext: context];
	p = (void*) &kAudioSession_AudioRouteChangeKey_PreviousRouteDescription;
	if (p != NULL) context[@"kAudioSession_AudioRouteChangeKey_PreviousRouteDescription"] = [JSValue valueWithObject: (__bridge id) kAudioSession_AudioRouteChangeKey_PreviousRouteDescription inContext: context];
	p = (void*) &kAudioSessionOutputRoute_Headphones;
	if (p != NULL) context[@"kAudioSessionOutputRoute_Headphones"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_Headphones inContext: context];
	p = (void*) &kAudioSession_RouteChangeKey_Reason;
	if (p != NULL) context[@"kAudioSession_RouteChangeKey_Reason"] = [JSValue valueWithObject: (__bridge id) kAudioSession_RouteChangeKey_Reason inContext: context];
	p = (void*) &kAudioSession_OutputDestinationKey_Description;
	if (p != NULL) context[@"kAudioSession_OutputDestinationKey_Description"] = [JSValue valueWithObject: (__bridge id) kAudioSession_OutputDestinationKey_Description inContext: context];
	p = (void*) &kAudioSessionInputRoute_BuiltInMic;
	if (p != NULL) context[@"kAudioSessionInputRoute_BuiltInMic"] = [JSValue valueWithObject: (__bridge id) kAudioSessionInputRoute_BuiltInMic inContext: context];
	p = (void*) &kAudioSessionOutputRoute_BluetoothHFP;
	if (p != NULL) context[@"kAudioSessionOutputRoute_BluetoothHFP"] = [JSValue valueWithObject: (__bridge id) kAudioSessionOutputRoute_BluetoothHFP inContext: context];
}
void load_AudioToolbox_AudioSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
