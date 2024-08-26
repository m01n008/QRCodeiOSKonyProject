#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableInBackground"] = @1;
	context[@"AVCaptureSessionInterruptionReasonAudioDeviceInUseByAnotherClient"] = @2;
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceInUseByAnotherClient"] = @3;
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableWithMultipleForegroundApps"] = @4;
	context[@"AVCaptureSessionInterruptionReasonVideoDeviceNotAvailableDueToSystemPressure"] = @5;

	context[@"AVCaptureVideoOrientationPortrait"] = @1;
	context[@"AVCaptureVideoOrientationPortraitUpsideDown"] = @2;
	context[@"AVCaptureVideoOrientationLandscapeRight"] = @3;
	context[@"AVCaptureVideoOrientationLandscapeLeft"] = @4;


}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureSessionRuntimeErrorNotification;
	if (p != NULL) context[@"AVCaptureSessionRuntimeErrorNotification"] = AVCaptureSessionRuntimeErrorNotification;
	p = (void*) &AVCaptureSessionDidStartRunningNotification;
	if (p != NULL) context[@"AVCaptureSessionDidStartRunningNotification"] = AVCaptureSessionDidStartRunningNotification;
	p = (void*) &AVCaptureSessionInterruptionEndedNotification;
	if (p != NULL) context[@"AVCaptureSessionInterruptionEndedNotification"] = AVCaptureSessionInterruptionEndedNotification;
	p = (void*) &AVCaptureSessionInterruptionSystemPressureStateKey;
	if (p != NULL) context[@"AVCaptureSessionInterruptionSystemPressureStateKey"] = AVCaptureSessionInterruptionSystemPressureStateKey;
	p = (void*) &AVCaptureSessionInterruptionReasonKey;
	if (p != NULL) context[@"AVCaptureSessionInterruptionReasonKey"] = AVCaptureSessionInterruptionReasonKey;
	p = (void*) &AVCaptureSessionWasInterruptedNotification;
	if (p != NULL) context[@"AVCaptureSessionWasInterruptedNotification"] = AVCaptureSessionWasInterruptedNotification;
	p = (void*) &AVCaptureSessionDidStopRunningNotification;
	if (p != NULL) context[@"AVCaptureSessionDidStopRunningNotification"] = AVCaptureSessionDidStopRunningNotification;
	p = (void*) &AVCaptureSessionErrorKey;
	if (p != NULL) context[@"AVCaptureSessionErrorKey"] = AVCaptureSessionErrorKey;
}
void load_AVFoundation_AVCaptureSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
