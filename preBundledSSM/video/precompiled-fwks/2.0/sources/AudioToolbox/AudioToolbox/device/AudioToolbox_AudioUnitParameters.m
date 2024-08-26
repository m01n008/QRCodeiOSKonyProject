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
	context[@"kAUGroupParameterID_Volume"] = @7UL;
	context[@"kAUGroupParameterID_Sustain"] = @64UL;
	context[@"kAUGroupParameterID_Sostenuto"] = @66UL;
	context[@"kAUGroupParameterID_AllNotesOff"] = @123UL;
	context[@"kAUGroupParameterID_ModWheel"] = @1UL;
	context[@"kAUGroupParameterID_PitchBend"] = @224UL;
	context[@"kAUGroupParameterID_AllSoundOff"] = @120UL;
	context[@"kAUGroupParameterID_ResetAllControllers"] = @121UL;
	context[@"kAUGroupParameterID_Pan"] = @10UL;
	context[@"kAUGroupParameterID_Foot"] = @4UL;
	context[@"kAUGroupParameterID_ChannelPressure"] = @208UL;
	context[@"kAUGroupParameterID_KeyPressure"] = @160UL;
	context[@"kAUGroupParameterID_Expression"] = @11UL;
	context[@"kAUGroupParameterID_DataEntry"] = @6UL;
	context[@"kAUGroupParameterID_Volume_LSB"] = @39UL;
	context[@"kAUGroupParameterID_ModWheel_LSB"] = @33UL;
	context[@"kAUGroupParameterID_Pan_LSB"] = @42UL;
	context[@"kAUGroupParameterID_Foot_LSB"] = @36UL;
	context[@"kAUGroupParameterID_Expression_LSB"] = @43UL;
	context[@"kAUGroupParameterID_DataEntry_LSB"] = @38UL;
	context[@"kAUGroupParameterID_KeyPressure_FirstKey"] = @256UL;
	context[@"kAUGroupParameterID_KeyPressure_LastKey"] = @383UL;

	context[@"kSpatialMixerParam_Azimuth"] = @0UL;
	context[@"kSpatialMixerParam_Elevation"] = @1UL;
	context[@"kSpatialMixerParam_Distance"] = @2UL;
	context[@"kSpatialMixerParam_Gain"] = @3UL;
	context[@"kSpatialMixerParam_PlaybackRate"] = @4UL;
	context[@"kSpatialMixerParam_Enable"] = @5UL;
	context[@"kSpatialMixerParam_MinGain"] = @6UL;
	context[@"kSpatialMixerParam_MaxGain"] = @7UL;
	context[@"kSpatialMixerParam_ReverbBlend"] = @8UL;
	context[@"kSpatialMixerParam_GlobalReverbGain"] = @9UL;
	context[@"kSpatialMixerParam_OcclusionAttenuation"] = @10UL;
	context[@"kSpatialMixerParam_ObstructionAttenuation"] = @11UL;

	context[@"kReverbParam_FilterFrequency"] = @14UL;
	context[@"kReverbParam_FilterBandwidth"] = @15UL;
	context[@"kReverbParam_FilterGain"] = @16UL;
	context[@"kReverbParam_FilterType"] = @17UL;
	context[@"kReverbParam_FilterEnable"] = @18UL;

	context[@"k3DMixerParam_Azimuth"] = @0UL;
	context[@"k3DMixerParam_Elevation"] = @1UL;
	context[@"k3DMixerParam_Distance"] = @2UL;
	context[@"k3DMixerParam_Gain"] = @3UL;
	context[@"k3DMixerParam_PlaybackRate"] = @4UL;
	context[@"k3DMixerParam_Enable"] = @5UL;
	context[@"k3DMixerParam_MinGain"] = @6UL;
	context[@"k3DMixerParam_MaxGain"] = @7UL;
	context[@"k3DMixerParam_ReverbBlend"] = @8UL;
	context[@"k3DMixerParam_GlobalReverbGain"] = @9UL;
	context[@"k3DMixerParam_OcclusionAttenuation"] = @10UL;
	context[@"k3DMixerParam_ObstructionAttenuation"] = @11UL;

	context[@"kMultiChannelMixerParam_Volume"] = @0UL;
	context[@"kMultiChannelMixerParam_Enable"] = @1UL;
	context[@"kMultiChannelMixerParam_Pan"] = @2UL;
	context[@"kMultiChannelMixerParam_PreAveragePower"] = @1000UL;
	context[@"kMultiChannelMixerParam_PrePeakHoldLevel"] = @2000UL;
	context[@"kMultiChannelMixerParam_PostAveragePower"] = @3000UL;
	context[@"kMultiChannelMixerParam_PostPeakHoldLevel"] = @4000UL;

	context[@"kMatrixMixerParam_Volume"] = @0UL;
	context[@"kMatrixMixerParam_Enable"] = @1UL;
	context[@"kMatrixMixerParam_PreAveragePower"] = @1000UL;
	context[@"kMatrixMixerParam_PrePeakHoldLevel"] = @2000UL;
	context[@"kMatrixMixerParam_PostAveragePower"] = @3000UL;
	context[@"kMatrixMixerParam_PostPeakHoldLevel"] = @4000UL;
	context[@"kMatrixMixerParam_PreAveragePowerLinear"] = @5000UL;
	context[@"kMatrixMixerParam_PrePeakHoldLevelLinear"] = @6000UL;
	context[@"kMatrixMixerParam_PostAveragePowerLinear"] = @7000UL;
	context[@"kMatrixMixerParam_PostPeakHoldLevelLinear"] = @8000UL;

	context[@"kHALOutputParam_Volume"] = @14UL;

	context[@"kTimePitchParam_Rate"] = @0UL;

	context[@"kNewTimePitchParam_Rate"] = @0UL;
	context[@"kNewTimePitchParam_Pitch"] = @1UL;
	context[@"kNewTimePitchParam_Overlap"] = @4UL;
	context[@"kNewTimePitchParam_EnablePeakLocking"] = @6UL;

	context[@"kAUSamplerParam_Gain"] = @900UL;
	context[@"kAUSamplerParam_CoarseTuning"] = @901UL;
	context[@"kAUSamplerParam_FineTuning"] = @902UL;
	context[@"kAUSamplerParam_Pan"] = @903UL;

	context[@"kBandpassParam_CenterFrequency"] = @0UL;
	context[@"kBandpassParam_Bandwidth"] = @1UL;

	context[@"kHipassParam_CutoffFrequency"] = @0UL;
	context[@"kHipassParam_Resonance"] = @1UL;

	context[@"kLowPassParam_CutoffFrequency"] = @0UL;
	context[@"kLowPassParam_Resonance"] = @1UL;

	context[@"kHighShelfParam_CutOffFrequency"] = @0UL;
	context[@"kHighShelfParam_Gain"] = @1UL;

	context[@"kAULowShelfParam_CutoffFrequency"] = @0UL;
	context[@"kAULowShelfParam_Gain"] = @1UL;

	context[@"kParametricEQParam_CenterFreq"] = @0UL;
	context[@"kParametricEQParam_Q"] = @1UL;
	context[@"kParametricEQParam_Gain"] = @2UL;

	context[@"kLimiterParam_AttackTime"] = @0UL;
	context[@"kLimiterParam_DecayTime"] = @1UL;
	context[@"kLimiterParam_PreGain"] = @2UL;

	context[@"kDynamicsProcessorParam_Threshold"] = @0UL;
	context[@"kDynamicsProcessorParam_HeadRoom"] = @1UL;
	context[@"kDynamicsProcessorParam_ExpansionRatio"] = @2UL;
	context[@"kDynamicsProcessorParam_ExpansionThreshold"] = @3UL;
	context[@"kDynamicsProcessorParam_AttackTime"] = @4UL;
	context[@"kDynamicsProcessorParam_ReleaseTime"] = @5UL;
	context[@"kDynamicsProcessorParam_MasterGain"] = @6UL;
	context[@"kDynamicsProcessorParam_CompressionAmount"] = @1000UL;
	context[@"kDynamicsProcessorParam_InputAmplitude"] = @2000UL;
	context[@"kDynamicsProcessorParam_OutputAmplitude"] = @3000UL;

	context[@"kVarispeedParam_PlaybackRate"] = @0UL;
	context[@"kVarispeedParam_PlaybackCents"] = @1UL;

	context[@"kDistortionParam_Delay"] = @0UL;
	context[@"kDistortionParam_Decay"] = @1UL;
	context[@"kDistortionParam_DelayMix"] = @2UL;
	context[@"kDistortionParam_Decimation"] = @3UL;
	context[@"kDistortionParam_Rounding"] = @4UL;
	context[@"kDistortionParam_DecimationMix"] = @5UL;
	context[@"kDistortionParam_LinearTerm"] = @6UL;
	context[@"kDistortionParam_SquaredTerm"] = @7UL;
	context[@"kDistortionParam_CubicTerm"] = @8UL;
	context[@"kDistortionParam_PolynomialMix"] = @9UL;
	context[@"kDistortionParam_RingModFreq1"] = @10UL;
	context[@"kDistortionParam_RingModFreq2"] = @11UL;
	context[@"kDistortionParam_RingModBalance"] = @12UL;
	context[@"kDistortionParam_RingModMix"] = @13UL;
	context[@"kDistortionParam_SoftClipGain"] = @14UL;
	context[@"kDistortionParam_FinalMix"] = @15UL;

	context[@"kDelayParam_WetDryMix"] = @0UL;
	context[@"kDelayParam_DelayTime"] = @1UL;
	context[@"kDelayParam_Feedback"] = @2UL;
	context[@"kDelayParam_LopassCutoff"] = @3UL;

	context[@"kAUNBandEQParam_GlobalGain"] = @0UL;
	context[@"kAUNBandEQParam_BypassBand"] = @1000UL;
	context[@"kAUNBandEQParam_FilterType"] = @2000UL;
	context[@"kAUNBandEQParam_Frequency"] = @3000UL;
	context[@"kAUNBandEQParam_Gain"] = @4000UL;
	context[@"kAUNBandEQParam_Bandwidth"] = @5000UL;

	context[@"kAUNBandEQFilterType_Parametric"] = @0L;
	context[@"kAUNBandEQFilterType_2ndOrderButterworthLowPass"] = @1L;
	context[@"kAUNBandEQFilterType_2ndOrderButterworthHighPass"] = @2L;
	context[@"kAUNBandEQFilterType_ResonantLowPass"] = @3L;
	context[@"kAUNBandEQFilterType_ResonantHighPass"] = @4L;
	context[@"kAUNBandEQFilterType_BandPass"] = @5L;
	context[@"kAUNBandEQFilterType_BandStop"] = @6L;
	context[@"kAUNBandEQFilterType_LowShelf"] = @7L;
	context[@"kAUNBandEQFilterType_HighShelf"] = @8L;
	context[@"kAUNBandEQFilterType_ResonantLowShelf"] = @9L;
	context[@"kAUNBandEQFilterType_ResonantHighShelf"] = @10L;
	context[@"kNumAUNBandEQFilterTypes"] = @11L;

	context[@"kRoundTripAACParam_Format"] = @0UL;
	context[@"kRoundTripAACParam_EncodingStrategy"] = @1UL;
	context[@"kRoundTripAACParam_RateOrQuality"] = @2UL;

	context[@"kRandomParam_BoundA"] = @0UL;
	context[@"kRandomParam_BoundB"] = @1UL;
	context[@"kRandomParam_Curve"] = @2UL;

	context[@"kReverb2Param_DryWetMix"] = @0UL;
	context[@"kReverb2Param_Gain"] = @1UL;
	context[@"kReverb2Param_MinDelayTime"] = @2UL;
	context[@"kReverb2Param_MaxDelayTime"] = @3UL;
	context[@"kReverb2Param_DecayTimeAt0Hz"] = @4UL;
	context[@"kReverb2Param_DecayTimeAtNyquist"] = @5UL;
	context[@"kReverb2Param_RandomizeReflections"] = @6UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioUnitParameters_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
