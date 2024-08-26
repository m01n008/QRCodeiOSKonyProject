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
	context[@"kAudioUnitType_Output"] = @1635086197UL;
	context[@"kAudioUnitType_MusicDevice"] = @1635085685UL;
	context[@"kAudioUnitType_MusicEffect"] = @1635085670UL;
	context[@"kAudioUnitType_FormatConverter"] = @1635083875UL;
	context[@"kAudioUnitType_Effect"] = @1635083896UL;
	context[@"kAudioUnitType_Mixer"] = @1635085688UL;
	context[@"kAudioUnitType_Panner"] = @1635086446UL;
	context[@"kAudioUnitType_Generator"] = @1635084142UL;
	context[@"kAudioUnitType_OfflineEffect"] = @1635086188UL;
	context[@"kAudioUnitType_MIDIProcessor"] = @1635085673UL;

	context[@"kAudioUnitType_RemoteEffect"] = @1635086968UL;
	context[@"kAudioUnitType_RemoteGenerator"] = @1635086951UL;
	context[@"kAudioUnitType_RemoteInstrument"] = @1635086953UL;
	context[@"kAudioUnitType_RemoteMusicEffect"] = @1635086957UL;

	context[@"kAudioUnitManufacturer_Apple"] = @1634758764UL;

	context[@"kAudioUnitSubType_GenericOutput"] = @1734700658UL;
	context[@"kAudioUnitSubType_VoiceProcessingIO"] = @1987078511UL;

	context[@"kAudioUnitSubType_RemoteIO"] = @1919512419UL;

	context[@"kAudioUnitSubType_Sampler"] = @1935764848UL;
	context[@"kAudioUnitSubType_MIDISynth"] = @1836284270UL;

	context[@"kAudioUnitSubType_AUConverter"] = @1668247158UL;
	context[@"kAudioUnitSubType_Varispeed"] = @1986097769UL;
	context[@"kAudioUnitSubType_DeferredRenderer"] = @1684366962UL;
	context[@"kAudioUnitSubType_Splitter"] = @1936747636UL;
	context[@"kAudioUnitSubType_MultiSplitter"] = @1836281964UL;
	context[@"kAudioUnitSubType_Merger"] = @1835364967UL;
	context[@"kAudioUnitSubType_NewTimePitch"] = @1853191280UL;
	context[@"kAudioUnitSubType_AUiPodTimeOther"] = @1768977519UL;
	context[@"kAudioUnitSubType_RoundTripAAC"] = @1918984547UL;

	context[@"kAudioUnitSubType_AUiPodTime"] = @1768977517UL;

	context[@"kAudioUnitSubType_PeakLimiter"] = @1819112562UL;
	context[@"kAudioUnitSubType_DynamicsProcessor"] = @1684237680UL;
	context[@"kAudioUnitSubType_LowPassFilter"] = @1819304307UL;
	context[@"kAudioUnitSubType_HighPassFilter"] = @1752195443UL;
	context[@"kAudioUnitSubType_BandPassFilter"] = @1651532147UL;
	context[@"kAudioUnitSubType_HighShelfFilter"] = @1752393830UL;
	context[@"kAudioUnitSubType_LowShelfFilter"] = @1819502694UL;
	context[@"kAudioUnitSubType_ParametricEQ"] = @1886217585UL;
	context[@"kAudioUnitSubType_Distortion"] = @1684632436UL;
	context[@"kAudioUnitSubType_Delay"] = @1684368505UL;
	context[@"kAudioUnitSubType_SampleDelay"] = @1935961209UL;
	context[@"kAudioUnitSubType_NBandEQ"] = @1851942257UL;

	context[@"kAudioUnitSubType_Reverb2"] = @1920361010UL;
	context[@"kAudioUnitSubType_AUiPodEQ"] = @1768973681UL;

	context[@"kAudioUnitSubType_MultiChannelMixer"] = @1835232632UL;
	context[@"kAudioUnitSubType_MatrixMixer"] = @1836608888UL;
	context[@"kAudioUnitSubType_SpatialMixer"] = @862217581UL;

	context[@"kAudioUnitSubType_AU3DMixerEmbedded"] = @862217581UL;

	context[@"kAudioUnitSubType_ScheduledSoundPlayer"] = @1936945260UL;
	context[@"kAudioUnitSubType_AudioFilePlayer"] = @1634103404UL;

	context[@"kAudioUnitRenderAction_PreRender"] = @4UL;
	context[@"kAudioUnitRenderAction_PostRender"] = @8UL;
	context[@"kAudioUnitRenderAction_OutputIsSilence"] = @16UL;
	context[@"kAudioOfflineUnitRenderAction_Preflight"] = @32UL;
	context[@"kAudioOfflineUnitRenderAction_Render"] = @64UL;
	context[@"kAudioOfflineUnitRenderAction_Complete"] = @128UL;
	context[@"kAudioUnitRenderAction_PostRenderError"] = @256UL;
	context[@"kAudioUnitRenderAction_DoNotCheckRenderArgs"] = @512UL;

	context[@"kAudioUnitErr_InvalidProperty"] = @-10879L;
	context[@"kAudioUnitErr_InvalidParameter"] = @-10878L;
	context[@"kAudioUnitErr_InvalidElement"] = @-10877L;
	context[@"kAudioUnitErr_NoConnection"] = @-10876L;
	context[@"kAudioUnitErr_FailedInitialization"] = @-10875L;
	context[@"kAudioUnitErr_TooManyFramesToProcess"] = @-10874L;
	context[@"kAudioUnitErr_InvalidFile"] = @-10871L;
	context[@"kAudioUnitErr_UnknownFileType"] = @-10870L;
	context[@"kAudioUnitErr_FileNotSpecified"] = @-10869L;
	context[@"kAudioUnitErr_FormatNotSupported"] = @-10868L;
	context[@"kAudioUnitErr_Uninitialized"] = @-10867L;
	context[@"kAudioUnitErr_InvalidScope"] = @-10866L;
	context[@"kAudioUnitErr_PropertyNotWritable"] = @-10865L;
	context[@"kAudioUnitErr_CannotDoInCurrentContext"] = @-10863L;
	context[@"kAudioUnitErr_InvalidPropertyValue"] = @-10851L;
	context[@"kAudioUnitErr_PropertyNotInUse"] = @-10850L;
	context[@"kAudioUnitErr_Initialized"] = @-10849L;
	context[@"kAudioUnitErr_InvalidOfflineRender"] = @-10848L;
	context[@"kAudioUnitErr_Unauthorized"] = @-10847L;
	context[@"kAudioComponentErr_InstanceInvalidated"] = @-66749L;

	context[@"kAudioComponentErr_DuplicateDescription"] = @-66752L;
	context[@"kAudioComponentErr_UnsupportedType"] = @-66751L;
	context[@"kAudioComponentErr_TooManyInstances"] = @-66750L;
	context[@"kAudioComponentErr_NotPermitted"] = @-66748L;
	context[@"kAudioComponentErr_InitializationTimedOut"] = @-66747L;
	context[@"kAudioComponentErr_InvalidFormat"] = @-66746L;

	context[@"kParameterEvent_Immediate"] = @1UL;
	context[@"kParameterEvent_Ramped"] = @2UL;

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

	context[@"kAudioUnitErr_IllegalInstrument"] = @-10873L;
	context[@"kAudioUnitErr_InstrumentTypeNotFound"] = @-10872L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kAudioComponentInstanceInvalidationNotification;
	if (p != NULL) context[@"kAudioComponentInstanceInvalidationNotification"] = [JSValue valueWithObject: (__bridge id) kAudioComponentInstanceInvalidationNotification inContext: context];
	p = (void*) &kAudioComponentRegistrationsChangedNotification;
	if (p != NULL) context[@"kAudioComponentRegistrationsChangedNotification"] = [JSValue valueWithObject: (__bridge id) kAudioComponentRegistrationsChangedNotification inContext: context];
}
void load_AudioUnit_AUComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
