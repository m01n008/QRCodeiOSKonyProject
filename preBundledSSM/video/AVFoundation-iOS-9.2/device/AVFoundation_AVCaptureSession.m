#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCaptureConnection (Exports)
-(id) jsinitWithInputPort: (AVCaptureInputPort *) port videoPreviewLayer: (AVCaptureVideoPreviewLayer *) layer 
{
	id resultVal__;
	resultVal__ = [[self initWithInputPort: port videoPreviewLayer: layer ] autorelease];
	return resultVal__;
}
-(id) jsinitWithInputPorts: (NSArray *) ports output: (AVCaptureOutput *) output 
{
	id resultVal__;
	resultVal__ = [[self initWithInputPorts: ports output: output ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureConnection class], @protocol(AVCaptureConnectionInstanceExports));
	class_addProtocol([AVCaptureConnection class], @protocol(AVCaptureConnectionClassExports));
	class_addProtocol([AVCaptureSession class], @protocol(AVCaptureSessionInstanceExports));
	class_addProtocol([AVCaptureSession class], @protocol(AVCaptureSessionClassExports));
	class_addProtocol([AVCaptureAudioChannel class], @protocol(AVCaptureAudioChannelInstanceExports));
	class_addProtocol([AVCaptureAudioChannel class], @protocol(AVCaptureAudioChannelClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableInBackground"] = @1;
	context[@"AVCaptureSessionInterruptionReasonAudioDeviceInUseByAnotherClient"] = @2;
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceInUseByAnotherClient"] = @3;
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableWithMultipleForegroundApps"] = @4;

	context[@"AVCaptureVideoOrientationPortrait"] = @1;
	context[@"AVCaptureVideoOrientationPortraitUpsideDown"] = @2;
	context[@"AVCaptureVideoOrientationLandscapeRight"] = @3;
	context[@"AVCaptureVideoOrientationLandscapeLeft"] = @4;


}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureSessionPresetMedium;
	if (p != NULL) context[@"AVCaptureSessionPresetMedium"] = AVCaptureSessionPresetMedium;
	p = (void*) &AVCaptureSessionRuntimeErrorNotification;
	if (p != NULL) context[@"AVCaptureSessionRuntimeErrorNotification"] = AVCaptureSessionRuntimeErrorNotification;
	p = (void*) &AVCaptureSessionPresetPhoto;
	if (p != NULL) context[@"AVCaptureSessionPresetPhoto"] = AVCaptureSessionPresetPhoto;
	p = (void*) &AVCaptureSessionPresetiFrame960x540;
	if (p != NULL) context[@"AVCaptureSessionPresetiFrame960x540"] = AVCaptureSessionPresetiFrame960x540;
	p = (void*) &AVCaptureSessionDidStartRunningNotification;
	if (p != NULL) context[@"AVCaptureSessionDidStartRunningNotification"] = AVCaptureSessionDidStartRunningNotification;
	p = (void*) &AVCaptureSessionPreset1280x720;
	if (p != NULL) context[@"AVCaptureSessionPreset1280x720"] = AVCaptureSessionPreset1280x720;
	p = (void*) &AVCaptureSessionPresetLow;
	if (p != NULL) context[@"AVCaptureSessionPresetLow"] = AVCaptureSessionPresetLow;
	p = (void*) &AVCaptureSessionInterruptionEndedNotification;
	if (p != NULL) context[@"AVCaptureSessionInterruptionEndedNotification"] = AVCaptureSessionInterruptionEndedNotification;
	p = (void*) &AVCaptureSessionPresetiFrame1280x720;
	if (p != NULL) context[@"AVCaptureSessionPresetiFrame1280x720"] = AVCaptureSessionPresetiFrame1280x720;
	p = (void*) &AVCaptureSessionInterruptionReasonKey;
	if (p != NULL) context[@"AVCaptureSessionInterruptionReasonKey"] = AVCaptureSessionInterruptionReasonKey;
	p = (void*) &AVCaptureSessionPreset3840x2160;
	if (p != NULL) context[@"AVCaptureSessionPreset3840x2160"] = AVCaptureSessionPreset3840x2160;
	p = (void*) &AVCaptureSessionPresetHigh;
	if (p != NULL) context[@"AVCaptureSessionPresetHigh"] = AVCaptureSessionPresetHigh;
	p = (void*) &AVCaptureSessionWasInterruptedNotification;
	if (p != NULL) context[@"AVCaptureSessionWasInterruptedNotification"] = AVCaptureSessionWasInterruptedNotification;
	p = (void*) &AVCaptureSessionPreset352x288;
	if (p != NULL) context[@"AVCaptureSessionPreset352x288"] = AVCaptureSessionPreset352x288;
	p = (void*) &AVCaptureSessionPresetInputPriority;
	if (p != NULL) context[@"AVCaptureSessionPresetInputPriority"] = AVCaptureSessionPresetInputPriority;
	p = (void*) &AVCaptureSessionDidStopRunningNotification;
	if (p != NULL) context[@"AVCaptureSessionDidStopRunningNotification"] = AVCaptureSessionDidStopRunningNotification;
	p = (void*) &AVCaptureSessionPreset1920x1080;
	if (p != NULL) context[@"AVCaptureSessionPreset1920x1080"] = AVCaptureSessionPreset1920x1080;
	p = (void*) &AVCaptureSessionErrorKey;
	if (p != NULL) context[@"AVCaptureSessionErrorKey"] = AVCaptureSessionErrorKey;
	p = (void*) &AVCaptureSessionPreset640x480;
	if (p != NULL) context[@"AVCaptureSessionPreset640x480"] = AVCaptureSessionPreset640x480;
}
void load_AVFoundation_AVCaptureSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
