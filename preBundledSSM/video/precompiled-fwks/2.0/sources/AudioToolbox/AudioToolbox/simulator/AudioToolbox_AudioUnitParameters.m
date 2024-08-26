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
	context[@"kAUGroupParameterID_Volume"] = @7U;
	context[@"kAUGroupParameterID_Sustain"] = @64U;
	context[@"kAUGroupParameterID_Sostenuto"] = @66U;
	context[@"kAUGroupParameterID_AllNotesOff"] = @123U;
	context[@"kAUGroupParameterID_ModWheel"] = @1U;
	context[@"kAUGroupParameterID_PitchBend"] = @224U;
	context[@"kAUGroupParameterID_AllSoundOff"] = @120U;
	context[@"kAUGroupParameterID_ResetAllControllers"] = @121U;
	context[@"kAUGroupParameterID_Pan"] = @10U;
	context[@"kAUGroupParameterID_Foot"] = @4U;
	context[@"kAUGroupParameterID_ChannelPressure"] = @208U;
	context[@"kAUGroupParameterID_KeyPressure"] = @160U;
	context[@"kAUGroupParameterID_Expression"] = @11U;
	context[@"kAUGroupParameterID_DataEntry"] = @6U;
	context[@"kAUGroupParameterID_Volume_LSB"] = @39U;
	context[@"kAUGroupParameterID_ModWheel_LSB"] = @33U;
	context[@"kAUGroupParameterID_Pan_LSB"] = @42U;
	context[@"kAUGroupParameterID_Foot_LSB"] = @36U;
	context[@"kAUGroupParameterID_Expression_LSB"] = @43U;
	context[@"kAUGroupParameterID_DataEntry_LSB"] = @38U;
	context[@"kAUGroupParameterID_KeyPressure_FirstKey"] = @256U;
	context[@"kAUGroupParameterID_KeyPressure_LastKey"] = @383U;

	context[@"kSpatialMixerParam_Azimuth"] = @0U;
	context[@"kSpatialMixerParam_Elevation"] = @1U;
	context[@"kSpatialMixerParam_Distance"] = @2U;
	context[@"kSpatialMixerParam_Gain"] = @3U;
	context[@"kSpatialMixerParam_PlaybackRate"] = @4U;
	context[@"kSpatialMixerParam_Enable"] = @5U;
	context[@"kSpatialMixerParam_MinGain"] = @6U;
	context[@"kSpatialMixerParam_MaxGain"] = @7U;
	context[@"kSpatialMixerParam_ReverbBlend"] = @8U;
	context[@"kSpatialMixerParam_GlobalReverbGain"] = @9U;
	context[@"kSpatialMixerParam_OcclusionAttenuation"] = @10U;
	context[@"kSpatialMixerParam_ObstructionAttenuation"] = @11U;

	context[@"kReverbParam_FilterFrequency"] = @14U;
	context[@"kReverbParam_FilterBandwidth"] = @15U;
	context[@"kReverbParam_FilterGain"] = @16U;
	context[@"kReverbParam_FilterType"] = @17U;
	context[@"kReverbParam_FilterEnable"] = @18U;

	context[@"k3DMixerParam_Azimuth"] = @0U;
	context[@"k3DMixerParam_Elevation"] = @1U;
	context[@"k3DMixerParam_Distance"] = @2U;
	context[@"k3DMixerParam_Gain"] = @3U;
	context[@"k3DMixerParam_PlaybackRate"] = @4U;
	context[@"k3DMixerParam_Enable"] = @5U;
	context[@"k3DMixerParam_MinGain"] = @6U;
	context[@"k3DMixerParam_MaxGain"] = @7U;
	context[@"k3DMixerParam_ReverbBlend"] = @8U;
	context[@"k3DMixerParam_GlobalReverbGain"] = @9U;
	context[@"k3DMixerParam_OcclusionAttenuation"] = @10U;
	context[@"k3DMixerParam_ObstructionAttenuation"] = @11U;

	context[@"kMultiChannelMixerParam_Volume"] = @0U;
	context[@"kMultiChannelMixerParam_Enable"] = @1U;
	context[@"kMultiChannelMixerParam_Pan"] = @2U;
	context[@"kMultiChannelMixerParam_PreAveragePower"] = @1000U;
	context[@"kMultiChannelMixerParam_PrePeakHoldLevel"] = @2000U;
	context[@"kMultiChannelMixerParam_PostAveragePower"] = @3000U;
	context[@"kMultiChannelMixerParam_PostPeakHoldLevel"] = @4000U;

	context[@"kMatrixMixerParam_Volume"] = @0U;
	context[@"kMatrixMixerParam_Enable"] = @1U;
	context[@"kMatrixMixerParam_PreAveragePower"] = @1000U;
	context[@"kMatrixMixerParam_PrePeakHoldLevel"] = @2000U;
	context[@"kMatrixMixerParam_PostAveragePower"] = @3000U;
	context[@"kMatrixMixerParam_PostPeakHoldLevel"] = @4000U;
	context[@"kMatrixMixerParam_PreAveragePowerLinear"] = @5000U;
	context[@"kMatrixMixerParam_PrePeakHoldLevelLinear"] = @6000U;
	context[@"kMatrixMixerParam_PostAveragePowerLinear"] = @7000U;
	context[@"kMatrixMixerParam_PostPeakHoldLevelLinear"] = @8000U;

	context[@"kHALOutputParam_Volume"] = @14U;

	context[@"kTimePitchParam_Rate"] = @0U;

	context[@"kNewTimePitchParam_Rate"] = @0U;
	context[@"kNewTimePitchParam_Pitch"] = @1U;
	context[@"kNewTimePitchParam_Overlap"] = @4U;
	context[@"kNewTimePitchParam_EnablePeakLocking"] = @6U;

	context[@"kAUSamplerParam_Gain"] = @900U;
	context[@"kAUSamplerParam_CoarseTuning"] = @901U;
	context[@"kAUSamplerParam_FineTuning"] = @902U;
	context[@"kAUSamplerParam_Pan"] = @903U;

	context[@"kBandpassParam_CenterFrequency"] = @0U;
	context[@"kBandpassParam_Bandwidth"] = @1U;

	context[@"kHipassParam_CutoffFrequency"] = @0U;
	context[@"kHipassParam_Resonance"] = @1U;

	context[@"kLowPassParam_CutoffFrequency"] = @0U;
	context[@"kLowPassParam_Resonance"] = @1U;

	context[@"kHighShelfParam_CutOffFrequency"] = @0U;
	context[@"kHighShelfParam_Gain"] = @1U;

	context[@"kAULowShelfParam_CutoffFrequency"] = @0U;
	context[@"kAULowShelfParam_Gain"] = @1U;

	context[@"kParametricEQParam_CenterFreq"] = @0U;
	context[@"kParametricEQParam_Q"] = @1U;
	context[@"kParametricEQParam_Gain"] = @2U;

	context[@"kLimiterParam_AttackTime"] = @0U;
	context[@"kLimiterParam_DecayTime"] = @1U;
	context[@"kLimiterParam_PreGain"] = @2U;

	context[@"kDynamicsProcessorParam_Threshold"] = @0U;
	context[@"kDynamicsProcessorParam_HeadRoom"] = @1U;
	context[@"kDynamicsProcessorParam_ExpansionRatio"] = @2U;
	context[@"kDynamicsProcessorParam_ExpansionThreshold"] = @3U;
	context[@"kDynamicsProcessorParam_AttackTime"] = @4U;
	context[@"kDynamicsProcessorParam_ReleaseTime"] = @5U;
	context[@"kDynamicsProcessorParam_MasterGain"] = @6U;
	context[@"kDynamicsProcessorParam_CompressionAmount"] = @1000U;
	context[@"kDynamicsProcessorParam_InputAmplitude"] = @2000U;
	context[@"kDynamicsProcessorParam_OutputAmplitude"] = @3000U;

	context[@"kVarispeedParam_PlaybackRate"] = @0U;
	context[@"kVarispeedParam_PlaybackCents"] = @1U;

	context[@"kDistortionParam_Delay"] = @0U;
	context[@"kDistortionParam_Decay"] = @1U;
	context[@"kDistortionParam_DelayMix"] = @2U;
	context[@"kDistortionParam_Decimation"] = @3U;
	context[@"kDistortionParam_Rounding"] = @4U;
	context[@"kDistortionParam_DecimationMix"] = @5U;
	context[@"kDistortionParam_LinearTerm"] = @6U;
	context[@"kDistortionParam_SquaredTerm"] = @7U;
	context[@"kDistortionParam_CubicTerm"] = @8U;
	context[@"kDistortionParam_PolynomialMix"] = @9U;
	context[@"kDistortionParam_RingModFreq1"] = @10U;
	context[@"kDistortionParam_RingModFreq2"] = @11U;
	context[@"kDistortionParam_RingModBalance"] = @12U;
	context[@"kDistortionParam_RingModMix"] = @13U;
	context[@"kDistortionParam_SoftClipGain"] = @14U;
	context[@"kDistortionParam_FinalMix"] = @15U;

	context[@"kDelayParam_WetDryMix"] = @0U;
	context[@"kDelayParam_DelayTime"] = @1U;
	context[@"kDelayParam_Feedback"] = @2U;
	context[@"kDelayParam_LopassCutoff"] = @3U;

	context[@"kAUNBandEQParam_GlobalGain"] = @0U;
	context[@"kAUNBandEQParam_BypassBand"] = @1000U;
	context[@"kAUNBandEQParam_FilterType"] = @2000U;
	context[@"kAUNBandEQParam_Frequency"] = @3000U;
	context[@"kAUNBandEQParam_Gain"] = @4000U;
	context[@"kAUNBandEQParam_Bandwidth"] = @5000U;

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

	context[@"kRoundTripAACParam_Format"] = @0U;
	context[@"kRoundTripAACParam_EncodingStrategy"] = @1U;
	context[@"kRoundTripAACParam_RateOrQuality"] = @2U;

	context[@"kRandomParam_BoundA"] = @0U;
	context[@"kRandomParam_BoundB"] = @1U;
	context[@"kRandomParam_Curve"] = @2U;

	context[@"kReverb2Param_DryWetMix"] = @0U;
	context[@"kReverb2Param_Gain"] = @1U;
	context[@"kReverb2Param_MinDelayTime"] = @2U;
	context[@"kReverb2Param_MaxDelayTime"] = @3U;
	context[@"kReverb2Param_DecayTimeAt0Hz"] = @4U;
	context[@"kReverb2Param_DecayTimeAtNyquist"] = @5U;
	context[@"kReverb2Param_RandomizeReflections"] = @6U;

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
