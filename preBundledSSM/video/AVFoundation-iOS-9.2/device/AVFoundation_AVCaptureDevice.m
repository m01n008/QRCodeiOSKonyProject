#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AVFoundation_AVCaptureDevice)
+(JSValue*) valueWithAVCaptureWhiteBalanceChromaticityValues: (AVCaptureWhiteBalanceChromaticityValues) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"x": @(s.x),
		@"y": @(s.y),
	} inContext: context];
}
-(AVCaptureWhiteBalanceChromaticityValues) toAVCaptureWhiteBalanceChromaticityValues {
	return (AVCaptureWhiteBalanceChromaticityValues) {
		(float) [self[@"x"] toDouble],
		(float) [self[@"y"] toDouble],
	};
}
+(JSValue*) valueWithAVCaptureWhiteBalanceTemperatureAndTintValues: (AVCaptureWhiteBalanceTemperatureAndTintValues) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"temperature": @(s.temperature),
		@"tint": @(s.tint),
	} inContext: context];
}
-(AVCaptureWhiteBalanceTemperatureAndTintValues) toAVCaptureWhiteBalanceTemperatureAndTintValues {
	return (AVCaptureWhiteBalanceTemperatureAndTintValues) {
		(float) [self[@"temperature"] toDouble],
		(float) [self[@"tint"] toDouble],
	};
}
+(JSValue*) valueWithAVCaptureWhiteBalanceGains: (AVCaptureWhiteBalanceGains) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"redGain": @(s.redGain),
		@"greenGain": @(s.greenGain),
		@"blueGain": @(s.blueGain),
	} inContext: context];
}
-(AVCaptureWhiteBalanceGains) toAVCaptureWhiteBalanceGains {
	return (AVCaptureWhiteBalanceGains) {
		(float) [self[@"redGain"] toDouble],
		(float) [self[@"greenGain"] toDouble],
		(float) [self[@"blueGain"] toDouble],
	};
}
@end
@implementation AVCaptureDevice (AVCaptureDeviceAVCaptureDeviceExposureCategoryExports)
-(void) jssetExposureModeCustomWithDuration: (CMTime) duration ISO: (float) ISO completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self setExposureModeCustomWithDuration: duration ISO: ISO completionHandler: handler_ ];
}
-(void) jssetExposureTargetBias: (float) bias completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self setExposureTargetBias: bias completionHandler: handler_ ];
}
@end
@implementation AVCaptureDevice (AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryExports)
+(void) jsrequestAccessForMediaType: (NSString *) mediaType completionHandler: (JSValue *) handler 
{
	void (^ handler_)(BOOL) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(BOOL arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self requestAccessForMediaType: mediaType completionHandler: handler_ ];
}
@end
@implementation AVCaptureDevice (AVCaptureDeviceAVCaptureDeviceTorchCategoryExports)
-(BOOL) jssetTorchModeOnWithLevel: (float) torchLevel error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setTorchModeOnWithLevel: torchLevel error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVCaptureDevice (Exports)
-(BOOL) jslockForConfiguration: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self lockForConfiguration: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVCaptureDevice (AVCaptureDeviceAVCaptureDeviceFocusCategoryExports)
-(void) jssetFocusModeLockedWithLensPosition: (float) lensPosition completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self setFocusModeLockedWithLensPosition: lensPosition completionHandler: handler_ ];
}
@end
@implementation AVCaptureDevice (AVCaptureDeviceAVCaptureDeviceWhiteBalanceCategoryExports)
-(void) jssetWhiteBalanceModeLockedWithDeviceWhiteBalanceGains: (AVCaptureWhiteBalanceGains) whiteBalanceGains completionHandler: (JSValue *) handler 
{
	void (^ handler_)(CMTime) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(CMTime arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithCMTime: arg0 inContext: __jsContext]];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self setWhiteBalanceModeLockedWithDeviceWhiteBalanceGains: whiteBalanceGains completionHandler: handler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceExposureCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceExposureCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDevicePositionCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDevicePositionCategoryClassExports));
	class_addProtocol([AVCaptureDeviceFormat class], @protocol(AVCaptureDeviceFormatInstanceExports));
	class_addProtocol([AVCaptureDeviceFormat class], @protocol(AVCaptureDeviceFormatClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTorchCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTorchCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFlashCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFlashCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceVideoZoomCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceVideoZoomCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFocusCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFocusCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceLowLightBoostCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceLowLightBoostCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceHighDynamicRangeSupportCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceHighDynamicRangeSupportCategoryClassExports));
	class_addProtocol([AVFrameRateRange class], @protocol(AVFrameRateRangeInstanceExports));
	class_addProtocol([AVFrameRateRange class], @protocol(AVFrameRateRangeClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceWhiteBalanceCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceWhiteBalanceCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureDevicePositionUnspecified"] = @0;
	context[@"AVCaptureDevicePositionBack"] = @1;
	context[@"AVCaptureDevicePositionFront"] = @2;

	context[@"AVCaptureFlashModeOff"] = @0;
	context[@"AVCaptureFlashModeOn"] = @1;
	context[@"AVCaptureFlashModeAuto"] = @2;

	context[@"AVCaptureTorchModeOff"] = @0;
	context[@"AVCaptureTorchModeOn"] = @1;
	context[@"AVCaptureTorchModeAuto"] = @2;

	context[@"AVCaptureFocusModeLocked"] = @0;
	context[@"AVCaptureFocusModeAutoFocus"] = @1;
	context[@"AVCaptureFocusModeContinuousAutoFocus"] = @2;

	context[@"AVCaptureAutoFocusRangeRestrictionNone"] = @0;
	context[@"AVCaptureAutoFocusRangeRestrictionNear"] = @1;
	context[@"AVCaptureAutoFocusRangeRestrictionFar"] = @2;

	context[@"AVCaptureExposureModeLocked"] = @0;
	context[@"AVCaptureExposureModeAutoExpose"] = @1;
	context[@"AVCaptureExposureModeContinuousAutoExposure"] = @2;
	context[@"AVCaptureExposureModeCustom"] = @3;

	context[@"AVCaptureWhiteBalanceModeLocked"] = @0;
	context[@"AVCaptureWhiteBalanceModeAutoWhiteBalance"] = @1;
	context[@"AVCaptureWhiteBalanceModeContinuousAutoWhiteBalance"] = @2;

	context[@"AVAuthorizationStatusNotDetermined"] = @0;
	context[@"AVAuthorizationStatusRestricted"] = @1;
	context[@"AVAuthorizationStatusDenied"] = @2;
	context[@"AVAuthorizationStatusAuthorized"] = @3;

	context[@"AVCaptureVideoStabilizationModeOff"] = @0;
	context[@"AVCaptureVideoStabilizationModeStandard"] = @1;
	context[@"AVCaptureVideoStabilizationModeCinematic"] = @2;
	context[@"AVCaptureVideoStabilizationModeAuto"] = @-1;

	context[@"AVCaptureAutoFocusSystemNone"] = @0;
	context[@"AVCaptureAutoFocusSystemContrastDetection"] = @1;
	context[@"AVCaptureAutoFocusSystemPhaseDetection"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureLensPositionCurrent;
	if (p != NULL) context[@"AVCaptureLensPositionCurrent"] = @(AVCaptureLensPositionCurrent);
	p = (void*) &AVCaptureExposureTargetBiasCurrent;
	if (p != NULL) context[@"AVCaptureExposureTargetBiasCurrent"] = @(AVCaptureExposureTargetBiasCurrent);
	p = (void*) &AVCaptureDeviceWasConnectedNotification;
	if (p != NULL) context[@"AVCaptureDeviceWasConnectedNotification"] = AVCaptureDeviceWasConnectedNotification;
	p = (void*) &AVCaptureMaxAvailableTorchLevel;
	if (p != NULL) context[@"AVCaptureMaxAvailableTorchLevel"] = @(AVCaptureMaxAvailableTorchLevel);
	p = (void*) &AVCaptureExposureDurationCurrent;
	if (p != NULL) context[@"AVCaptureExposureDurationCurrent"] = [JSValue valueWithCMTime: AVCaptureExposureDurationCurrent inContext: context];
	p = (void*) &AVCaptureISOCurrent;
	if (p != NULL) context[@"AVCaptureISOCurrent"] = @(AVCaptureISOCurrent);
	p = (void*) &AVCaptureDeviceSubjectAreaDidChangeNotification;
	if (p != NULL) context[@"AVCaptureDeviceSubjectAreaDidChangeNotification"] = AVCaptureDeviceSubjectAreaDidChangeNotification;
	p = (void*) &AVCaptureDeviceWasDisconnectedNotification;
	if (p != NULL) context[@"AVCaptureDeviceWasDisconnectedNotification"] = AVCaptureDeviceWasDisconnectedNotification;
	p = (void*) &AVCaptureWhiteBalanceGainsCurrent;
	if (p != NULL) context[@"AVCaptureWhiteBalanceGainsCurrent"] = [JSValue valueWithAVCaptureWhiteBalanceGains: AVCaptureWhiteBalanceGainsCurrent inContext: context];
}
void load_AVFoundation_AVCaptureDevice_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
