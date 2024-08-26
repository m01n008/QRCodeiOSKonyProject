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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVVideoCleanApertureHorizontalOffsetKey;
	if (p != NULL) context[@"AVVideoCleanApertureHorizontalOffsetKey"] = AVVideoCleanApertureHorizontalOffsetKey;
	p = (void*) &AVVideoApertureModeEncodedPixels;
	if (p != NULL) context[@"AVVideoApertureModeEncodedPixels"] = AVVideoApertureModeEncodedPixels;
	p = (void*) &AVVideoYCbCrMatrix_ITU_R_601_4;
	if (p != NULL) context[@"AVVideoYCbCrMatrix_ITU_R_601_4"] = AVVideoYCbCrMatrix_ITU_R_601_4;
	p = (void*) &AVVideoAllowFrameReorderingKey;
	if (p != NULL) context[@"AVVideoAllowFrameReorderingKey"] = AVVideoAllowFrameReorderingKey;
	p = (void*) &AVVideoProfileLevelH264Main41;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main41"] = AVVideoProfileLevelH264Main41;
	p = (void*) &AVVideoProfileLevelH264Baseline30;
	if (p != NULL) context[@"AVVideoProfileLevelH264Baseline30"] = AVVideoProfileLevelH264Baseline30;
	p = (void*) &AVVideoQualityKey;
	if (p != NULL) context[@"AVVideoQualityKey"] = AVVideoQualityKey;
	p = (void*) &AVVideoPixelAspectRatioKey;
	if (p != NULL) context[@"AVVideoPixelAspectRatioKey"] = AVVideoPixelAspectRatioKey;
	p = (void*) &AVVideoCompressionPropertiesKey;
	if (p != NULL) context[@"AVVideoCompressionPropertiesKey"] = AVVideoCompressionPropertiesKey;
	p = (void*) &AVVideoScalingModeResize;
	if (p != NULL) context[@"AVVideoScalingModeResize"] = AVVideoScalingModeResize;
	p = (void*) &AVVideoCodecTypeH264;
	if (p != NULL) context[@"AVVideoCodecTypeH264"] = AVVideoCodecTypeH264;
	p = (void*) &AVVideoH264EntropyModeCAVLC;
	if (p != NULL) context[@"AVVideoH264EntropyModeCAVLC"] = AVVideoH264EntropyModeCAVLC;
	p = (void*) &AVVideoPixelAspectRatioHorizontalSpacingKey;
	if (p != NULL) context[@"AVVideoPixelAspectRatioHorizontalSpacingKey"] = AVVideoPixelAspectRatioHorizontalSpacingKey;
	p = (void*) &AVVideoProfileLevelH264Baseline41;
	if (p != NULL) context[@"AVVideoProfileLevelH264Baseline41"] = AVVideoProfileLevelH264Baseline41;
	p = (void*) &AVVideoCodecTypeJPEG;
	if (p != NULL) context[@"AVVideoCodecTypeJPEG"] = AVVideoCodecTypeJPEG;
	p = (void*) &AVVideoApertureModeProductionAperture;
	if (p != NULL) context[@"AVVideoApertureModeProductionAperture"] = AVVideoApertureModeProductionAperture;
	p = (void*) &AVVideoYCbCrMatrix_ITU_R_709_2;
	if (p != NULL) context[@"AVVideoYCbCrMatrix_ITU_R_709_2"] = AVVideoYCbCrMatrix_ITU_R_709_2;
	p = (void*) &AVVideoColorPrimaries_ITU_R_2020;
	if (p != NULL) context[@"AVVideoColorPrimaries_ITU_R_2020"] = AVVideoColorPrimaries_ITU_R_2020;
	p = (void*) &AVVideoCleanApertureHeightKey;
	if (p != NULL) context[@"AVVideoCleanApertureHeightKey"] = AVVideoCleanApertureHeightKey;
	p = (void*) &AVVideoYCbCrMatrix_ITU_R_2020;
	if (p != NULL) context[@"AVVideoYCbCrMatrix_ITU_R_2020"] = AVVideoYCbCrMatrix_ITU_R_2020;
	p = (void*) &AVVideoAverageBitRateKey;
	if (p != NULL) context[@"AVVideoAverageBitRateKey"] = AVVideoAverageBitRateKey;
	p = (void*) &AVVideoAllowWideColorKey;
	if (p != NULL) context[@"AVVideoAllowWideColorKey"] = AVVideoAllowWideColorKey;
	p = (void*) &AVVideoColorPrimaries_SMPTE_C;
	if (p != NULL) context[@"AVVideoColorPrimaries_SMPTE_C"] = AVVideoColorPrimaries_SMPTE_C;
	p = (void*) &AVVideoCodecTypeAppleProRes422Proxy;
	if (p != NULL) context[@"AVVideoCodecTypeAppleProRes422Proxy"] = AVVideoCodecTypeAppleProRes422Proxy;
	p = (void*) &AVVideoProfileLevelH264Main32;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main32"] = AVVideoProfileLevelH264Main32;
	p = (void*) &AVVideoCleanApertureWidthKey;
	if (p != NULL) context[@"AVVideoCleanApertureWidthKey"] = AVVideoCleanApertureWidthKey;
	p = (void*) &AVVideoTransferFunctionKey;
	if (p != NULL) context[@"AVVideoTransferFunctionKey"] = AVVideoTransferFunctionKey;
	p = (void*) &AVVideoCodecTypeAppleProRes422HQ;
	if (p != NULL) context[@"AVVideoCodecTypeAppleProRes422HQ"] = AVVideoCodecTypeAppleProRes422HQ;
	p = (void*) &AVVideoScalingModeKey;
	if (p != NULL) context[@"AVVideoScalingModeKey"] = AVVideoScalingModeKey;
	p = (void*) &AVVideoTransferFunction_SMPTE_ST_2084_PQ;
	if (p != NULL) context[@"AVVideoTransferFunction_SMPTE_ST_2084_PQ"] = AVVideoTransferFunction_SMPTE_ST_2084_PQ;
	p = (void*) &AVVideoH264EntropyModeKey;
	if (p != NULL) context[@"AVVideoH264EntropyModeKey"] = AVVideoH264EntropyModeKey;
	p = (void*) &AVVideoProfileLevelH264MainAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264MainAutoLevel"] = AVVideoProfileLevelH264MainAutoLevel;
	p = (void*) &AVVideoTransferFunction_ITU_R_2100_HLG;
	if (p != NULL) context[@"AVVideoTransferFunction_ITU_R_2100_HLG"] = AVVideoTransferFunction_ITU_R_2100_HLG;
	p = (void*) &AVVideoProfileLevelH264High40;
	if (p != NULL) context[@"AVVideoProfileLevelH264High40"] = AVVideoProfileLevelH264High40;
	p = (void*) &AVVideoProfileLevelH264High41;
	if (p != NULL) context[@"AVVideoProfileLevelH264High41"] = AVVideoProfileLevelH264High41;
	p = (void*) &AVVideoColorPropertiesKey;
	if (p != NULL) context[@"AVVideoColorPropertiesKey"] = AVVideoColorPropertiesKey;
	p = (void*) &AVVideoCodecKey;
	if (p != NULL) context[@"AVVideoCodecKey"] = AVVideoCodecKey;
	p = (void*) &AVVideoCodecTypeHEVCWithAlpha;
	if (p != NULL) context[@"AVVideoCodecTypeHEVCWithAlpha"] = AVVideoCodecTypeHEVCWithAlpha;
	p = (void*) &AVVideoCleanApertureVerticalOffsetKey;
	if (p != NULL) context[@"AVVideoCleanApertureVerticalOffsetKey"] = AVVideoCleanApertureVerticalOffsetKey;
	p = (void*) &AVVideoScalingModeResizeAspect;
	if (p != NULL) context[@"AVVideoScalingModeResizeAspect"] = AVVideoScalingModeResizeAspect;
	p = (void*) &AVVideoMaxKeyFrameIntervalKey;
	if (p != NULL) context[@"AVVideoMaxKeyFrameIntervalKey"] = AVVideoMaxKeyFrameIntervalKey;
	p = (void*) &AVVideoProfileLevelH264HighAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264HighAutoLevel"] = AVVideoProfileLevelH264HighAutoLevel;
	p = (void*) &AVVideoCodecTypeAppleProRes4444;
	if (p != NULL) context[@"AVVideoCodecTypeAppleProRes4444"] = AVVideoCodecTypeAppleProRes4444;
	p = (void*) &AVVideoCodecH264;
	if (p != NULL) context[@"AVVideoCodecH264"] = AVVideoCodecH264;
	p = (void*) &AVVideoScalingModeResizeAspectFill;
	if (p != NULL) context[@"AVVideoScalingModeResizeAspectFill"] = AVVideoScalingModeResizeAspectFill;
	p = (void*) &AVVideoScalingModeFit;
	if (p != NULL) context[@"AVVideoScalingModeFit"] = AVVideoScalingModeFit;
	p = (void*) &AVVideoYCbCrMatrixKey;
	if (p != NULL) context[@"AVVideoYCbCrMatrixKey"] = AVVideoYCbCrMatrixKey;
	p = (void*) &AVVideoProfileLevelH264Baseline31;
	if (p != NULL) context[@"AVVideoProfileLevelH264Baseline31"] = AVVideoProfileLevelH264Baseline31;
	p = (void*) &AVVideoCodecTypeHEVC;
	if (p != NULL) context[@"AVVideoCodecTypeHEVC"] = AVVideoCodecTypeHEVC;
	p = (void*) &AVVideoProfileLevelH264Main30;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main30"] = AVVideoProfileLevelH264Main30;
	p = (void*) &AVVideoApertureModeCleanAperture;
	if (p != NULL) context[@"AVVideoApertureModeCleanAperture"] = AVVideoApertureModeCleanAperture;
	p = (void*) &AVVideoColorPrimariesKey;
	if (p != NULL) context[@"AVVideoColorPrimariesKey"] = AVVideoColorPrimariesKey;
	p = (void*) &AVVideoCodecTypeAppleProRes422LT;
	if (p != NULL) context[@"AVVideoCodecTypeAppleProRes422LT"] = AVVideoCodecTypeAppleProRes422LT;
	p = (void*) &AVVideoColorPrimaries_P3_D65;
	if (p != NULL) context[@"AVVideoColorPrimaries_P3_D65"] = AVVideoColorPrimaries_P3_D65;
	p = (void*) &AVVideoAppleProRAWBitDepthKey;
	if (p != NULL) context[@"AVVideoAppleProRAWBitDepthKey"] = AVVideoAppleProRAWBitDepthKey;
	p = (void*) &AVVideoProfileLevelH264BaselineAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264BaselineAutoLevel"] = AVVideoProfileLevelH264BaselineAutoLevel;
	p = (void*) &AVVideoCodecJPEG;
	if (p != NULL) context[@"AVVideoCodecJPEG"] = AVVideoCodecJPEG;
	p = (void*) &AVVideoCodecTypeAppleProRes422;
	if (p != NULL) context[@"AVVideoCodecTypeAppleProRes422"] = AVVideoCodecTypeAppleProRes422;
	p = (void*) &AVVideoExpectedSourceFrameRateKey;
	if (p != NULL) context[@"AVVideoExpectedSourceFrameRateKey"] = AVVideoExpectedSourceFrameRateKey;
	p = (void*) &AVVideoAverageNonDroppableFrameRateKey;
	if (p != NULL) context[@"AVVideoAverageNonDroppableFrameRateKey"] = AVVideoAverageNonDroppableFrameRateKey;
	p = (void*) &AVVideoCleanApertureKey;
	if (p != NULL) context[@"AVVideoCleanApertureKey"] = AVVideoCleanApertureKey;
	p = (void*) &AVVideoColorPrimaries_ITU_R_709_2;
	if (p != NULL) context[@"AVVideoColorPrimaries_ITU_R_709_2"] = AVVideoColorPrimaries_ITU_R_709_2;
	p = (void*) &AVVideoMaxKeyFrameIntervalDurationKey;
	if (p != NULL) context[@"AVVideoMaxKeyFrameIntervalDurationKey"] = AVVideoMaxKeyFrameIntervalDurationKey;
	p = (void*) &AVVideoPixelAspectRatioVerticalSpacingKey;
	if (p != NULL) context[@"AVVideoPixelAspectRatioVerticalSpacingKey"] = AVVideoPixelAspectRatioVerticalSpacingKey;
	p = (void*) &AVVideoCodecHEVC;
	if (p != NULL) context[@"AVVideoCodecHEVC"] = AVVideoCodecHEVC;
	p = (void*) &AVVideoH264EntropyModeCABAC;
	if (p != NULL) context[@"AVVideoH264EntropyModeCABAC"] = AVVideoH264EntropyModeCABAC;
	p = (void*) &AVVideoProfileLevelH264Main31;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main31"] = AVVideoProfileLevelH264Main31;
	p = (void*) &AVVideoWidthKey;
	if (p != NULL) context[@"AVVideoWidthKey"] = AVVideoWidthKey;
	p = (void*) &AVVideoProfileLevelKey;
	if (p != NULL) context[@"AVVideoProfileLevelKey"] = AVVideoProfileLevelKey;
	p = (void*) &AVVideoTransferFunction_ITU_R_709_2;
	if (p != NULL) context[@"AVVideoTransferFunction_ITU_R_709_2"] = AVVideoTransferFunction_ITU_R_709_2;
	p = (void*) &AVVideoHeightKey;
	if (p != NULL) context[@"AVVideoHeightKey"] = AVVideoHeightKey;
}
void load_AVFoundation_AVVideoSettings_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
