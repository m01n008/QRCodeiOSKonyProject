#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCapturePhotoOutput_symbols(JSContext*);
@protocol AVCapturePhotoAVCapturePhotoBracketedCaptureCategoryInstanceExports<JSExport>
@property (readonly) NSInteger sequenceCount;
@property (readonly) AVCaptureBracketedStillImageSettings * bracketSettings;
@property (readonly) AVCaptureLensStabilizationStatus lensStabilizationStatus;
@end
@protocol AVCapturePhotoAVCapturePhotoBracketedCaptureCategoryClassExports<JSExport>
@end
@protocol AVCapturePhotoInstanceExports<JSExport>
@property (getter=isRawPhoto,readonly) BOOL rawPhoto;
@property (readonly) NSInteger photoCount;
@property (readonly) AVPortraitEffectsMatte * portraitEffectsMatte;
@property (readonly) AVCaptureResolvedPhotoSettings * resolvedSettings;
@property (readonly) id previewPixelBuffer;
@property (readonly) CMTime timestamp;
@property (readonly) id pixelBuffer;
@property (readonly) NSDictionary * embeddedThumbnailPhotoFormat;
@property (readonly) AVCameraCalibrationData * cameraCalibrationData;
@property (readonly) AVCaptureDeviceType sourceDeviceType;
@property (readonly) AVDepthData * depthData;
@property (readonly) NSDictionary * metadata;
-(AVSemanticSegmentationMatte *) semanticSegmentationMatteForType: (AVSemanticSegmentationMatteType) semanticSegmentationMatteType ;
@end
@protocol AVCapturePhotoClassExports<JSExport>
@end
@protocol AVCaptureResolvedPhotoSettingsInstanceExports<JSExport>
@property (readonly) CMVideoDimensions portraitEffectsMatteDimensions;
@property (getter=isFlashEnabled,readonly) BOOL flashEnabled;
@property (readonly) CMVideoDimensions photoDimensions;
@property (getter=isDualCameraFusionEnabled,readonly) BOOL dualCameraFusionEnabled;
@property (readonly) CMVideoDimensions livePhotoMovieDimensions;
@property (readonly) CMTimeRange photoProcessingTimeRange;
@property (readonly) CMVideoDimensions previewDimensions;
@property (readonly) NSUInteger expectedPhotoCount;
@property (getter=isVirtualDeviceFusionEnabled,readonly) BOOL virtualDeviceFusionEnabled;
@property (readonly) CMVideoDimensions rawPhotoDimensions;
@property (getter=isRedEyeReductionEnabled,readonly) BOOL redEyeReductionEnabled;
@property (readonly) CMVideoDimensions rawEmbeddedThumbnailDimensions;
@property (readonly) CMVideoDimensions embeddedThumbnailDimensions;
@property (readonly) int64_t uniqueID;
@property (getter=isStillImageStabilizationEnabled,readonly) BOOL stillImageStabilizationEnabled;
@property (getter=isContentAwareDistortionCorrectionEnabled,readonly) BOOL contentAwareDistortionCorrectionEnabled;
-(CMVideoDimensions) dimensionsForSemanticSegmentationMatteOfType: (AVSemanticSegmentationMatteType) semanticSegmentationMatteType ;
@end
@protocol AVCaptureResolvedPhotoSettingsClassExports<JSExport>
@end
@protocol AVCapturePhotoSettingsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (getter=isDepthDataFiltered,nonatomic) BOOL depthDataFiltered;
@property (nonatomic) BOOL embedsSemanticSegmentationMattesInPhoto;
@property (readonly) int64_t uniqueID;
@property (getter=isCameraCalibrationDataDeliveryEnabled,nonatomic) BOOL cameraCalibrationDataDeliveryEnabled;
@property (nonatomic) BOOL embedsDepthDataInPhoto;
@property (readonly) AVFileType rawFileType;
@property (nonatomic) AVCaptureFlashMode flashMode;
@property (copy,nonatomic) NSArray * virtualDeviceConstituentPhotoDeliveryEnabledDevices;
@property (copy,nonatomic) NSDictionary * metadata;
@property (getter=isPortraitEffectsMatteDeliveryEnabled,nonatomic) BOOL portraitEffectsMatteDeliveryEnabled;
@property (copy,nonatomic) NSDictionary * rawEmbeddedThumbnailPhotoFormat;
@property (getter=isHighResolutionPhotoEnabled,nonatomic) BOOL highResolutionPhotoEnabled;
@property (copy,nonatomic) AVVideoCodecType livePhotoVideoCodecType;
@property (readonly,copy) NSDictionary * format;
@property (copy,nonatomic) NSURL * livePhotoMovieFileURL;
@property (copy,nonatomic) NSDictionary * previewPhotoFormat;
@property (readonly,nonatomic) NSArray * availableRawEmbeddedThumbnailPhotoCodecTypes;
@property (getter=isAutoDualCameraFusionEnabled,nonatomic) BOOL autoDualCameraFusionEnabled;
@property (nonatomic) BOOL embedsPortraitEffectsMatteInPhoto;
@property (readonly,nonatomic) NSArray * availableEmbeddedThumbnailPhotoCodecTypes;
@property (copy,nonatomic) NSArray * livePhotoMovieMetadata;
@property (getter=isDualCameraDualPhotoDeliveryEnabled,nonatomic) BOOL dualCameraDualPhotoDeliveryEnabled;
@property (readonly,nonatomic) NSArray * availablePreviewPhotoPixelFormatTypes;
@property (getter=isAutoContentAwareDistortionCorrectionEnabled,nonatomic) BOOL autoContentAwareDistortionCorrectionEnabled;
@property (readonly) OSType rawPhotoPixelFormatType;
@property (copy,nonatomic) NSArray * enabledSemanticSegmentationMatteTypes;
@property (copy,nonatomic) NSDictionary * embeddedThumbnailPhotoFormat;
@property (getter=isDepthDataDeliveryEnabled,nonatomic) BOOL depthDataDeliveryEnabled;
@property (getter=isAutoVirtualDeviceFusionEnabled,nonatomic) BOOL autoVirtualDeviceFusionEnabled;
@property (readonly) AVFileType processedFileType;
@property (getter=isAutoRedEyeReductionEnabled,nonatomic) BOOL autoRedEyeReductionEnabled;
@property (getter=isAutoStillImageStabilizationEnabled,nonatomic) BOOL autoStillImageStabilizationEnabled;
@property (nonatomic) AVCapturePhotoQualityPrioritization photoQualityPrioritization;
@end
@protocol AVCapturePhotoSettingsClassExports<JSExport, NSCopyingClassExports_>
+(id) photoSettingsWithRawPixelFormatType: (OSType) rawPixelFormatType ;
+(id) photoSettingsWithRawPixelFormatType: (OSType) rawPixelFormatType rawFileType: (AVFileType) rawFileType processedFormat: (NSDictionary *) processedFormat processedFileType: (AVFileType) processedFileType ;
+(id) photoSettings;
+(id) photoSettingsFromPhotoSettings: (AVCapturePhotoSettings *) photoSettings ;
+(id) photoSettingsWithFormat: (NSDictionary *) format ;
+(id) photoSettingsWithRawPixelFormatType: (OSType) rawPixelFormatType processedFormat: (NSDictionary *) processedFormat ;
@end
@protocol AVCapturePhotoBracketSettingsInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * bracketedSettings;
@property (getter=isLensStabilizationEnabled,nonatomic) BOOL lensStabilizationEnabled;
@end
@protocol AVCapturePhotoBracketSettingsClassExports<JSExport>
+(id) photoBracketSettingsWithRawPixelFormatType: (OSType) rawPixelFormatType rawFileType: (AVFileType) rawFileType processedFormat: (NSDictionary *) processedFormat processedFileType: (AVFileType) processedFileType bracketedSettings: (NSArray *) bracketedSettings ;
+(id) photoBracketSettingsWithRawPixelFormatType: (OSType) rawPixelFormatType processedFormat: (NSDictionary *) processedFormat bracketedSettings: (NSArray *) bracketedSettings ;
@end
@protocol AVCapturePhotoAVCapturePhotoConversionsCategoryInstanceExports<JSExport>
-(NSData *) fileDataRepresentationWithReplacementMetadata: (NSDictionary *) replacementMetadata replacementEmbeddedThumbnailPhotoFormat: (NSDictionary *) replacementEmbeddedThumbnailPhotoFormat replacementEmbeddedThumbnailPixelBuffer: (id) replacementEmbeddedThumbnailPixelBuffer replacementDepthData: (AVDepthData *) replacementDepthData ;
-(NSData *) fileDataRepresentationWithCustomizer: (id) customizer ;
-(id) CGImageRepresentation;
-(id) previewCGImageRepresentation;
-(NSData *) fileDataRepresentation;
@end
@protocol AVCapturePhotoAVCapturePhotoConversionsCategoryClassExports<JSExport>
@end
@protocol AVCapturePhotoOutputAVCapturePhotoOutputDepthDataDeliverySupportCategoryInstanceExports<JSExport>
@property (getter=isPortraitEffectsMatteDeliveryEnabled,nonatomic) BOOL portraitEffectsMatteDeliveryEnabled;
@property (nonatomic) NSArray * enabledSemanticSegmentationMatteTypes;
@property (getter=isPortraitEffectsMatteDeliverySupported,readonly,nonatomic) BOOL portraitEffectsMatteDeliverySupported;
@property (getter=isDepthDataDeliveryEnabled,nonatomic) BOOL depthDataDeliveryEnabled;
@property (getter=isDepthDataDeliverySupported,readonly,nonatomic) BOOL depthDataDeliverySupported;
@property (readonly,nonatomic) NSArray * availableSemanticSegmentationMatteTypes;
@end
@protocol AVCapturePhotoOutputAVCapturePhotoOutputDepthDataDeliverySupportCategoryClassExports<JSExport>
@end
@protocol AVCapturePhotoOutputInstanceExports<JSExport>
@property (getter=isCameraCalibrationDataDeliverySupported,readonly,nonatomic) BOOL cameraCalibrationDataDeliverySupported;
@property (getter=isDualCameraFusionSupported,readonly,nonatomic) BOOL dualCameraFusionSupported;
@property (readonly,nonatomic) NSArray * availableLivePhotoVideoCodecTypes;
@property (readonly,nonatomic) BOOL isStillImageStabilizationScene;
@property (copy,nonatomic) AVCapturePhotoSettings * photoSettingsForSceneMonitoring;
@property (getter=isLivePhotoCaptureSupported,readonly,nonatomic) BOOL livePhotoCaptureSupported;
@property (getter=isLivePhotoCaptureEnabled,nonatomic) BOOL livePhotoCaptureEnabled;
@property (readonly,nonatomic) NSUInteger maxBracketedCapturePhotoCount;
@property (getter=isAppleProRAWSupported,readonly,nonatomic) BOOL appleProRAWSupported;
@property (readonly,nonatomic) NSArray * availableRawPhotoPixelFormatTypes;
@property (getter=isLivePhotoCaptureSuspended,nonatomic) BOOL livePhotoCaptureSuspended;
@property (readonly,nonatomic) NSArray * availablePhotoFileTypes;
@property (readonly,nonatomic) NSArray * preparedPhotoSettingsArray;
@property (getter=isStillImageStabilizationSupported,readonly,nonatomic) BOOL stillImageStabilizationSupported;
@property (getter=isContentAwareDistortionCorrectionEnabled,nonatomic) BOOL contentAwareDistortionCorrectionEnabled;
@property (getter=isLivePhotoAutoTrimmingEnabled,nonatomic) BOOL livePhotoAutoTrimmingEnabled;
@property (getter=isVirtualDeviceConstituentPhotoDeliveryEnabled,nonatomic) BOOL virtualDeviceConstituentPhotoDeliveryEnabled;
@property (readonly,nonatomic) NSArray * availableRawPhotoFileTypes;
@property (getter=isDualCameraDualPhotoDeliverySupported,readonly,nonatomic) BOOL dualCameraDualPhotoDeliverySupported;
@property (readonly,nonatomic) NSArray * availablePhotoCodecTypes;
@property (getter=isContentAwareDistortionCorrectionSupported,readonly,nonatomic) BOOL contentAwareDistortionCorrectionSupported;
@property (readonly,nonatomic) BOOL isFlashScene;
@property (getter=isLensStabilizationDuringBracketedCaptureSupported,readonly,nonatomic) BOOL lensStabilizationDuringBracketedCaptureSupported;
@property (getter=isAppleProRAWEnabled,nonatomic) BOOL appleProRAWEnabled;
@property (readonly,nonatomic) NSArray * availablePhotoPixelFormatTypes;
@property (getter=isDualCameraDualPhotoDeliveryEnabled,nonatomic) BOOL dualCameraDualPhotoDeliveryEnabled;
@property (getter=isHighResolutionCaptureEnabled,nonatomic) BOOL highResolutionCaptureEnabled;
@property (getter=isVirtualDeviceFusionSupported,readonly,nonatomic) BOOL virtualDeviceFusionSupported;
@property (nonatomic) AVCapturePhotoQualityPrioritization maxPhotoQualityPrioritization;
@property (getter=isAutoRedEyeReductionSupported,readonly,nonatomic) BOOL autoRedEyeReductionSupported;
@property (readonly,nonatomic) NSArray * supportedFlashModes;
@property (getter=isVirtualDeviceConstituentPhotoDeliverySupported,readonly,nonatomic) BOOL virtualDeviceConstituentPhotoDeliverySupported;
-(NSArray *) supportedPhotoPixelFormatTypesForFileType: (AVFileType) fileType ;
-(NSArray *) supportedPhotoCodecTypesForFileType: (AVFileType) fileType ;
-(id) jsinit;
-(NSArray *) supportedRawPhotoPixelFormatTypesForFileType: (AVFileType) fileType ;
-(void) capturePhotoWithSettings: (AVCapturePhotoSettings *) settings delegate: (id) delegate ;
JSExportAs(setPreparedPhotoSettingsArrayCompletionHandler,
-(void) jssetPreparedPhotoSettingsArray: (NSArray *) preparedPhotoSettingsArray completionHandler: (JSValue *) completionHandler );
@end
@protocol AVCapturePhotoOutputClassExports<JSExport>
+(NSData *) JPEGPhotoDataRepresentationForJPEGSampleBuffer: (id) JPEGSampleBuffer previewPhotoSampleBuffer: (id) previewPhotoSampleBuffer ;
+(id) jsnew;
+(BOOL) isBayerRAWPixelFormat: (OSType) pixelFormat ;
+(NSData *) DNGPhotoDataRepresentationForRawSampleBuffer: (id) rawSampleBuffer previewPhotoSampleBuffer: (id) previewPhotoSampleBuffer ;
+(BOOL) isAppleProRAWPixelFormat: (OSType) pixelFormat ;
@end
@protocol AVCapturePhotoCaptureDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishCaptureForResolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings error: (NSError *) error ;
-(void) captureOutput: (AVCapturePhotoOutput *) output willCapturePhotoForResolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didCapturePhotoForResolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishProcessingPhotoSampleBuffer: (id) photoSampleBuffer previewPhotoSampleBuffer: (id) previewPhotoSampleBuffer resolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings bracketSettings: (AVCaptureBracketedStillImageSettings *) bracketSettings error: (NSError *) error ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishProcessingRawPhotoSampleBuffer: (id) rawSampleBuffer previewPhotoSampleBuffer: (id) previewPhotoSampleBuffer resolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings bracketSettings: (AVCaptureBracketedStillImageSettings *) bracketSettings error: (NSError *) error ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishRecordingLivePhotoMovieForEventualFileAtURL: (NSURL *) outputFileURL resolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishProcessingPhoto: (AVCapturePhoto *) photo error: (NSError *) error ;
-(void) captureOutput: (AVCapturePhotoOutput *) output willBeginCaptureForResolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings ;
-(void) captureOutput: (AVCapturePhotoOutput *) output didFinishProcessingLivePhotoToMovieFileAtURL: (NSURL *) outputFileURL duration: (CMTime) duration photoDisplayTime: (CMTime) photoDisplayTime resolvedSettings: (AVCaptureResolvedPhotoSettings *) resolvedSettings error: (NSError *) error ;
@end
@protocol AVCapturePhotoCaptureDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVCapturePhotoFileDataRepresentationCustomizerInstanceExports_<JSExport, NSObjectInstanceExports_>
-(NSDictionary *) replacementMetadataForPhoto: (AVCapturePhoto *) photo ;
-(AVDepthData *) replacementDepthDataForPhoto: (AVCapturePhoto *) photo ;
-(NSDictionary *) replacementAppleProRAWCompressionSettingsForPhoto: (AVCapturePhoto *) photo defaultSettings: (NSDictionary *) defaultSettings maximumBitDepth: (NSInteger) maximumBitDepth ;
-(AVSemanticSegmentationMatte *) replacementSemanticSegmentationMatteOfType: (AVSemanticSegmentationMatteType) semanticSegmentationMatteType forPhoto: (AVCapturePhoto *) photo ;
-(AVPortraitEffectsMatte *) replacementPortraitEffectsMatteForPhoto: (AVCapturePhoto *) photo ;
@end
@protocol AVCapturePhotoFileDataRepresentationCustomizerClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop