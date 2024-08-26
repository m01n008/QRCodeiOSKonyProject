#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureDevice_symbols(JSContext*);
@interface JSValue (AVFoundation_AVCaptureDevice)
+(JSValue*) valueWithAVCaptureWhiteBalanceChromaticityValues: (AVCaptureWhiteBalanceChromaticityValues) s inContext: (JSContext*) context;
-(AVCaptureWhiteBalanceChromaticityValues) toAVCaptureWhiteBalanceChromaticityValues;
+(JSValue*) valueWithAVCaptureWhiteBalanceTemperatureAndTintValues: (AVCaptureWhiteBalanceTemperatureAndTintValues) s inContext: (JSContext*) context;
-(AVCaptureWhiteBalanceTemperatureAndTintValues) toAVCaptureWhiteBalanceTemperatureAndTintValues;
+(JSValue*) valueWithAVCaptureWhiteBalanceGains: (AVCaptureWhiteBalanceGains) s inContext: (JSContext*) context;
-(AVCaptureWhiteBalanceGains) toAVCaptureWhiteBalanceGains;
@end
@protocol AVCaptureDeviceAVCaptureDeviceTransportControlsCategoryInstanceExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceTransportControlsCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceSystemPressureCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVCaptureSystemPressureState * systemPressureState;
@end
@protocol AVCaptureDeviceAVCaptureDeviceSystemPressureCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceExposureCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) float maxExposureTargetBias;
@property (readonly,nonatomic) float exposureTargetBias;
@property (nonatomic) AVCaptureExposureMode exposureMode;
@property (readonly,nonatomic) float exposureTargetOffset;
@property (readonly,nonatomic) CMTime exposureDuration;
@property (getter=isExposurePointOfInterestSupported,readonly,nonatomic) BOOL exposurePointOfInterestSupported;
@property (nonatomic) CGPoint exposurePointOfInterest;
@property (readonly,nonatomic) float minExposureTargetBias;
@property (readonly,nonatomic) float lensAperture;
@property (readonly,nonatomic) float ISO;
@property (getter=isAdjustingExposure,readonly,nonatomic) BOOL adjustingExposure;
JSExportAs(setExposureModeCustomWithDurationISOCompletionHandler,
-(void) jssetExposureModeCustomWithDuration: (CMTime) duration ISO: (float) ISO completionHandler: (JSValue *) handler );
-(BOOL) isExposureModeSupported: (AVCaptureExposureMode) exposureMode ;
JSExportAs(setExposureTargetBiasCompletionHandler,
-(void) jssetExposureTargetBias: (float) bias completionHandler: (JSValue *) handler );
@end
@protocol AVCaptureDeviceAVCaptureDeviceExposureCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceDepthSupportCategoryInstanceExports<JSExport>
@property (retain,nonatomic) AVCaptureDeviceFormat * activeDepthDataFormat;
@property (readonly,nonatomic) CGFloat maxAvailableVideoZoomFactor;
@property (readonly,nonatomic) CGFloat minAvailableVideoZoomFactor;
@end
@protocol AVCaptureDeviceAVCaptureDeviceDepthSupportCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceDiscoverySessionInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * devices;
@end
@protocol AVCaptureDeviceDiscoverySessionClassExports<JSExport>
+(id) discoverySessionWithDeviceTypes: (NSArray *) deviceTypes mediaType: (AVMediaType) mediaType position: (AVCaptureDevicePosition) position ;
@end
@protocol AVCaptureDeviceAVCaptureDevicePositionCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVCaptureDevicePosition position;
@end
@protocol AVCaptureDeviceAVCaptureDevicePositionCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceFormatInstanceExports<JSExport>
@property (readonly,nonatomic) CGFloat videoMinZoomFactorForDepthDataDelivery;
@property (getter=isVideoBinned,readonly,nonatomic) BOOL videoBinned;
@property (getter=isVideoStabilizationSupported,readonly,nonatomic) BOOL videoStabilizationSupported;
@property (readonly,nonatomic) float minISO;
@property (readonly,nonatomic) CGFloat videoMaxZoomFactor;
@property (readonly,nonatomic) CMTime minExposureDuration;
@property (readonly,nonatomic) CMVideoDimensions highResolutionStillImageDimensions;
@property (readonly,nonatomic) float videoFieldOfView;
@property (readonly,nonatomic) AVCaptureAutoFocusSystem autoFocusSystem;
@property (readonly,nonatomic) AVMediaType mediaType;
@property (readonly,nonatomic) NSArray * supportedColorSpaces;
@property (readonly,nonatomic) CMTime maxExposureDuration;
@property (getter=isVideoHDRSupported,readonly,nonatomic) BOOL videoHDRSupported;
@property (readonly,nonatomic) NSArray * unsupportedCaptureOutputClasses;
@property (readonly,nonatomic) CGFloat videoZoomFactorUpscaleThreshold;
@property (readonly,nonatomic) CGFloat videoMaxZoomFactorForDepthDataDelivery;
@property (readonly,nonatomic) float maxISO;
@property (readonly,nonatomic) NSArray * supportedDepthDataFormats;
@property (readonly,nonatomic) id formatDescription;
@property (readonly,nonatomic) NSArray * videoSupportedFrameRateRanges;
-(BOOL) isVideoStabilizationModeSupported: (AVCaptureVideoStabilizationMode) videoStabilizationMode ;
@end
@protocol AVCaptureDeviceFormatClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceColorSpaceSupportCategoryInstanceExports<JSExport>
@property (nonatomic) AVCaptureColorSpace activeColorSpace;
@end
@protocol AVCaptureDeviceAVCaptureDeviceColorSpaceSupportCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryInstanceExports<JSExport>
@property (getter=isSubjectAreaChangeMonitoringEnabled,nonatomic) BOOL subjectAreaChangeMonitoringEnabled;
@end
@protocol AVCaptureDeviceAVCaptureDeviceSubjectAreaChangeMonitoringCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryInstanceExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceAuthorizationCategoryClassExports<JSExport>
JSExportAs(requestAccessForMediaTypeCompletionHandler,
+(void) jsrequestAccessForMediaType: (AVMediaType) mediaType completionHandler: (JSValue *) handler );
+(AVAuthorizationStatus) authorizationStatusForMediaType: (AVMediaType) mediaType ;
@end
@protocol AVCaptureDeviceAVCaptureDeviceTorchCategoryInstanceExports<JSExport>
@property (nonatomic) AVCaptureTorchMode torchMode;
@property (readonly,nonatomic) float torchLevel;
@property (getter=isTorchAvailable,readonly,nonatomic) BOOL torchAvailable;
@property (readonly,nonatomic) BOOL hasTorch;
@property (getter=isTorchActive,readonly,nonatomic) BOOL torchActive;
-(BOOL) isTorchModeSupported: (AVCaptureTorchMode) torchMode ;
JSExportAs(setTorchModeOnWithLevelError,
-(BOOL) jssetTorchModeOnWithLevel: (float) torchLevel error: (JSValue *) outError );
@end
@protocol AVCaptureDeviceAVCaptureDeviceTorchCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceFlashCategoryInstanceExports<JSExport>
@property (nonatomic) AVCaptureFlashMode flashMode;
@property (getter=isFlashAvailable,readonly,nonatomic) BOOL flashAvailable;
@property (readonly,nonatomic) BOOL hasFlash;
@property (getter=isFlashActive,readonly,nonatomic) BOOL flashActive;
-(BOOL) isFlashModeSupported: (AVCaptureFlashMode) flashMode ;
@end
@protocol AVCaptureDeviceAVCaptureDeviceFlashCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceInstanceExports<JSExport>
@property (nonatomic) CMTime activeVideoMinFrameDuration;
@property (readonly,nonatomic) NSString * localizedName;
@property (getter=isConnected,readonly,nonatomic) BOOL connected;
@property (nonatomic) CMTime activeVideoMaxFrameDuration;
@property (readonly,nonatomic) NSString * uniqueID;
@property (readonly,nonatomic) NSArray * formats;
@property (readonly,nonatomic) NSString * modelID;
@property (retain,nonatomic) AVCaptureDeviceFormat * activeFormat;
-(BOOL) hasMediaType: (AVMediaType) mediaType ;
-(BOOL) supportsAVCaptureSessionPreset: (AVCaptureSessionPreset) preset ;
-(void) unlockForConfiguration;
JSExportAs(lockForConfiguration,
-(BOOL) jslockForConfiguration: (JSValue *) outError );
@end
@protocol AVCaptureDeviceClassExports<JSExport>
+(NSArray *) devicesWithMediaType: (AVMediaType) mediaType ;
+(AVCaptureDevice *) defaultDeviceWithMediaType: (AVMediaType) mediaType ;
+(AVCaptureDevice *) deviceWithUniqueID: (NSString *) deviceUniqueID ;
+(NSArray *) devices;
@end
@protocol AVCaptureDeviceAVCaptureDeviceTypeCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) AVCaptureDeviceType deviceType;
@end
@protocol AVCaptureDeviceAVCaptureDeviceTypeCategoryClassExports<JSExport>
+(AVCaptureDevice *) defaultDeviceWithDeviceType: (AVCaptureDeviceType) deviceType mediaType: (AVMediaType) mediaType position: (AVCaptureDevicePosition) position ;
@end
@protocol AVCaptureDeviceAVCaptureDeviceVideoZoomCategoryInstanceExports<JSExport>
@property (readonly,atomic) CGFloat dualCameraSwitchOverVideoZoomFactor;
@property (nonatomic) CGFloat videoZoomFactor;
@property (getter=isRampingVideoZoom,readonly,nonatomic) BOOL rampingVideoZoom;
-(void) rampToVideoZoomFactor: (CGFloat) factor withRate: (float) rate ;
-(void) cancelVideoZoomRamp;
@end
@protocol AVCaptureDeviceAVCaptureDeviceVideoZoomCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceFocusCategoryInstanceExports<JSExport>
@property (getter=isSmoothAutoFocusSupported,readonly,nonatomic) BOOL smoothAutoFocusSupported;
@property (getter=isAutoFocusRangeRestrictionSupported,readonly,nonatomic) BOOL autoFocusRangeRestrictionSupported;
@property (readonly,nonatomic) float lensPosition;
@property (nonatomic) AVCaptureFocusMode focusMode;
@property (nonatomic) AVCaptureAutoFocusRangeRestriction autoFocusRangeRestriction;
@property (getter=isAdjustingFocus,readonly,nonatomic) BOOL adjustingFocus;
@property (getter=isLockingFocusWithCustomLensPositionSupported,readonly,nonatomic) BOOL lockingFocusWithCustomLensPositionSupported;
@property (getter=isFocusPointOfInterestSupported,readonly,nonatomic) BOOL focusPointOfInterestSupported;
@property (getter=isSmoothAutoFocusEnabled,nonatomic) BOOL smoothAutoFocusEnabled;
@property (nonatomic) CGPoint focusPointOfInterest;
JSExportAs(setFocusModeLockedWithLensPositionCompletionHandler,
-(void) jssetFocusModeLockedWithLensPosition: (float) lensPosition completionHandler: (JSValue *) handler );
-(BOOL) isFocusModeSupported: (AVCaptureFocusMode) focusMode ;
@end
@protocol AVCaptureDeviceAVCaptureDeviceFocusCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceLowLightBoostCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL automaticallyEnablesLowLightBoostWhenAvailable;
@property (getter=isLowLightBoostSupported,readonly,nonatomic) BOOL lowLightBoostSupported;
@property (getter=isLowLightBoostEnabled,readonly,nonatomic) BOOL lowLightBoostEnabled;
@end
@protocol AVCaptureDeviceAVCaptureDeviceLowLightBoostCategoryClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceHighDynamicRangeSupportCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL automaticallyAdjustsVideoHDREnabled;
@property (getter=isVideoHDREnabled,nonatomic) BOOL videoHDREnabled;
@end
@protocol AVCaptureDeviceAVCaptureDeviceHighDynamicRangeSupportCategoryClassExports<JSExport>
@end
@protocol AVFrameRateRangeInstanceExports<JSExport>
@property (readonly) CMTime maxFrameDuration;
@property (readonly) Float64 maxFrameRate;
@property (readonly) CMTime minFrameDuration;
@property (readonly) Float64 minFrameRate;
@end
@protocol AVFrameRateRangeClassExports<JSExport>
@end
@protocol AVCaptureDeviceAVCaptureDeviceWhiteBalanceCategoryInstanceExports<JSExport>
@property (nonatomic) AVCaptureWhiteBalanceMode whiteBalanceMode;
@property (readonly,nonatomic) float maxWhiteBalanceGain;
@property (readonly,nonatomic) AVCaptureWhiteBalanceGains deviceWhiteBalanceGains;
@property (readonly,nonatomic) AVCaptureWhiteBalanceGains grayWorldDeviceWhiteBalanceGains;
@property (getter=isLockingWhiteBalanceWithCustomDeviceGainsSupported,readonly,nonatomic) BOOL lockingWhiteBalanceWithCustomDeviceGainsSupported;
@property (getter=isAdjustingWhiteBalance,readonly,nonatomic) BOOL adjustingWhiteBalance;
-(BOOL) isWhiteBalanceModeSupported: (AVCaptureWhiteBalanceMode) whiteBalanceMode ;
-(AVCaptureWhiteBalanceChromaticityValues) chromaticityValuesForDeviceWhiteBalanceGains: (AVCaptureWhiteBalanceGains) whiteBalanceGains ;
-(AVCaptureWhiteBalanceGains) deviceWhiteBalanceGainsForTemperatureAndTintValues: (AVCaptureWhiteBalanceTemperatureAndTintValues) tempAndTintValues ;
JSExportAs(setWhiteBalanceModeLockedWithDeviceWhiteBalanceGainsCompletionHandler,
-(void) jssetWhiteBalanceModeLockedWithDeviceWhiteBalanceGains: (AVCaptureWhiteBalanceGains) whiteBalanceGains completionHandler: (JSValue *) handler );
-(AVCaptureWhiteBalanceGains) deviceWhiteBalanceGainsForChromaticityValues: (AVCaptureWhiteBalanceChromaticityValues) chromaticityValues ;
-(AVCaptureWhiteBalanceTemperatureAndTintValues) temperatureAndTintValuesForDeviceWhiteBalanceGains: (AVCaptureWhiteBalanceGains) whiteBalanceGains ;
@end
@protocol AVCaptureDeviceAVCaptureDeviceWhiteBalanceCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop