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
	context[@"AudioComponentCopyIcon"] = ^UIImage *(id arg0) {
		return AudioComponentCopyIcon(arg0);
	};
	context[@"AudioComponentGetIcon"] = ^UIImage *(id arg0, float arg1) {
		return AudioComponentGetIcon(arg0, arg1);
	};
	context[@"AudioUnitReset"] = ^OSStatus(id arg0, AudioUnitScope arg1, AudioUnitElement arg2) {
		return AudioUnitReset(arg0, arg1, arg2);
	};
	context[@"AudioUnitExtensionSetComponentList"] = ^OSStatus(id arg0, id arg1) {
		return AudioUnitExtensionSetComponentList(arg0, arg1);
	};
	context[@"AudioUnitInitialize"] = ^OSStatus(id arg0) {
		return AudioUnitInitialize(arg0);
	};
	context[@"AudioUnitUninitialize"] = ^OSStatus(id arg0) {
		return AudioUnitUninitialize(arg0);
	};
	context[@"AudioOutputUnitGetHostIcon"] = ^UIImage *(id arg0, float arg1) {
		return AudioOutputUnitGetHostIcon(arg0, arg1);
	};
	context[@"AudioComponentGetLastActiveTime"] = ^CFAbsoluteTime(id arg0) {
		return AudioComponentGetLastActiveTime(arg0);
	};
	context[@"AudioUnitSetParameter"] = ^OSStatus(id arg0, AudioUnitParameterID arg1, AudioUnitScope arg2, AudioUnitElement arg3, AudioUnitParameterValue arg4, UInt32 arg5) {
		return AudioUnitSetParameter(arg0, arg1, arg2, arg3, arg4, arg5);
	};
	context[@"AudioUnitExtensionCopyComponentList"] = ^id(id arg0) {
		return AudioUnitExtensionCopyComponentList(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioUnitType_Output"] = @1635086197U;
	context[@"kAudioUnitType_MusicDevice"] = @1635085685U;
	context[@"kAudioUnitType_MusicEffect"] = @1635085670U;
	context[@"kAudioUnitType_FormatConverter"] = @1635083875U;
	context[@"kAudioUnitType_Effect"] = @1635083896U;
	context[@"kAudioUnitType_Mixer"] = @1635085688U;
	context[@"kAudioUnitType_Panner"] = @1635086446U;
	context[@"kAudioUnitType_Generator"] = @1635084142U;
	context[@"kAudioUnitType_OfflineEffect"] = @1635086188U;
	context[@"kAudioUnitType_MIDIProcessor"] = @1635085673U;

	context[@"kAudioUnitType_RemoteEffect"] = @1635086968U;
	context[@"kAudioUnitType_RemoteGenerator"] = @1635086951U;
	context[@"kAudioUnitType_RemoteInstrument"] = @1635086953U;
	context[@"kAudioUnitType_RemoteMusicEffect"] = @1635086957U;

	context[@"kAudioUnitManufacturer_Apple"] = @1634758764U;

	context[@"kAudioUnitSubType_GenericOutput"] = @1734700658U;
	context[@"kAudioUnitSubType_VoiceProcessingIO"] = @1987078511U;

	context[@"kAudioUnitSubType_RemoteIO"] = @1919512419U;

	context[@"kAudioUnitSubType_Sampler"] = @1935764848U;
	context[@"kAudioUnitSubType_MIDISynth"] = @1836284270U;

	context[@"kAudioUnitSubType_AUConverter"] = @1668247158U;
	context[@"kAudioUnitSubType_Varispeed"] = @1986097769U;
	context[@"kAudioUnitSubType_DeferredRenderer"] = @1684366962U;
	context[@"kAudioUnitSubType_Splitter"] = @1936747636U;
	context[@"kAudioUnitSubType_MultiSplitter"] = @1836281964U;
	context[@"kAudioUnitSubType_Merger"] = @1835364967U;
	context[@"kAudioUnitSubType_NewTimePitch"] = @1853191280U;
	context[@"kAudioUnitSubType_AUiPodTimeOther"] = @1768977519U;
	context[@"kAudioUnitSubType_RoundTripAAC"] = @1918984547U;

	context[@"kAudioUnitSubType_AUiPodTime"] = @1768977517U;

	context[@"kAudioUnitSubType_PeakLimiter"] = @1819112562U;
	context[@"kAudioUnitSubType_DynamicsProcessor"] = @1684237680U;
	context[@"kAudioUnitSubType_LowPassFilter"] = @1819304307U;
	context[@"kAudioUnitSubType_HighPassFilter"] = @1752195443U;
	context[@"kAudioUnitSubType_BandPassFilter"] = @1651532147U;
	context[@"kAudioUnitSubType_HighShelfFilter"] = @1752393830U;
	context[@"kAudioUnitSubType_LowShelfFilter"] = @1819502694U;
	context[@"kAudioUnitSubType_ParametricEQ"] = @1886217585U;
	context[@"kAudioUnitSubType_Distortion"] = @1684632436U;
	context[@"kAudioUnitSubType_Delay"] = @1684368505U;
	context[@"kAudioUnitSubType_SampleDelay"] = @1935961209U;
	context[@"kAudioUnitSubType_NBandEQ"] = @1851942257U;
	context[@"kAudioUnitSubType_Reverb2"] = @1920361010U;

	context[@"kAudioUnitSubType_AUiPodEQ"] = @1768973681U;

	context[@"kAudioUnitSubType_MultiChannelMixer"] = @1835232632U;
	context[@"kAudioUnitSubType_MatrixMixer"] = @1836608888U;
	context[@"kAudioUnitSubType_SpatialMixer"] = @862217581U;

	context[@"kAudioUnitSubType_AU3DMixerEmbedded"] = @862217581U;

	context[@"kAudioUnitSubType_ScheduledSoundPlayer"] = @1936945260U;
	context[@"kAudioUnitSubType_AudioFilePlayer"] = @1634103404U;

	context[@"kAudioUnitRenderAction_PreRender"] = @4U;
	context[@"kAudioUnitRenderAction_PostRender"] = @8U;
	context[@"kAudioUnitRenderAction_OutputIsSilence"] = @16U;
	context[@"kAudioOfflineUnitRenderAction_Preflight"] = @32U;
	context[@"kAudioOfflineUnitRenderAction_Render"] = @64U;
	context[@"kAudioOfflineUnitRenderAction_Complete"] = @128U;
	context[@"kAudioUnitRenderAction_PostRenderError"] = @256U;
	context[@"kAudioUnitRenderAction_DoNotCheckRenderArgs"] = @512U;

	context[@"kAudioUnitErr_InvalidProperty"] = @-10879;
	context[@"kAudioUnitErr_InvalidParameter"] = @-10878;
	context[@"kAudioUnitErr_InvalidElement"] = @-10877;
	context[@"kAudioUnitErr_NoConnection"] = @-10876;
	context[@"kAudioUnitErr_FailedInitialization"] = @-10875;
	context[@"kAudioUnitErr_TooManyFramesToProcess"] = @-10874;
	context[@"kAudioUnitErr_InvalidFile"] = @-10871;
	context[@"kAudioUnitErr_UnknownFileType"] = @-10870;
	context[@"kAudioUnitErr_FileNotSpecified"] = @-10869;
	context[@"kAudioUnitErr_FormatNotSupported"] = @-10868;
	context[@"kAudioUnitErr_Uninitialized"] = @-10867;
	context[@"kAudioUnitErr_InvalidScope"] = @-10866;
	context[@"kAudioUnitErr_PropertyNotWritable"] = @-10865;
	context[@"kAudioUnitErr_CannotDoInCurrentContext"] = @-10863;
	context[@"kAudioUnitErr_InvalidPropertyValue"] = @-10851;
	context[@"kAudioUnitErr_PropertyNotInUse"] = @-10850;
	context[@"kAudioUnitErr_Initialized"] = @-10849;
	context[@"kAudioUnitErr_InvalidOfflineRender"] = @-10848;
	context[@"kAudioUnitErr_Unauthorized"] = @-10847;
	context[@"kAudioUnitErr_MIDIOutputBufferFull"] = @-66753;
	context[@"kAudioComponentErr_InstanceTimedOut"] = @-66754;
	context[@"kAudioComponentErr_InstanceInvalidated"] = @-66749;
	context[@"kAudioUnitErr_RenderTimeout"] = @-66745;
	context[@"kAudioUnitErr_ExtensionNotFound"] = @-66744;
	context[@"kAudioUnitErr_InvalidParameterValue"] = @-66743;
	context[@"kAudioUnitErr_InvalidFilePath"] = @-66742;
	context[@"kAudioUnitErr_MissingKey"] = @-66741;

	context[@"kAudioComponentErr_DuplicateDescription"] = @-66752;
	context[@"kAudioComponentErr_UnsupportedType"] = @-66751;
	context[@"kAudioComponentErr_TooManyInstances"] = @-66750;
	context[@"kAudioComponentErr_NotPermitted"] = @-66748;
	context[@"kAudioComponentErr_InitializationTimedOut"] = @-66747;
	context[@"kAudioComponentErr_InvalidFormat"] = @-66746;

	context[@"kParameterEvent_Immediate"] = @1U;
	context[@"kParameterEvent_Ramped"] = @2U;

	context[@"kAudioUnitRange"] = @0;
	context[@"kAudioUnitInitializeSelect"] = @1;
	context[@"kAudioUnitUninitializeSelect"] = @2;
	context[@"kAudioUnitGetPropertyInfoSelect"] = @3;
	context[@"kAudioUnitGetPropertySelect"] = @4;
	context[@"kAudioUnitSetPropertySelect"] = @5;
	context[@"kAudioUnitAddPropertyListenerSelect"] = @10;
	context[@"kAudioUnitRemovePropertyListenerSelect"] = @11;
	context[@"kAudioUnitRemovePropertyListenerWithUserDataSelect"] = @18;
	context[@"kAudioUnitAddRenderNotifySelect"] = @15;
	context[@"kAudioUnitRemoveRenderNotifySelect"] = @16;
	context[@"kAudioUnitGetParameterSelect"] = @6;
	context[@"kAudioUnitSetParameterSelect"] = @7;
	context[@"kAudioUnitScheduleParametersSelect"] = @17;
	context[@"kAudioUnitRenderSelect"] = @14;
	context[@"kAudioUnitResetSelect"] = @9;
	context[@"kAudioUnitComplexRenderSelect"] = @19;
	context[@"kAudioUnitProcessSelect"] = @20;
	context[@"kAudioUnitProcessMultipleSelect"] = @21;

	context[@"kAudioUnitErr_IllegalInstrument"] = @-10873;
	context[@"kAudioUnitErr_InstrumentTypeNotFound"] = @-10872;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kAudioComponentInstanceInvalidationNotification;
	if (p != NULL) context[@"kAudioComponentInstanceInvalidationNotification"] = [JSValue valueWithObject: (__bridge id) kAudioComponentInstanceInvalidationNotification inContext: context];
	p = (void*) &kAudioComponentRegistrationsChangedNotification;
	if (p != NULL) context[@"kAudioComponentRegistrationsChangedNotification"] = [JSValue valueWithObject: (__bridge id) kAudioComponentRegistrationsChangedNotification inContext: context];
}
void load_AudioToolbox_AUComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
