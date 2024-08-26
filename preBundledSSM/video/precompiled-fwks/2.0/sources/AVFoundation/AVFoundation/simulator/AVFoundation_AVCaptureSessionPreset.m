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
	p = (void*) &AVCaptureSessionPresetMedium;
	if (p != NULL) context[@"AVCaptureSessionPresetMedium"] = AVCaptureSessionPresetMedium;
	p = (void*) &AVCaptureSessionPresetLow;
	if (p != NULL) context[@"AVCaptureSessionPresetLow"] = AVCaptureSessionPresetLow;
	p = (void*) &AVCaptureSessionPresetPhoto;
	if (p != NULL) context[@"AVCaptureSessionPresetPhoto"] = AVCaptureSessionPresetPhoto;
	p = (void*) &AVCaptureSessionPresetiFrame960x540;
	if (p != NULL) context[@"AVCaptureSessionPresetiFrame960x540"] = AVCaptureSessionPresetiFrame960x540;
	p = (void*) &AVCaptureSessionPreset1280x720;
	if (p != NULL) context[@"AVCaptureSessionPreset1280x720"] = AVCaptureSessionPreset1280x720;
	p = (void*) &AVCaptureSessionPresetiFrame1280x720;
	if (p != NULL) context[@"AVCaptureSessionPresetiFrame1280x720"] = AVCaptureSessionPresetiFrame1280x720;
	p = (void*) &AVCaptureSessionPreset3840x2160;
	if (p != NULL) context[@"AVCaptureSessionPreset3840x2160"] = AVCaptureSessionPreset3840x2160;
	p = (void*) &AVCaptureSessionPresetHigh;
	if (p != NULL) context[@"AVCaptureSessionPresetHigh"] = AVCaptureSessionPresetHigh;
	p = (void*) &AVCaptureSessionPreset352x288;
	if (p != NULL) context[@"AVCaptureSessionPreset352x288"] = AVCaptureSessionPreset352x288;
	p = (void*) &AVCaptureSessionPresetInputPriority;
	if (p != NULL) context[@"AVCaptureSessionPresetInputPriority"] = AVCaptureSessionPresetInputPriority;
	p = (void*) &AVCaptureSessionPreset1920x1080;
	if (p != NULL) context[@"AVCaptureSessionPreset1920x1080"] = AVCaptureSessionPreset1920x1080;
	p = (void*) &AVCaptureSessionPreset640x480;
	if (p != NULL) context[@"AVCaptureSessionPreset640x480"] = AVCaptureSessionPreset640x480;
}
void load_AVFoundation_AVCaptureSessionPreset_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
