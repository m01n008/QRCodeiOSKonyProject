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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVVideoCleanApertureHorizontalOffsetKey;
	if (p != NULL) context[@"AVVideoCleanApertureHorizontalOffsetKey"] = AVVideoCleanApertureHorizontalOffsetKey;
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
	p = (void*) &AVVideoH264EntropyModeCAVLC;
	if (p != NULL) context[@"AVVideoH264EntropyModeCAVLC"] = AVVideoH264EntropyModeCAVLC;
	p = (void*) &AVVideoPixelAspectRatioHorizontalSpacingKey;
	if (p != NULL) context[@"AVVideoPixelAspectRatioHorizontalSpacingKey"] = AVVideoPixelAspectRatioHorizontalSpacingKey;
	p = (void*) &AVVideoProfileLevelH264Baseline41;
	if (p != NULL) context[@"AVVideoProfileLevelH264Baseline41"] = AVVideoProfileLevelH264Baseline41;
	p = (void*) &AVVideoCleanApertureHeightKey;
	if (p != NULL) context[@"AVVideoCleanApertureHeightKey"] = AVVideoCleanApertureHeightKey;
	p = (void*) &AVVideoPixelAspectRatioVerticalSpacingKey;
	if (p != NULL) context[@"AVVideoPixelAspectRatioVerticalSpacingKey"] = AVVideoPixelAspectRatioVerticalSpacingKey;
	p = (void*) &AVVideoAverageBitRateKey;
	if (p != NULL) context[@"AVVideoAverageBitRateKey"] = AVVideoAverageBitRateKey;
	p = (void*) &AVVideoMaxKeyFrameIntervalKey;
	if (p != NULL) context[@"AVVideoMaxKeyFrameIntervalKey"] = AVVideoMaxKeyFrameIntervalKey;
	p = (void*) &AVVideoProfileLevelH264Main32;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main32"] = AVVideoProfileLevelH264Main32;
	p = (void*) &AVVideoProfileLevelH264Main30;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main30"] = AVVideoProfileLevelH264Main30;
	p = (void*) &AVVideoProfileLevelH264High40;
	if (p != NULL) context[@"AVVideoProfileLevelH264High40"] = AVVideoProfileLevelH264High40;
	p = (void*) &AVVideoCleanApertureWidthKey;
	if (p != NULL) context[@"AVVideoCleanApertureWidthKey"] = AVVideoCleanApertureWidthKey;
	p = (void*) &AVVideoScalingModeKey;
	if (p != NULL) context[@"AVVideoScalingModeKey"] = AVVideoScalingModeKey;
	p = (void*) &AVVideoH264EntropyModeKey;
	if (p != NULL) context[@"AVVideoH264EntropyModeKey"] = AVVideoH264EntropyModeKey;
	p = (void*) &AVVideoProfileLevelH264MainAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264MainAutoLevel"] = AVVideoProfileLevelH264MainAutoLevel;
	p = (void*) &AVVideoProfileLevelH264High41;
	if (p != NULL) context[@"AVVideoProfileLevelH264High41"] = AVVideoProfileLevelH264High41;
	p = (void*) &AVVideoCodecKey;
	if (p != NULL) context[@"AVVideoCodecKey"] = AVVideoCodecKey;
	p = (void*) &AVVideoCleanApertureVerticalOffsetKey;
	if (p != NULL) context[@"AVVideoCleanApertureVerticalOffsetKey"] = AVVideoCleanApertureVerticalOffsetKey;
	p = (void*) &AVVideoScalingModeResizeAspect;
	if (p != NULL) context[@"AVVideoScalingModeResizeAspect"] = AVVideoScalingModeResizeAspect;
	p = (void*) &AVVideoProfileLevelH264HighAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264HighAutoLevel"] = AVVideoProfileLevelH264HighAutoLevel;
	p = (void*) &AVVideoCodecH264;
	if (p != NULL) context[@"AVVideoCodecH264"] = AVVideoCodecH264;
	p = (void*) &AVVideoScalingModeResizeAspectFill;
	if (p != NULL) context[@"AVVideoScalingModeResizeAspectFill"] = AVVideoScalingModeResizeAspectFill;
	p = (void*) &AVVideoScalingModeFit;
	if (p != NULL) context[@"AVVideoScalingModeFit"] = AVVideoScalingModeFit;
	p = (void*) &AVVideoProfileLevelH264Baseline31;
	if (p != NULL) context[@"AVVideoProfileLevelH264Baseline31"] = AVVideoProfileLevelH264Baseline31;
	p = (void*) &AVVideoHeightKey;
	if (p != NULL) context[@"AVVideoHeightKey"] = AVVideoHeightKey;
	p = (void*) &AVVideoCodecJPEG;
	if (p != NULL) context[@"AVVideoCodecJPEG"] = AVVideoCodecJPEG;
	p = (void*) &AVVideoExpectedSourceFrameRateKey;
	if (p != NULL) context[@"AVVideoExpectedSourceFrameRateKey"] = AVVideoExpectedSourceFrameRateKey;
	p = (void*) &AVVideoAverageNonDroppableFrameRateKey;
	if (p != NULL) context[@"AVVideoAverageNonDroppableFrameRateKey"] = AVVideoAverageNonDroppableFrameRateKey;
	p = (void*) &AVVideoCleanApertureKey;
	if (p != NULL) context[@"AVVideoCleanApertureKey"] = AVVideoCleanApertureKey;
	p = (void*) &AVVideoMaxKeyFrameIntervalDurationKey;
	if (p != NULL) context[@"AVVideoMaxKeyFrameIntervalDurationKey"] = AVVideoMaxKeyFrameIntervalDurationKey;
	p = (void*) &AVVideoH264EntropyModeCABAC;
	if (p != NULL) context[@"AVVideoH264EntropyModeCABAC"] = AVVideoH264EntropyModeCABAC;
	p = (void*) &AVVideoProfileLevelH264Main31;
	if (p != NULL) context[@"AVVideoProfileLevelH264Main31"] = AVVideoProfileLevelH264Main31;
	p = (void*) &AVVideoWidthKey;
	if (p != NULL) context[@"AVVideoWidthKey"] = AVVideoWidthKey;
	p = (void*) &AVVideoProfileLevelH264BaselineAutoLevel;
	if (p != NULL) context[@"AVVideoProfileLevelH264BaselineAutoLevel"] = AVVideoProfileLevelH264BaselineAutoLevel;
	p = (void*) &AVVideoProfileLevelKey;
	if (p != NULL) context[@"AVVideoProfileLevelKey"] = AVVideoProfileLevelKey;
}
void load_AVFoundation_AVVideoSettings_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
