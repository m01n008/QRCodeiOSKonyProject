#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioUnitProperties)
+(JSValue*) valueWithAUDependentParameter: (AUDependentParameter) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mScope": @(s.mScope),
		@"mParameterID": @(s.mParameterID),
	} inContext: context];
}
-(AUDependentParameter) toAUDependentParameter {
	return (AUDependentParameter) {
		(AudioUnitScope) [self[@"mScope"] toDouble],
		(AudioUnitParameterID) [self[@"mParameterID"] toDouble],
	};
}
+(JSValue*) valueWithAudioUnitMeterClipping: (AudioUnitMeterClipping) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"peakValueSinceLastCall": @(s.peakValueSinceLastCall),
		@"sawInfinity": @(s.sawInfinity),
		@"sawNotANumber": @(s.sawNotANumber),
	} inContext: context];
}
-(AudioUnitMeterClipping) toAudioUnitMeterClipping {
	return (AudioUnitMeterClipping) {
		(Float32) [self[@"peakValueSinceLastCall"] toDouble],
		(Boolean) [self[@"sawInfinity"] toUInt32],
		(Boolean) [self[@"sawNotANumber"] toUInt32],
	};
}
+(JSValue*) valueWithAUChannelInfo: (AUChannelInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"inChannels": @(s.inChannels),
		@"outChannels": @(s.outChannels),
	} inContext: context];
}
-(AUChannelInfo) toAUChannelInfo {
	return (AUChannelInfo) {
		(SInt16) [self[@"inChannels"] toInt32],
		(SInt16) [self[@"outChannels"] toInt32],
	};
}
+(JSValue*) valueWithMixerDistanceParams: (MixerDistanceParams) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mReferenceDistance": @(s.mReferenceDistance),
		@"mMaxDistance": @(s.mMaxDistance),
		@"mMaxAttenuation": @(s.mMaxAttenuation),
	} inContext: context];
}
-(MixerDistanceParams) toMixerDistanceParams {
	return (MixerDistanceParams) {
		(Float32) [self[@"mReferenceDistance"] toDouble],
		(Float32) [self[@"mMaxDistance"] toDouble],
		(Float32) [self[@"mMaxAttenuation"] toDouble],
	};
}
+(JSValue*) valueWithAudioUnitFrequencyResponseBin: (AudioUnitFrequencyResponseBin) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mFrequency": @(s.mFrequency),
		@"mMagnitude": @(s.mMagnitude),
	} inContext: context];
}
-(AudioUnitFrequencyResponseBin) toAudioUnitFrequencyResponseBin {
	return (AudioUnitFrequencyResponseBin) {
		(Float64) [self[@"mFrequency"] toDouble],
		(Float64) [self[@"mMagnitude"] toDouble],
	};
}
+(JSValue*) valueWithAudioOutputUnitStartAtTimeParams: (AudioOutputUnitStartAtTimeParams) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"mSampleTime": @(s.mTimestamp.mSampleTime),
		@"mHostTime": @(s.mTimestamp.mHostTime),
		@"mRateScalar": @(s.mTimestamp.mRateScalar),
		@"mWordClockTime": @(s.mTimestamp.mWordClockTime),
		@"mSubframes": @(s.mTimestamp.mSMPTETime.mSubframes),
		@"mSubframeDivisor": @(s.mTimestamp.mSMPTETime.mSubframeDivisor),
		@"mCounter": @(s.mTimestamp.mSMPTETime.mCounter),
		@"mType": @(s.mTimestamp.mSMPTETime.mType),
		@"mFlags": @(s.mTimestamp.mSMPTETime.mFlags),
		@"mHours": @(s.mTimestamp.mSMPTETime.mHours),
		@"mMinutes": @(s.mTimestamp.mSMPTETime.mMinutes),
		@"mSeconds": @(s.mTimestamp.mSMPTETime.mSeconds),
		@"mFrames": @(s.mTimestamp.mSMPTETime.mFrames),
		@"mFlags": @(s.mTimestamp.mFlags),
		@"mReserved": @(s.mTimestamp.mReserved),
		@"mFlags": @(s.mFlags),
	} inContext: context];
}
-(AudioOutputUnitStartAtTimeParams) toAudioOutputUnitStartAtTimeParams {
	return (AudioOutputUnitStartAtTimeParams) {
		[self[@"mTimestamp"] toAudioTimeStamp],
		(UInt32) [self[@"mFlags"] toDouble],
	};
}
+(JSValue*) valueWithAudioUnitParameterHistoryInfo: (AudioUnitParameterHistoryInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"updatesPerSecond": @(s.updatesPerSecond),
		@"historyDurationInSeconds": @(s.historyDurationInSeconds),
	} inContext: context];
}
-(AudioUnitParameterHistoryInfo) toAudioUnitParameterHistoryInfo {
	return (AudioUnitParameterHistoryInfo) {
		(Float32) [self[@"updatesPerSecond"] toDouble],
		(Float32) [self[@"historyDurationInSeconds"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"GetAudioUnitParameterDisplayType"] = ^AudioUnitParameterOptions(AudioUnitParameterOptions arg0) {
		return GetAudioUnitParameterDisplayType(arg0);
	};
	context[@"SetAudioUnitParameterDisplayType"] = ^AudioUnitParameterOptions(AudioUnitParameterOptions arg0, AudioUnitParameterOptions arg1) {
		return SetAudioUnitParameterDisplayType(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioUnitScope_Global"] = @0UL;
	context[@"kAudioUnitScope_Input"] = @1UL;
	context[@"kAudioUnitScope_Output"] = @2UL;
	context[@"kAudioUnitScope_Group"] = @3UL;
	context[@"kAudioUnitScope_Part"] = @4UL;
	context[@"kAudioUnitScope_Note"] = @5UL;
	context[@"kAudioUnitScope_Layer"] = @6UL;
	context[@"kAudioUnitScope_LayerItem"] = @7UL;

	context[@"kAudioUnitProperty_ClassInfo"] = @0UL;
	context[@"kAudioUnitProperty_MakeConnection"] = @1UL;
	context[@"kAudioUnitProperty_SampleRate"] = @2UL;
	context[@"kAudioUnitProperty_ParameterList"] = @3UL;
	context[@"kAudioUnitProperty_ParameterInfo"] = @4UL;
	context[@"kAudioUnitProperty_CPULoad"] = @6UL;
	context[@"kAudioUnitProperty_StreamFormat"] = @8UL;
	context[@"kAudioUnitProperty_ElementCount"] = @11UL;
	context[@"kAudioUnitProperty_Latency"] = @12UL;
	context[@"kAudioUnitProperty_SupportedNumChannels"] = @13UL;
	context[@"kAudioUnitProperty_MaximumFramesPerSlice"] = @14UL;
	context[@"kAudioUnitProperty_ParameterValueStrings"] = @16UL;
	context[@"kAudioUnitProperty_AudioChannelLayout"] = @19UL;
	context[@"kAudioUnitProperty_TailTime"] = @20UL;
	context[@"kAudioUnitProperty_BypassEffect"] = @21UL;
	context[@"kAudioUnitProperty_LastRenderError"] = @22UL;
	context[@"kAudioUnitProperty_SetRenderCallback"] = @23UL;
	context[@"kAudioUnitProperty_FactoryPresets"] = @24UL;
	context[@"kAudioUnitProperty_RenderQuality"] = @26UL;
	context[@"kAudioUnitProperty_HostCallbacks"] = @27UL;
	context[@"kAudioUnitProperty_InPlaceProcessing"] = @29UL;
	context[@"kAudioUnitProperty_ElementName"] = @30UL;
	context[@"kAudioUnitProperty_SupportedChannelLayoutTags"] = @32UL;
	context[@"kAudioUnitProperty_PresentPreset"] = @36UL;
	context[@"kAudioUnitProperty_DependentParameters"] = @45UL;
	context[@"kAudioUnitProperty_InputSamplesInOutput"] = @49UL;
	context[@"kAudioUnitProperty_ShouldAllocateBuffer"] = @51UL;
	context[@"kAudioUnitProperty_FrequencyResponse"] = @52UL;
	context[@"kAudioUnitProperty_ParameterHistoryInfo"] = @53UL;
	context[@"kAudioUnitProperty_NickName"] = @54UL;
	context[@"kAudioUnitProperty_OfflineRender"] = @37UL;
	context[@"kAudioUnitProperty_ParameterIDName"] = @34UL;
	context[@"kAudioUnitProperty_ParameterStringFromValue"] = @33UL;
	context[@"kAudioUnitProperty_ParameterClumpName"] = @35UL;
	context[@"kAudioUnitProperty_ParameterValueFromString"] = @38UL;
	context[@"kAudioUnitProperty_ContextName"] = @25UL;
	context[@"kAudioUnitProperty_PresentationLatency"] = @40UL;
	context[@"kAudioUnitProperty_ClassInfoFromDocument"] = @50UL;
	context[@"kAudioUnitProperty_RequestViewController"] = @56UL;
	context[@"kAudioUnitProperty_ParametersForOverview"] = @57UL;
	context[@"kAudioUnitProperty_SupportsMPE"] = @58UL;
	context[@"kAudioUnitProperty_RenderContextObserver"] = @60UL;
	context[@"kAudioUnitProperty_MIDIOutputCallbackInfo"] = @47UL;
	context[@"kAudioUnitProperty_MIDIOutputCallback"] = @48UL;

	context[@"kAudioUnitProperty_RemoteControlEventListener"] = @100UL;
	context[@"kAudioUnitProperty_IsInterAppConnected"] = @101UL;
	context[@"kAudioUnitProperty_PeerURL"] = @102UL;

	context[@"kRenderQuality_Max"] = @127;
	context[@"kRenderQuality_High"] = @96;
	context[@"kRenderQuality_Medium"] = @64;
	context[@"kRenderQuality_Low"] = @32;
	context[@"kRenderQuality_Min"] = @0;

	context[@"kNumberOfResponseFrequencies"] = @1024;

	context[@"kAudioUnitParameterUnit_Generic"] = @0UL;
	context[@"kAudioUnitParameterUnit_Indexed"] = @1UL;
	context[@"kAudioUnitParameterUnit_Boolean"] = @2UL;
	context[@"kAudioUnitParameterUnit_Percent"] = @3UL;
	context[@"kAudioUnitParameterUnit_Seconds"] = @4UL;
	context[@"kAudioUnitParameterUnit_SampleFrames"] = @5UL;
	context[@"kAudioUnitParameterUnit_Phase"] = @6UL;
	context[@"kAudioUnitParameterUnit_Rate"] = @7UL;
	context[@"kAudioUnitParameterUnit_Hertz"] = @8UL;
	context[@"kAudioUnitParameterUnit_Cents"] = @9UL;
	context[@"kAudioUnitParameterUnit_RelativeSemiTones"] = @10UL;
	context[@"kAudioUnitParameterUnit_MIDINoteNumber"] = @11UL;
	context[@"kAudioUnitParameterUnit_MIDIController"] = @12UL;
	context[@"kAudioUnitParameterUnit_Decibels"] = @13UL;
	context[@"kAudioUnitParameterUnit_LinearGain"] = @14UL;
	context[@"kAudioUnitParameterUnit_Degrees"] = @15UL;
	context[@"kAudioUnitParameterUnit_EqualPowerCrossfade"] = @16UL;
	context[@"kAudioUnitParameterUnit_MixerFaderCurve1"] = @17UL;
	context[@"kAudioUnitParameterUnit_Pan"] = @18UL;
	context[@"kAudioUnitParameterUnit_Meters"] = @19UL;
	context[@"kAudioUnitParameterUnit_AbsoluteCents"] = @20UL;
	context[@"kAudioUnitParameterUnit_Octaves"] = @21UL;
	context[@"kAudioUnitParameterUnit_BPM"] = @22UL;
	context[@"kAudioUnitParameterUnit_Beats"] = @23UL;
	context[@"kAudioUnitParameterUnit_Milliseconds"] = @24UL;
	context[@"kAudioUnitParameterUnit_Ratio"] = @25UL;
	context[@"kAudioUnitParameterUnit_CustomUnit"] = @26UL;

	context[@"kAudioUnitParameterFlag_CFNameRelease"] = @16UL;
	context[@"kAudioUnitParameterFlag_OmitFromPresets"] = @8192UL;
	context[@"kAudioUnitParameterFlag_PlotHistory"] = @16384UL;
	context[@"kAudioUnitParameterFlag_MeterReadOnly"] = @32768UL;
	context[@"kAudioUnitParameterFlag_DisplayMask"] = @4653056UL;
	context[@"kAudioUnitParameterFlag_DisplaySquareRoot"] = @65536UL;
	context[@"kAudioUnitParameterFlag_DisplaySquared"] = @131072UL;
	context[@"kAudioUnitParameterFlag_DisplayCubed"] = @196608UL;
	context[@"kAudioUnitParameterFlag_DisplayCubeRoot"] = @262144UL;
	context[@"kAudioUnitParameterFlag_DisplayExponential"] = @327680UL;
	context[@"kAudioUnitParameterFlag_HasClump"] = @1048576UL;
	context[@"kAudioUnitParameterFlag_ValuesHaveStrings"] = @2097152UL;
	context[@"kAudioUnitParameterFlag_DisplayLogarithmic"] = @4194304UL;
	context[@"kAudioUnitParameterFlag_IsHighResolution"] = @8388608UL;
	context[@"kAudioUnitParameterFlag_NonRealTime"] = @16777216UL;
	context[@"kAudioUnitParameterFlag_CanRamp"] = @33554432UL;
	context[@"kAudioUnitParameterFlag_ExpertMode"] = @67108864UL;
	context[@"kAudioUnitParameterFlag_HasCFNameString"] = @134217728UL;
	context[@"kAudioUnitParameterFlag_IsGlobalMeta"] = @268435456UL;
	context[@"kAudioUnitParameterFlag_IsElementMeta"] = @536870912UL;
	context[@"kAudioUnitParameterFlag_IsReadable"] = @1073741824UL;
	context[@"kAudioUnitParameterFlag_IsWritable"] = @-2147483648UL;

	context[@"kAudioUnitClumpID_System"] = @0;

	context[@"kAudioUnitParameterName_Full"] = @-1;

	context[@"kAudioUnitRemoteControlEvent_TogglePlayPause"] = @1UL;
	context[@"kAudioUnitRemoteControlEvent_ToggleRecord"] = @2UL;
	context[@"kAudioUnitRemoteControlEvent_Rewind"] = @3UL;

	context[@"kAudioUnitProperty_SampleRateConverterComplexity"] = @3014UL;

	context[@"kAudioUnitSampleRateConverterComplexity_Linear"] = @1818848869UL;
	context[@"kAudioUnitSampleRateConverterComplexity_Normal"] = @1852797549UL;
	context[@"kAudioUnitSampleRateConverterComplexity_Mastering"] = @1650553971UL;

	context[@"kAudioOutputUnitProperty_CurrentDevice"] = @2000UL;
	context[@"kAudioOutputUnitProperty_IsRunning"] = @2001UL;
	context[@"kAudioOutputUnitProperty_ChannelMap"] = @2002UL;
	context[@"kAudioOutputUnitProperty_EnableIO"] = @2003UL;
	context[@"kAudioOutputUnitProperty_StartTime"] = @2004UL;
	context[@"kAudioOutputUnitProperty_SetInputCallback"] = @2005UL;
	context[@"kAudioOutputUnitProperty_HasIO"] = @2006UL;
	context[@"kAudioOutputUnitProperty_StartTimestampsAtZero"] = @2007UL;
	context[@"kAudioOutputUnitProperty_OSWorkgroup"] = @2015UL;

	context[@"kAudioOutputUnitProperty_MIDICallbacks"] = @2010UL;
	context[@"kAudioOutputUnitProperty_HostReceivesRemoteControlEvents"] = @2011UL;
	context[@"kAudioOutputUnitProperty_RemoteControlToHost"] = @2012UL;
	context[@"kAudioOutputUnitProperty_HostTransportState"] = @2013UL;
	context[@"kAudioOutputUnitProperty_NodeComponentDescription"] = @2014UL;

	context[@"kAUVoiceIOProperty_BypassVoiceProcessing"] = @2100UL;
	context[@"kAUVoiceIOProperty_VoiceProcessingEnableAGC"] = @2101UL;
	context[@"kAUVoiceIOProperty_MuteOutput"] = @2104UL;

	context[@"kAUVoiceIOProperty_DuckNonVoiceAudio"] = @2102UL;

	context[@"kAUVoiceIOProperty_VoiceProcessingQuality"] = @2103UL;

	context[@"kAUNBandEQProperty_NumberOfBands"] = @2200UL;
	context[@"kAUNBandEQProperty_MaxNumberOfBands"] = @2201UL;
	context[@"kAUNBandEQProperty_BiquadCoefficients"] = @2203UL;

	context[@"kAudioUnitProperty_MeteringMode"] = @3007UL;
	context[@"kAudioUnitProperty_MatrixLevels"] = @3006UL;
	context[@"kAudioUnitProperty_MatrixDimensions"] = @3009UL;
	context[@"kAudioUnitProperty_MeterClipping"] = @3011UL;
	context[@"kAudioUnitProperty_InputAnchorTimeStamp"] = @3016UL;

	context[@"kAudioUnitProperty_ReverbRoomType"] = @10UL;
	context[@"kAudioUnitProperty_UsesInternalReverb"] = @1005UL;
	context[@"kAudioUnitProperty_SpatializationAlgorithm"] = @3000UL;
	context[@"kAudioUnitProperty_SpatialMixerRenderingFlags"] = @3003UL;
	context[@"kAudioUnitProperty_SpatialMixerSourceMode"] = @3005UL;
	context[@"kAudioUnitProperty_SpatialMixerDistanceParams"] = @3010UL;
	context[@"kAudioUnitProperty_SpatialMixerAttenuationCurve"] = @3013UL;
	context[@"kAudioUnitProperty_SpatialMixerOutputType"] = @3100UL;
	context[@"kAudioUnitProperty_SpatialMixerPointSourceInHeadMode"] = @3103UL;

	context[@"kSpatializationAlgorithm_EqualPowerPanning"] = @0UL;
	context[@"kSpatializationAlgorithm_SphericalHead"] = @1UL;
	context[@"kSpatializationAlgorithm_HRTF"] = @2UL;
	context[@"kSpatializationAlgorithm_SoundField"] = @3UL;
	context[@"kSpatializationAlgorithm_VectorBasedPanning"] = @4UL;
	context[@"kSpatializationAlgorithm_StereoPassThrough"] = @5UL;
	context[@"kSpatializationAlgorithm_HRTFHQ"] = @6UL;
	context[@"kSpatializationAlgorithm_UseOutputType"] = @7UL;

	context[@"kSpatialMixerSourceMode_SpatializeIfMono"] = @0UL;
	context[@"kSpatialMixerSourceMode_Bypass"] = @1UL;
	context[@"kSpatialMixerSourceMode_PointSource"] = @2UL;
	context[@"kSpatialMixerSourceMode_AmbienceBed"] = @3UL;

	context[@"kReverbRoomType_SmallRoom"] = @0UL;
	context[@"kReverbRoomType_MediumRoom"] = @1UL;
	context[@"kReverbRoomType_LargeRoom"] = @2UL;
	context[@"kReverbRoomType_MediumHall"] = @3UL;
	context[@"kReverbRoomType_LargeHall"] = @4UL;
	context[@"kReverbRoomType_Plate"] = @5UL;
	context[@"kReverbRoomType_MediumChamber"] = @6UL;
	context[@"kReverbRoomType_LargeChamber"] = @7UL;
	context[@"kReverbRoomType_Cathedral"] = @8UL;
	context[@"kReverbRoomType_LargeRoom2"] = @9UL;
	context[@"kReverbRoomType_MediumHall2"] = @10UL;
	context[@"kReverbRoomType_MediumHall3"] = @11UL;
	context[@"kReverbRoomType_LargeHall2"] = @12UL;

	context[@"kSpatialMixerAttenuationCurve_Power"] = @0UL;
	context[@"kSpatialMixerAttenuationCurve_Exponential"] = @1UL;
	context[@"kSpatialMixerAttenuationCurve_Inverse"] = @2UL;
	context[@"kSpatialMixerAttenuationCurve_Linear"] = @3UL;

	context[@"kSpatialMixerRenderingFlags_InterAuralDelay"] = @1UL;
	context[@"kSpatialMixerRenderingFlags_DistanceAttenuation"] = @4UL;

	context[@"kSpatialMixerOutputType_Headphones"] = @1UL;
	context[@"kSpatialMixerOutputType_BuiltInSpeakers"] = @2UL;
	context[@"kSpatialMixerOutputType_ExternalSpeakers"] = @3UL;

	context[@"kSpatialMixerPointSourceInHeadMode_Mono"] = @0UL;
	context[@"kSpatialMixerPointSourceInHeadMode_Bypass"] = @1UL;

	context[@"kAudioUnitProperty_3DMixerDistanceParams"] = @3010UL;
	context[@"kAudioUnitProperty_3DMixerAttenuationCurve"] = @3013UL;
	context[@"kAudioUnitProperty_DopplerShift"] = @3002UL;
	context[@"kAudioUnitProperty_3DMixerRenderingFlags"] = @3003UL;
	context[@"kAudioUnitProperty_3DMixerDistanceAtten"] = @3004UL;
	context[@"kAudioUnitProperty_ReverbPreset"] = @3012UL;

	context[@"k3DMixerRenderingFlags_InterAuralDelay"] = @1UL;
	context[@"k3DMixerRenderingFlags_DopplerShift"] = @2UL;
	context[@"k3DMixerRenderingFlags_DistanceAttenuation"] = @4UL;
	context[@"k3DMixerRenderingFlags_DistanceFilter"] = @8UL;
	context[@"k3DMixerRenderingFlags_DistanceDiffusion"] = @16UL;
	context[@"k3DMixerRenderingFlags_LinearDistanceAttenuation"] = @32UL;
	context[@"k3DMixerRenderingFlags_ConstantReverbBlend"] = @64UL;

	context[@"k3DMixerAttenuationCurve_Power"] = @0UL;
	context[@"k3DMixerAttenuationCurve_Exponential"] = @1UL;
	context[@"k3DMixerAttenuationCurve_Inverse"] = @2UL;
	context[@"k3DMixerAttenuationCurve_Linear"] = @3UL;

	context[@"kAudioUnitProperty_ScheduleAudioSlice"] = @3300UL;
	context[@"kAudioUnitProperty_ScheduleStartTimeStamp"] = @3301UL;
	context[@"kAudioUnitProperty_CurrentPlayTime"] = @3302UL;

	context[@"kScheduledAudioSliceFlag_Complete"] = @1UL;
	context[@"kScheduledAudioSliceFlag_BeganToRender"] = @2UL;
	context[@"kScheduledAudioSliceFlag_BeganToRenderLate"] = @4UL;
	context[@"kScheduledAudioSliceFlag_Loop"] = @8UL;
	context[@"kScheduledAudioSliceFlag_Interrupt"] = @16UL;
	context[@"kScheduledAudioSliceFlag_InterruptAtLoop"] = @32UL;

	context[@"kAudioUnitProperty_ScheduledFileIDs"] = @3310UL;
	context[@"kAudioUnitProperty_ScheduledFileRegion"] = @3311UL;
	context[@"kAudioUnitProperty_ScheduledFilePrime"] = @3312UL;
	context[@"kAudioUnitProperty_ScheduledFileBufferSizeFrames"] = @3313UL;
	context[@"kAudioUnitProperty_ScheduledFileNumberBuffers"] = @3314UL;

	context[@"kMusicDeviceProperty_InstrumentName"] = @1001UL;
	context[@"kMusicDeviceProperty_InstrumentNumber"] = @1004UL;

	context[@"kMusicDeviceProperty_InstrumentCount"] = @1000UL;
	context[@"kMusicDeviceProperty_BankName"] = @1007UL;
	context[@"kMusicDeviceProperty_SoundBankURL"] = @1100UL;

	context[@"kAUMIDISynthProperty_EnablePreload"] = @4119UL;

	context[@"kAUSamplerProperty_LoadInstrument"] = @4102UL;
	context[@"kAUSamplerProperty_LoadAudioFiles"] = @4101UL;

	context[@"kInstrumentType_DLSPreset"] = @1;
	context[@"kInstrumentType_SF2Preset"] = @1;
	context[@"kInstrumentType_AUPreset"] = @2;
	context[@"kInstrumentType_Audiofile"] = @3;
	context[@"kInstrumentType_EXS24"] = @4;

	context[@"kAUSampler_DefaultPercussionBankMSB"] = @120;
	context[@"kAUSampler_DefaultMelodicBankMSB"] = @121;
	context[@"kAUSampler_DefaultBankLSB"] = @0;

	context[@"kAudioUnitProperty_DeferredRendererPullSize"] = @3320UL;
	context[@"kAudioUnitProperty_DeferredRendererExtraLatency"] = @3321UL;
	context[@"kAudioUnitProperty_DeferredRendererWaitFrames"] = @3322UL;

	context[@"kAUSamplerProperty_LoadPresetFromBank"] = @4100UL;
	context[@"kAUSamplerProperty_BankAndPreset"] = @4100UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioUnitProperties_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
