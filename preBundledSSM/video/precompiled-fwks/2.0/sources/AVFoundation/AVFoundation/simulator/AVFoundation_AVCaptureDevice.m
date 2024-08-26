#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
+(void) jsrequestAccessForMediaType: (AVMediaType) mediaType completionHandler: (JSValue *) handler 
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
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTransportControlsCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTransportControlsCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSystemPressureCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSystemPressureCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceExposureCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceExposureCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceDepthSupportCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceDepthSupportCategoryClassExports));
	class_addProtocol([AVCaptureDeviceDiscoverySession class], @protocol(AVCaptureDeviceDiscoverySessionInstanceExports));
	class_addProtocol([AVCaptureDeviceDiscoverySession class], @protocol(AVCaptureDeviceDiscoverySessionClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDevicePositionCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDevicePositionCategoryClassExports));
	class_addProtocol([AVCaptureDeviceFormat class], @protocol(AVCaptureDeviceFormatInstanceExports));
	class_addProtocol([AVCaptureDeviceFormat class], @protocol(AVCaptureDeviceFormatClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceColorSpaceSupportCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceColorSpaceSupportCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTorchCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTorchCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFlashCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceFlashCategoryClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceClassExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTypeCategoryInstanceExports));
	class_addProtocol([AVCaptureDevice class], @protocol(AVCaptureDeviceAVCaptureDeviceTypeCategoryClassExports));
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
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVCaptureDevicePositionUnspecified"] = @0L;
	context[@"AVCaptureDevicePositionBack"] = @1L;
	context[@"AVCaptureDevicePositionFront"] = @2L;

	context[@"AVCaptureFlashModeOff"] = @0L;
	context[@"AVCaptureFlashModeOn"] = @1L;
	context[@"AVCaptureFlashModeAuto"] = @2L;

	context[@"AVCaptureTorchModeOff"] = @0L;
	context[@"AVCaptureTorchModeOn"] = @1L;
	context[@"AVCaptureTorchModeAuto"] = @2L;

	context[@"AVCaptureFocusModeLocked"] = @0L;
	context[@"AVCaptureFocusModeAutoFocus"] = @1L;
	context[@"AVCaptureFocusModeContinuousAutoFocus"] = @2L;

	context[@"AVCaptureAutoFocusRangeRestrictionNone"] = @0L;
	context[@"AVCaptureAutoFocusRangeRestrictionNear"] = @1L;
	context[@"AVCaptureAutoFocusRangeRestrictionFar"] = @2L;

	context[@"AVCaptureExposureModeLocked"] = @0L;
	context[@"AVCaptureExposureModeAutoExpose"] = @1L;
	context[@"AVCaptureExposureModeContinuousAutoExposure"] = @2L;
	context[@"AVCaptureExposureModeCustom"] = @3L;

	context[@"AVCaptureWhiteBalanceModeLocked"] = @0L;
	context[@"AVCaptureWhiteBalanceModeAutoWhiteBalance"] = @1L;
	context[@"AVCaptureWhiteBalanceModeContinuousAutoWhiteBalance"] = @2L;

	context[@"AVAuthorizationStatusNotDetermined"] = @0L;
	context[@"AVAuthorizationStatusRestricted"] = @1L;
	context[@"AVAuthorizationStatusDenied"] = @2L;
	context[@"AVAuthorizationStatusAuthorized"] = @3L;


	context[@"AVCaptureColorSpace_sRGB"] = @0L;
	context[@"AVCaptureColorSpace_P3_D65"] = @1L;

	context[@"AVCaptureVideoStabilizationModeOff"] = @0L;
	context[@"AVCaptureVideoStabilizationModeStandard"] = @1L;
	context[@"AVCaptureVideoStabilizationModeCinematic"] = @2L;
	context[@"AVCaptureVideoStabilizationModeAuto"] = @-1L;

	context[@"AVCaptureAutoFocusSystemNone"] = @0L;
	context[@"AVCaptureAutoFocusSystemContrastDetection"] = @1L;
	context[@"AVCaptureAutoFocusSystemPhaseDetection"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVCaptureLensPositionCurrent;
	if (p != NULL) context[@"AVCaptureLensPositionCurrent"] = @(AVCaptureLensPositionCurrent);
	p = (void*) &AVCaptureDeviceTypeBuiltInDualCamera;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInDualCamera"] = AVCaptureDeviceTypeBuiltInDualCamera;
	p = (void*) &AVCaptureDeviceTypeBuiltInDuoCamera;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInDuoCamera"] = AVCaptureDeviceTypeBuiltInDuoCamera;
	p = (void*) &AVCaptureExposureTargetBiasCurrent;
	if (p != NULL) context[@"AVCaptureExposureTargetBiasCurrent"] = @(AVCaptureExposureTargetBiasCurrent);
	p = (void*) &AVCaptureDeviceWasConnectedNotification;
	if (p != NULL) context[@"AVCaptureDeviceWasConnectedNotification"] = AVCaptureDeviceWasConnectedNotification;
	p = (void*) &AVCaptureDeviceTypeBuiltInTrueDepthCamera;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInTrueDepthCamera"] = AVCaptureDeviceTypeBuiltInTrueDepthCamera;
	p = (void*) &AVCaptureMaxAvailableTorchLevel;
	if (p != NULL) context[@"AVCaptureMaxAvailableTorchLevel"] = @(AVCaptureMaxAvailableTorchLevel);
	p = (void*) &AVCaptureExposureDurationCurrent;
	if (p != NULL) context[@"AVCaptureExposureDurationCurrent"] = [JSValue valueWithCMTime: AVCaptureExposureDurationCurrent inContext: context];
	p = (void*) &AVCaptureDeviceTypeBuiltInWideAngleCamera;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInWideAngleCamera"] = AVCaptureDeviceTypeBuiltInWideAngleCamera;
	p = (void*) &AVCaptureDeviceTypeBuiltInTelephotoCamera;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInTelephotoCamera"] = AVCaptureDeviceTypeBuiltInTelephotoCamera;
	p = (void*) &AVCaptureISOCurrent;
	if (p != NULL) context[@"AVCaptureISOCurrent"] = @(AVCaptureISOCurrent);
	p = (void*) &AVCaptureDeviceSubjectAreaDidChangeNotification;
	if (p != NULL) context[@"AVCaptureDeviceSubjectAreaDidChangeNotification"] = AVCaptureDeviceSubjectAreaDidChangeNotification;
	p = (void*) &AVCaptureDeviceTypeBuiltInMicrophone;
	if (p != NULL) context[@"AVCaptureDeviceTypeBuiltInMicrophone"] = AVCaptureDeviceTypeBuiltInMicrophone;
	p = (void*) &AVCaptureDeviceWasDisconnectedNotification;
	if (p != NULL) context[@"AVCaptureDeviceWasDisconnectedNotification"] = AVCaptureDeviceWasDisconnectedNotification;
	p = (void*) &AVCaptureWhiteBalanceGainsCurrent;
	if (p != NULL) context[@"AVCaptureWhiteBalanceGainsCurrent"] = [JSValue valueWithAVCaptureWhiteBalanceGains: AVCaptureWhiteBalanceGainsCurrent inContext: context];
}
void load_AVFoundation_AVCaptureDevice_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
