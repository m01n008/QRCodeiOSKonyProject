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
	context[@"AVAudioQualityMin"] = @0L;
	context[@"AVAudioQualityLow"] = @32L;
	context[@"AVAudioQualityMedium"] = @64L;
	context[@"AVAudioQualityHigh"] = @96L;
	context[@"AVAudioQualityMax"] = @127L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVFormatIDKey;
	if (p != NULL) context[@"AVFormatIDKey"] = AVFormatIDKey;
	p = (void*) &AVSampleRateConverterAlgorithm_Normal;
	if (p != NULL) context[@"AVSampleRateConverterAlgorithm_Normal"] = AVSampleRateConverterAlgorithm_Normal;
	p = (void*) &AVAudioFileTypeKey;
	if (p != NULL) context[@"AVAudioFileTypeKey"] = AVAudioFileTypeKey;
	p = (void*) &AVLinearPCMIsFloatKey;
	if (p != NULL) context[@"AVLinearPCMIsFloatKey"] = AVLinearPCMIsFloatKey;
	p = (void*) &AVEncoderBitRatePerChannelKey;
	if (p != NULL) context[@"AVEncoderBitRatePerChannelKey"] = AVEncoderBitRatePerChannelKey;
	p = (void*) &AVSampleRateKey;
	if (p != NULL) context[@"AVSampleRateKey"] = AVSampleRateKey;
	p = (void*) &AVSampleRateConverterAlgorithm_MinimumPhase;
	if (p != NULL) context[@"AVSampleRateConverterAlgorithm_MinimumPhase"] = AVSampleRateConverterAlgorithm_MinimumPhase;
	p = (void*) &AVEncoderBitRateKey;
	if (p != NULL) context[@"AVEncoderBitRateKey"] = AVEncoderBitRateKey;
	p = (void*) &AVAudioBitRateStrategy_Variable;
	if (p != NULL) context[@"AVAudioBitRateStrategy_Variable"] = AVAudioBitRateStrategy_Variable;
	p = (void*) &AVEncoderBitDepthHintKey;
	if (p != NULL) context[@"AVEncoderBitDepthHintKey"] = AVEncoderBitDepthHintKey;
	p = (void*) &AVLinearPCMBitDepthKey;
	if (p != NULL) context[@"AVLinearPCMBitDepthKey"] = AVLinearPCMBitDepthKey;
	p = (void*) &AVAudioBitRateStrategy_VariableConstrained;
	if (p != NULL) context[@"AVAudioBitRateStrategy_VariableConstrained"] = AVAudioBitRateStrategy_VariableConstrained;
	p = (void*) &AVSampleRateConverterAlgorithmKey;
	if (p != NULL) context[@"AVSampleRateConverterAlgorithmKey"] = AVSampleRateConverterAlgorithmKey;
	p = (void*) &AVEncoderBitRateStrategyKey;
	if (p != NULL) context[@"AVEncoderBitRateStrategyKey"] = AVEncoderBitRateStrategyKey;
	p = (void*) &AVSampleRateConverterAlgorithm_Mastering;
	if (p != NULL) context[@"AVSampleRateConverterAlgorithm_Mastering"] = AVSampleRateConverterAlgorithm_Mastering;
	p = (void*) &AVAudioBitRateStrategy_Constant;
	if (p != NULL) context[@"AVAudioBitRateStrategy_Constant"] = AVAudioBitRateStrategy_Constant;
	p = (void*) &AVLinearPCMIsBigEndianKey;
	if (p != NULL) context[@"AVLinearPCMIsBigEndianKey"] = AVLinearPCMIsBigEndianKey;
	p = (void*) &AVSampleRateConverterAudioQualityKey;
	if (p != NULL) context[@"AVSampleRateConverterAudioQualityKey"] = AVSampleRateConverterAudioQualityKey;
	p = (void*) &AVEncoderAudioQualityKey;
	if (p != NULL) context[@"AVEncoderAudioQualityKey"] = AVEncoderAudioQualityKey;
	p = (void*) &AVLinearPCMIsNonInterleaved;
	if (p != NULL) context[@"AVLinearPCMIsNonInterleaved"] = AVLinearPCMIsNonInterleaved;
	p = (void*) &AVEncoderAudioQualityForVBRKey;
	if (p != NULL) context[@"AVEncoderAudioQualityForVBRKey"] = AVEncoderAudioQualityForVBRKey;
	p = (void*) &AVAudioBitRateStrategy_LongTermAverage;
	if (p != NULL) context[@"AVAudioBitRateStrategy_LongTermAverage"] = AVAudioBitRateStrategy_LongTermAverage;
	p = (void*) &AVChannelLayoutKey;
	if (p != NULL) context[@"AVChannelLayoutKey"] = AVChannelLayoutKey;
	p = (void*) &AVNumberOfChannelsKey;
	if (p != NULL) context[@"AVNumberOfChannelsKey"] = AVNumberOfChannelsKey;
}
void load_AVFoundation_AVFAudio_AVAudioSettings_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
