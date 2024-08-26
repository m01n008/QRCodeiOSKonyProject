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
@property (readonly) AVCaptureResolvedPhotoSettings * resolvedSettings;
@property (readonly) id previewPixelBuffer;
@property (readonly) CMTime timestamp;
@property (readonly) id pixelBuffer;
@property (readonly) NSDictionary * embeddedThumbnailPhotoFormat;
@property (readonly) AVCameraCalibrationData * cameraCalibrationData;
@property (readonly) AVCaptureDeviceType sourceDeviceType;
@property (readonly) AVDepthData * depthData;
@property (readonly) NSDictionary * metadata;
@end
@protocol AVCapturePhotoClassExports<JSExport>
@end
@protocol AVCaptureResolvedPhotoSettingsInstanceExports<JSExport>
@property (getter=isFlashEnabled,readonly) BOOL flashEnabled;
@property (readonly) CMVideoDimensions photoDimensions;
@property (getter=isDualCameraFusionEnabled,readonly) BOOL dualCameraFusionEnabled;
@property (readonly) CMVideoDimensions previewDimensions;
@property (readonly) NSUInteger expectedPhotoCount;
@property (readonly) CMVideoDimensions rawPhotoDimensions;
@property (readonly) CMVideoDimensions livePhotoMovieDimensions;
@property (readonly) CMVideoDimensions embeddedThumbnailDimensions;
@property (readonly) int64_t uniqueID;
@property (getter=isStillImageStabilizationEnabled,readonly) BOOL stillImageStabilizationEnabled;
@end
@protocol AVCaptureResolvedPhotoSettingsClassExports<JSExport>
@end
@protocol AVCapturePhotoSettingsInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (getter=isDepthDataFiltered,nonatomic) BOOL depthDataFiltered;
@property (readonly) int64_t uniqueID;
@property (getter=isCameraCalibrationDataDeliveryEnabled,nonatomic) BOOL cameraCalibrationDataDeliveryEnabled;
@property (nonatomic) BOOL embedsDepthDataInPhoto;
@property (readonly) AVFileType rawFileType;
@property (nonatomic) AVCaptureFlashMode flashMode;
@property (copy,nonatomic) NSDictionary * metadata;
@property (getter=isHighResolutionPhotoEnabled,nonatomic) BOOL highResolutionPhotoEnabled;
@property (copy,nonatomic) AVVideoCodecType livePhotoVideoCodecType;
@property (readonly,copy) NSDictionary * format;
@property (copy,nonatomic) NSURL * livePhotoMovieFileURL;
@property (copy,nonatomic) NSDictionary * previewPhotoFormat;
@property (getter=isAutoDualCameraFusionEnabled,nonatomic) BOOL autoDualCameraFusionEnabled;
@property (readonly,nonatomic) NSArray * availableEmbeddedThumbnailPhotoCodecTypes;
@property (copy,nonatomic) NSArray * livePhotoMovieMetadata;
@property (getter=isDualCameraDualPhotoDeliveryEnabled,nonatomic) BOOL dualCameraDualPhotoDeliveryEnabled;
@property (readonly,nonatomic) NSArray * availablePreviewPhotoPixelFormatTypes;
@property (copy,nonatomic) NSDictionary * embeddedThumbnailPhotoFormat;
@property (getter=isDepthDataDeliveryEnabled,nonatomic) BOOL depthDataDeliveryEnabled;
@property (readonly) AVFileType processedFileType;
@property (getter=isAutoStillImageStabilizationEnabled,nonatomic) BOOL autoStillImageStabilizationEnabled;
@property (readonly) OSType rawPhotoPixelFormatType;
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
-(id) CGImageRepresentation;
-(id) previewCGImageRepresentation;
-(NSData *) fileDataRepresentation;
@end
@protocol AVCapturePhotoAVCapturePhotoConversionsCategoryClassExports<JSExport>
@end
@protocol AVCapturePhotoOutputAVCapturePhotoOutputDepthDataDeliverySupportCategoryInstanceExports<JSExport>
@property (getter=isDepthDataDeliverySupported,readonly,nonatomic) BOOL depthDataDeliverySupported;
@property (getter=isDepthDataDeliveryEnabled,nonatomic) BOOL depthDataDeliveryEnabled;
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
@property (readonly,nonatomic) NSArray * availableRawPhotoPixelFormatTypes;
@property (getter=isLivePhotoCaptureSuspended,nonatomic) BOOL livePhotoCaptureSuspended;
@property (readonly,nonatomic) NSArray * availablePhotoFileTypes;
@property (readonly,nonatomic) NSArray * preparedPhotoSettingsArray;
@property (getter=isStillImageStabilizationSupported,readonly,nonatomic) BOOL stillImageStabilizationSupported;
@property (readonly,nonatomic) NSArray * availableRawPhotoFileTypes;
@property (getter=isDualCameraDualPhotoDeliverySupported,readonly,nonatomic) BOOL dualCameraDualPhotoDeliverySupported;
@property (readonly,nonatomic) NSArray * availablePhotoCodecTypes;
@property (readonly,nonatomic) BOOL isFlashScene;
@property (getter=isLensStabilizationDuringBracketedCaptureSupported,readonly,nonatomic) BOOL lensStabilizationDuringBracketedCaptureSupported;
@property (readonly,nonatomic) NSArray * availablePhotoPixelFormatTypes;
@property (getter=isDualCameraDualPhotoDeliveryEnabled,nonatomic) BOOL dualCameraDualPhotoDeliveryEnabled;
@property (getter=isHighResolutionCaptureEnabled,nonatomic) BOOL highResolutionCaptureEnabled;
@property (getter=isLivePhotoAutoTrimmingEnabled,nonatomic) BOOL livePhotoAutoTrimmingEnabled;
@property (readonly,nonatomic) NSArray * supportedFlashModes;
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
+(NSData *) DNGPhotoDataRepresentationForRawSampleBuffer: (id) rawSampleBuffer previewPhotoSampleBuffer: (id) previewPhotoSampleBuffer ;
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
#pragma clang diagnostic pop