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
		(AudioUnitScope) [self[@"mScope"] toUInt32],
		(AudioUnitParameterID) [self[@"mParameterID"] toUInt32],
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
		(UInt32) [self[@"mFlags"] toUInt32],
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
	context[@"kAudioUnitScope_Global"] = @0U;
	context[@"kAudioUnitScope_Input"] = @1U;
	context[@"kAudioUnitScope_Output"] = @2U;
	context[@"kAudioUnitScope_Group"] = @3U;
	context[@"kAudioUnitScope_Part"] = @4U;
	context[@"kAudioUnitScope_Note"] = @5U;
	context[@"kAudioUnitScope_Layer"] = @6U;
	context[@"kAudioUnitScope_LayerItem"] = @7U;

	context[@"kAudioUnitProperty_ClassInfo"] = @0U;
	context[@"kAudioUnitProperty_MakeConnection"] = @1U;
	context[@"kAudioUnitProperty_SampleRate"] = @2U;
	context[@"kAudioUnitProperty_ParameterList"] = @3U;
	context[@"kAudioUnitProperty_ParameterInfo"] = @4U;
	context[@"kAudioUnitProperty_CPULoad"] = @6U;
	context[@"kAudioUnitProperty_StreamFormat"] = @8U;
	context[@"kAudioUnitProperty_ElementCount"] = @11U;
	context[@"kAudioUnitProperty_Latency"] = @12U;
	context[@"kAudioUnitProperty_SupportedNumChannels"] = @13U;
	context[@"kAudioUnitProperty_MaximumFramesPerSlice"] = @14U;
	context[@"kAudioUnitProperty_ParameterValueStrings"] = @16U;
	context[@"kAudioUnitProperty_AudioChannelLayout"] = @19U;
	context[@"kAudioUnitProperty_TailTime"] = @20U;
	context[@"kAudioUnitProperty_BypassEffect"] = @21U;
	context[@"kAudioUnitProperty_LastRenderError"] = @22U;
	context[@"kAudioUnitProperty_SetRenderCallback"] = @23U;
	context[@"kAudioUnitProperty_FactoryPresets"] = @24U;
	context[@"kAudioUnitProperty_RenderQuality"] = @26U;
	context[@"kAudioUnitProperty_HostCallbacks"] = @27U;
	context[@"kAudioUnitProperty_InPlaceProcessing"] = @29U;
	context[@"kAudioUnitProperty_ElementName"] = @30U;
	context[@"kAudioUnitProperty_SupportedChannelLayoutTags"] = @32U;
	context[@"kAudioUnitProperty_PresentPreset"] = @36U;
	context[@"kAudioUnitProperty_DependentParameters"] = @45U;
	context[@"kAudioUnitProperty_InputSamplesInOutput"] = @49U;
	context[@"kAudioUnitProperty_ShouldAllocateBuffer"] = @51U;
	context[@"kAudioUnitProperty_FrequencyResponse"] = @52U;
	context[@"kAudioUnitProperty_ParameterHistoryInfo"] = @53U;
	context[@"kAudioUnitProperty_NickName"] = @54U;
	context[@"kAudioUnitProperty_OfflineRender"] = @37U;
	context[@"kAudioUnitProperty_ParameterIDName"] = @34U;
	context[@"kAudioUnitProperty_ParameterStringFromValue"] = @33U;
	context[@"kAudioUnitProperty_ParameterClumpName"] = @35U;
	context[@"kAudioUnitProperty_ParameterValueFromString"] = @38U;
	context[@"kAudioUnitProperty_ContextName"] = @25U;
	context[@"kAudioUnitProperty_PresentationLatency"] = @40U;
	context[@"kAudioUnitProperty_ClassInfoFromDocument"] = @50U;
	context[@"kAudioUnitProperty_RequestViewController"] = @56U;
	context[@"kAudioUnitProperty_ParametersForOverview"] = @57U;
	context[@"kAudioUnitProperty_SupportsMPE"] = @58U;
	context[@"kAudioUnitProperty_RenderContextObserver"] = @60U;
	context[@"kAudioUnitProperty_MIDIOutputCallbackInfo"] = @47U;
	context[@"kAudioUnitProperty_MIDIOutputCallback"] = @48U;

	context[@"kAudioUnitProperty_RemoteControlEventListener"] = @100U;
	context[@"kAudioUnitProperty_IsInterAppConnected"] = @101U;
	context[@"kAudioUnitProperty_PeerURL"] = @102U;

	context[@"kRenderQuality_Max"] = @127;
	context[@"kRenderQuality_High"] = @96;
	context[@"kRenderQuality_Medium"] = @64;
	context[@"kRenderQuality_Low"] = @32;
	context[@"kRenderQuality_Min"] = @0;

	context[@"kNumberOfResponseFrequencies"] = @1024;

	context[@"kAudioUnitParameterUnit_Generic"] = @0U;
	context[@"kAudioUnitParameterUnit_Indexed"] = @1U;
	context[@"kAudioUnitParameterUnit_Boolean"] = @2U;
	context[@"kAudioUnitParameterUnit_Percent"] = @3U;
	context[@"kAudioUnitParameterUnit_Seconds"] = @4U;
	context[@"kAudioUnitParameterUnit_SampleFrames"] = @5U;
	context[@"kAudioUnitParameterUnit_Phase"] = @6U;
	context[@"kAudioUnitParameterUnit_Rate"] = @7U;
	context[@"kAudioUnitParameterUnit_Hertz"] = @8U;
	context[@"kAudioUnitParameterUnit_Cents"] = @9U;
	context[@"kAudioUnitParameterUnit_RelativeSemiTones"] = @10U;
	context[@"kAudioUnitParameterUnit_MIDINoteNumber"] = @11U;
	context[@"kAudioUnitParameterUnit_MIDIController"] = @12U;
	context[@"kAudioUnitParameterUnit_Decibels"] = @13U;
	context[@"kAudioUnitParameterUnit_LinearGain"] = @14U;
	context[@"kAudioUnitParameterUnit_Degrees"] = @15U;
	context[@"kAudioUnitParameterUnit_EqualPowerCrossfade"] = @16U;
	context[@"kAudioUnitParameterUnit_MixerFaderCurve1"] = @17U;
	context[@"kAudioUnitParameterUnit_Pan"] = @18U;
	context[@"kAudioUnitParameterUnit_Meters"] = @19U;
	context[@"kAudioUnitParameterUnit_AbsoluteCents"] = @20U;
	context[@"kAudioUnitParameterUnit_Octaves"] = @21U;
	context[@"kAudioUnitParameterUnit_BPM"] = @22U;
	context[@"kAudioUnitParameterUnit_Beats"] = @23U;
	context[@"kAudioUnitParameterUnit_Milliseconds"] = @24U;
	context[@"kAudioUnitParameterUnit_Ratio"] = @25U;
	context[@"kAudioUnitParameterUnit_CustomUnit"] = @26U;

	context[@"kAudioUnitParameterFlag_CFNameRelease"] = @16U;
	context[@"kAudioUnitParameterFlag_OmitFromPresets"] = @8192U;
	context[@"kAudioUnitParameterFlag_PlotHistory"] = @16384U;
	context[@"kAudioUnitParameterFlag_MeterReadOnly"] = @32768U;
	context[@"kAudioUnitParameterFlag_DisplayMask"] = @4653056U;
	context[@"kAudioUnitParameterFlag_DisplaySquareRoot"] = @65536U;
	context[@"kAudioUnitParameterFlag_DisplaySquared"] = @131072U;
	context[@"kAudioUnitParameterFlag_DisplayCubed"] = @196608U;
	context[@"kAudioUnitParameterFlag_DisplayCubeRoot"] = @262144U;
	context[@"kAudioUnitParameterFlag_DisplayExponential"] = @327680U;
	context[@"kAudioUnitParameterFlag_HasClump"] = @1048576U;
	context[@"kAudioUnitParameterFlag_ValuesHaveStrings"] = @2097152U;
	context[@"kAudioUnitParameterFlag_DisplayLogarithmic"] = @4194304U;
	context[@"kAudioUnitParameterFlag_IsHighResolution"] = @8388608U;
	context[@"kAudioUnitParameterFlag_NonRealTime"] = @16777216U;
	context[@"kAudioUnitParameterFlag_CanRamp"] = @33554432U;
	context[@"kAudioUnitParameterFlag_ExpertMode"] = @67108864U;
	context[@"kAudioUnitParameterFlag_HasCFNameString"] = @134217728U;
	context[@"kAudioUnitParameterFlag_IsGlobalMeta"] = @268435456U;
	context[@"kAudioUnitParameterFlag_IsElementMeta"] = @536870912U;
	context[@"kAudioUnitParameterFlag_IsReadable"] = @1073741824U;
	context[@"kAudioUnitParameterFlag_IsWritable"] = @-2147483648U;

	context[@"kAudioUnitClumpID_System"] = @0;

	context[@"kAudioUnitParameterName_Full"] = @-1;

	context[@"kAudioUnitRemoteControlEvent_TogglePlayPause"] = @1U;
	context[@"kAudioUnitRemoteControlEvent_ToggleRecord"] = @2U;
	context[@"kAudioUnitRemoteControlEvent_Rewind"] = @3U;

	context[@"kAudioUnitProperty_SampleRateConverterComplexity"] = @3014U;

	context[@"kAudioUnitSampleRateConverterComplexity_Linear"] = @1818848869U;
	context[@"kAudioUnitSampleRateConverterComplexity_Normal"] = @1852797549U;
	context[@"kAudioUnitSampleRateConverterComplexity_Mastering"] = @1650553971U;

	context[@"kAudioOutputUnitProperty_CurrentDevice"] = @2000U;
	context[@"kAudioOutputUnitProperty_IsRunning"] = @2001U;
	context[@"kAudioOutputUnitProperty_ChannelMap"] = @2002U;
	context[@"kAudioOutputUnitProperty_EnableIO"] = @2003U;
	context[@"kAudioOutputUnitProperty_StartTime"] = @2004U;
	context[@"kAudioOutputUnitProperty_SetInputCallback"] = @2005U;
	context[@"kAudioOutputUnitProperty_HasIO"] = @2006U;
	context[@"kAudioOutputUnitProperty_StartTimestampsAtZero"] = @2007U;
	context[@"kAudioOutputUnitProperty_OSWorkgroup"] = @2015U;

	context[@"kAudioOutputUnitProperty_MIDICallbacks"] = @2010U;
	context[@"kAudioOutputUnitProperty_HostReceivesRemoteControlEvents"] = @2011U;
	context[@"kAudioOutputUnitProperty_RemoteControlToHost"] = @2012U;
	context[@"kAudioOutputUnitProperty_HostTransportState"] = @2013U;
	context[@"kAudioOutputUnitProperty_NodeComponentDescription"] = @2014U;

	context[@"kAUVoiceIOProperty_BypassVoiceProcessing"] = @2100U;
	context[@"kAUVoiceIOProperty_VoiceProcessingEnableAGC"] = @2101U;
	context[@"kAUVoiceIOProperty_MuteOutput"] = @2104U;

	context[@"kAUVoiceIOProperty_DuckNonVoiceAudio"] = @2102U;

	context[@"kAUVoiceIOProperty_VoiceProcessingQuality"] = @2103U;

	context[@"kAUNBandEQProperty_NumberOfBands"] = @2200U;
	context[@"kAUNBandEQProperty_MaxNumberOfBands"] = @2201U;
	context[@"kAUNBandEQProperty_BiquadCoefficients"] = @2203U;

	context[@"kAudioUnitProperty_MeteringMode"] = @3007U;
	context[@"kAudioUnitProperty_MatrixLevels"] = @3006U;
	context[@"kAudioUnitProperty_MatrixDimensions"] = @3009U;
	context[@"kAudioUnitProperty_MeterClipping"] = @3011U;
	context[@"kAudioUnitProperty_InputAnchorTimeStamp"] = @3016U;

	context[@"kAudioUnitProperty_ReverbRoomType"] = @10U;
	context[@"kAudioUnitProperty_UsesInternalReverb"] = @1005U;
	context[@"kAudioUnitProperty_SpatializationAlgorithm"] = @3000U;
	context[@"kAudioUnitProperty_SpatialMixerRenderingFlags"] = @3003U;
	context[@"kAudioUnitProperty_SpatialMixerSourceMode"] = @3005U;
	context[@"kAudioUnitProperty_SpatialMixerDistanceParams"] = @3010U;
	context[@"kAudioUnitProperty_SpatialMixerAttenuationCurve"] = @3013U;
	context[@"kAudioUnitProperty_SpatialMixerOutputType"] = @3100U;
	context[@"kAudioUnitProperty_SpatialMixerPointSourceInHeadMode"] = @3103U;

	context[@"kSpatializationAlgorithm_EqualPowerPanning"] = @0U;
	context[@"kSpatializationAlgorithm_SphericalHead"] = @1U;
	context[@"kSpatializationAlgorithm_HRTF"] = @2U;
	context[@"kSpatializationAlgorithm_SoundField"] = @3U;
	context[@"kSpatializationAlgorithm_VectorBasedPanning"] = @4U;
	context[@"kSpatializationAlgorithm_StereoPassThrough"] = @5U;
	context[@"kSpatializationAlgorithm_HRTFHQ"] = @6U;
	context[@"kSpatializationAlgorithm_UseOutputType"] = @7U;

	context[@"kSpatialMixerSourceMode_SpatializeIfMono"] = @0U;
	context[@"kSpatialMixerSourceMode_Bypass"] = @1U;
	context[@"kSpatialMixerSourceMode_PointSource"] = @2U;
	context[@"kSpatialMixerSourceMode_AmbienceBed"] = @3U;

	context[@"kReverbRoomType_SmallRoom"] = @0U;
	context[@"kReverbRoomType_MediumRoom"] = @1U;
	context[@"kReverbRoomType_LargeRoom"] = @2U;
	context[@"kReverbRoomType_MediumHall"] = @3U;
	context[@"kReverbRoomType_LargeHall"] = @4U;
	context[@"kReverbRoomType_Plate"] = @5U;
	context[@"kReverbRoomType_MediumChamber"] = @6U;
	context[@"kReverbRoomType_LargeChamber"] = @7U;
	context[@"kReverbRoomType_Cathedral"] = @8U;
	context[@"kReverbRoomType_LargeRoom2"] = @9U;
	context[@"kReverbRoomType_MediumHall2"] = @10U;
	context[@"kReverbRoomType_MediumHall3"] = @11U;
	context[@"kReverbRoomType_LargeHall2"] = @12U;

	context[@"kSpatialMixerAttenuationCurve_Power"] = @0U;
	context[@"kSpatialMixerAttenuationCurve_Exponential"] = @1U;
	context[@"kSpatialMixerAttenuationCurve_Inverse"] = @2U;
	context[@"kSpatialMixerAttenuationCurve_Linear"] = @3U;

	context[@"kSpatialMixerRenderingFlags_InterAuralDelay"] = @1U;
	context[@"kSpatialMixerRenderingFlags_DistanceAttenuation"] = @4U;

	context[@"kSpatialMixerOutputType_Headphones"] = @1U;
	context[@"kSpatialMixerOutputType_BuiltInSpeakers"] = @2U;
	context[@"kSpatialMixerOutputType_ExternalSpeakers"] = @3U;

	context[@"kSpatialMixerPointSourceInHeadMode_Mono"] = @0U;
	context[@"kSpatialMixerPointSourceInHeadMode_Bypass"] = @1U;

	context[@"kAudioUnitProperty_3DMixerDistanceParams"] = @3010U;
	context[@"kAudioUnitProperty_3DMixerAttenuationCurve"] = @3013U;
	context[@"kAudioUnitProperty_DopplerShift"] = @3002U;
	context[@"kAudioUnitProperty_3DMixerRenderingFlags"] = @3003U;
	context[@"kAudioUnitProperty_3DMixerDistanceAtten"] = @3004U;
	context[@"kAudioUnitProperty_ReverbPreset"] = @3012U;

	context[@"k3DMixerRenderingFlags_InterAuralDelay"] = @1U;
	context[@"k3DMixerRenderingFlags_DopplerShift"] = @2U;
	context[@"k3DMixerRenderingFlags_DistanceAttenuation"] = @4U;
	context[@"k3DMixerRenderingFlags_DistanceFilter"] = @8U;
	context[@"k3DMixerRenderingFlags_DistanceDiffusion"] = @16U;
	context[@"k3DMixerRenderingFlags_LinearDistanceAttenuation"] = @32U;
	context[@"k3DMixerRenderingFlags_ConstantReverbBlend"] = @64U;

	context[@"k3DMixerAttenuationCurve_Power"] = @0U;
	context[@"k3DMixerAttenuationCurve_Exponential"] = @1U;
	context[@"k3DMixerAttenuationCurve_Inverse"] = @2U;
	context[@"k3DMixerAttenuationCurve_Linear"] = @3U;

	context[@"kAudioUnitProperty_ScheduleAudioSlice"] = @3300U;
	context[@"kAudioUnitProperty_ScheduleStartTimeStamp"] = @3301U;
	context[@"kAudioUnitProperty_CurrentPlayTime"] = @3302U;

	context[@"kScheduledAudioSliceFlag_Complete"] = @1U;
	context[@"kScheduledAudioSliceFlag_BeganToRender"] = @2U;
	context[@"kScheduledAudioSliceFlag_BeganToRenderLate"] = @4U;
	context[@"kScheduledAudioSliceFlag_Loop"] = @8U;
	context[@"kScheduledAudioSliceFlag_Interrupt"] = @16U;
	context[@"kScheduledAudioSliceFlag_InterruptAtLoop"] = @32U;

	context[@"kAudioUnitProperty_ScheduledFileIDs"] = @3310U;
	context[@"kAudioUnitProperty_ScheduledFileRegion"] = @3311U;
	context[@"kAudioUnitProperty_ScheduledFilePrime"] = @3312U;
	context[@"kAudioUnitProperty_ScheduledFileBufferSizeFrames"] = @3313U;
	context[@"kAudioUnitProperty_ScheduledFileNumberBuffers"] = @3314U;

	context[@"kMusicDeviceProperty_InstrumentName"] = @1001U;
	context[@"kMusicDeviceProperty_InstrumentNumber"] = @1004U;

	context[@"kMusicDeviceProperty_InstrumentCount"] = @1000U;
	context[@"kMusicDeviceProperty_BankName"] = @1007U;
	context[@"kMusicDeviceProperty_SoundBankURL"] = @1100U;

	context[@"kAUMIDISynthProperty_EnablePreload"] = @4119U;

	context[@"kAUSamplerProperty_LoadInstrument"] = @4102U;
	context[@"kAUSamplerProperty_LoadAudioFiles"] = @4101U;

	context[@"kInstrumentType_DLSPreset"] = @1;
	context[@"kInstrumentType_SF2Preset"] = @1;
	context[@"kInstrumentType_AUPreset"] = @2;
	context[@"kInstrumentType_Audiofile"] = @3;
	context[@"kInstrumentType_EXS24"] = @4;

	context[@"kAUSampler_DefaultPercussionBankMSB"] = @120;
	context[@"kAUSampler_DefaultMelodicBankMSB"] = @121;
	context[@"kAUSampler_DefaultBankLSB"] = @0;

	context[@"kAudioUnitProperty_DeferredRendererPullSize"] = @3320U;
	context[@"kAudioUnitProperty_DeferredRendererExtraLatency"] = @3321U;
	context[@"kAudioUnitProperty_DeferredRendererWaitFrames"] = @3322U;

	context[@"kAUSamplerProperty_LoadPresetFromBank"] = @4100U;
	context[@"kAUSamplerProperty_BankAndPreset"] = @4100U;

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
