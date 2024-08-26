#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureOutput_symbols(JSContext*);
@protocol AVCaptureStillImageOutputInstanceExports<JSExport>
@property (getter=isCapturingStillImage,readonly) BOOL capturingStillImage;
@property (getter=isStillImageStabilizationActive,readonly,nonatomic) BOOL stillImageStabilizationActive;
@property (getter=isHighResolutionStillImageOutputEnabled,nonatomic) BOOL highResolutionStillImageOutputEnabled;
@property (copy,nonatomic) NSDictionary * outputSettings;
@property (readonly,nonatomic) NSArray * availableImageDataCVPixelFormatTypes;
@property (nonatomic) BOOL automaticallyEnablesStillImageStabilizationWhenAvailable;
@property (getter=isStillImageStabilizationSupported,readonly,nonatomic) BOOL stillImageStabilizationSupported;
@property (readonly,nonatomic) NSArray * availableImageDataCodecTypes;
JSExportAs(captureStillImageAsynchronouslyFromConnectionCompletionHandler,
-(void) jscaptureStillImageAsynchronouslyFromConnection: (AVCaptureConnection *) connection completionHandler: (JSValue *) handler );
@end
@protocol AVCaptureStillImageOutputClassExports<JSExport>
+(NSData *) jpegStillImageNSDataRepresentation: (id) jpegSampleBuffer ;
@end
@protocol AVCaptureAudioDataOutputInstanceExports<JSExport>
@property (readonly,nonatomic) id sampleBufferDelegate;
-(NSDictionary *) recommendedAudioSettingsForAssetWriterWithOutputFileType: (NSString *) outputFileType ;
@end
@protocol AVCaptureAudioDataOutputClassExports<JSExport>
@end
@protocol AVCaptureManualExposureBracketedStillImageSettingsInstanceExports<JSExport>
@property (readonly) float ISO;
@property (readonly) CMTime exposureDuration;
@end
@protocol AVCaptureManualExposureBracketedStillImageSettingsClassExports<JSExport>
+(id) manualExposureSettingsWithExposureDuration: (CMTime) duration ISO: (float) ISO ;
@end
@protocol AVCaptureAutoExposureBracketedStillImageSettingsInstanceExports<JSExport>
@property (readonly) float exposureTargetBias;
@end
@protocol AVCaptureAutoExposureBracketedStillImageSettingsClassExports<JSExport>
+(id) autoExposureSettingsWithExposureTargetBias: (float) exposureTargetBias ;
@end
@protocol AVCaptureStillImageOutputBracketedCaptureMethodsCategoryInstanceExports<JSExport>
@property (getter=isLensStabilizationDuringBracketedCaptureSupported,readonly,nonatomic) BOOL lensStabilizationDuringBracketedCaptureSupported;
@property (getter=isLensStabilizationDuringBracketedCaptureEnabled,nonatomic) BOOL lensStabilizationDuringBracketedCaptureEnabled;
@property (readonly,nonatomic) NSUInteger maxBracketedCaptureStillImageCount;
JSExportAs(prepareToCaptureStillImageBracketFromConnectionWithSettingsArrayCompletionHandler,
-(void) jsprepareToCaptureStillImageBracketFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler );
JSExportAs(captureStillImageBracketAsynchronouslyFromConnectionWithSettingsArrayCompletionHandler,
-(void) jscaptureStillImageBracketAsynchronouslyFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler );
@end
@protocol AVCaptureStillImageOutputBracketedCaptureMethodsCategoryClassExports<JSExport>
@end
@protocol AVCaptureBracketedStillImageSettingsInstanceExports<JSExport>
@end
@protocol AVCaptureBracketedStillImageSettingsClassExports<JSExport>
@end
@protocol AVCaptureVideoDataOutputInstanceExports<JSExport>
@property (copy,nonatomic) NSDictionary * videoSettings;
@property (readonly,nonatomic) NSArray * availableVideoCodecTypes;
@property (readonly,nonatomic) id sampleBufferDelegate;
@property (nonatomic) CMTime minFrameDuration;
@property (nonatomic) BOOL alwaysDiscardsLateVideoFrames;
@property (readonly,nonatomic) NSArray * availableVideoCVPixelFormatTypes;
-(NSDictionary *) recommendedVideoSettingsForAssetWriterWithOutputFileType: (NSString *) outputFileType ;
@end
@protocol AVCaptureVideoDataOutputClassExports<JSExport>
@end
@protocol AVCaptureMetadataOutputInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * availableMetadataObjectTypes;
@property (readonly,nonatomic) id metadataObjectsDelegate;
@property (copy,nonatomic) NSArray * metadataObjectTypes;
@property (nonatomic) CGRect rectOfInterest;
@end
@protocol AVCaptureMetadataOutputClassExports<JSExport>
@end
@protocol AVCaptureOutputInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * connections;
-(CGRect) metadataOutputRectOfInterestForRect: (CGRect) rectInOutputCoordinates ;
-(AVMetadataObject *) transformedMetadataObjectForMetadataObject: (AVMetadataObject *) metadataObject connection: (AVCaptureConnection *) connection ;
-(CGRect) rectForMetadataOutputRectOfInterest: (CGRect) rectInMetadataOutputCoordinates ;
-(AVCaptureConnection *) connectionWithMediaType: (NSString *) mediaType ;
@end
@protocol AVCaptureOutputClassExports<JSExport>
@end
@protocol AVCaptureFileOutputInstanceExports<JSExport>
@property (nonatomic) int64_t maxRecordedFileSize;
@property (readonly,nonatomic) int64_t recordedFileSize;
@property (readonly,nonatomic) NSURL * outputFileURL;
@property (readonly,nonatomic) CMTime recordedDuration;
@property (nonatomic) int64_t minFreeDiskSpaceLimit;
@property (getter=isRecording,readonly,nonatomic) BOOL recording;
@property (nonatomic) CMTime maxRecordedDuration;
-(void) stopRecording;
-(void) startRecordingToOutputFileURL: (NSURL *) outputFileURL recordingDelegate: (id) delegate ;
@end
@protocol AVCaptureFileOutputClassExports<JSExport>
@end
@protocol AVCaptureMovieFileOutputInstanceExports<JSExport>
@property (nonatomic) CMTime movieFragmentInterval;
@property (copy,nonatomic) NSArray * metadata;
-(void) setRecordsVideoOrientationAndMirroringChanges: (BOOL) doRecordChanges asMetadataTrackForConnection: (AVCaptureConnection *) connection ;
-(BOOL) recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureMovieFileOutputClassExports<JSExport>
@end
@protocol AVCaptureMetadataOutputObjectsDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) captureOutput didOutputMetadataObjects: (NSArray *) metadataObjects fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureMetadataOutputObjectsDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVCaptureFileOutputRecordingDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureFileOutput *) captureOutput didStartRecordingToOutputFileAtURL: (NSURL *) fileURL fromConnections: (NSArray *) connections ;
-(void) captureOutput: (AVCaptureFileOutput *) captureOutput didFinishRecordingToOutputFileAtURL: (NSURL *) outputFileURL fromConnections: (NSArray *) connections error: (NSError *) error ;
@end
@protocol AVCaptureFileOutputRecordingDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVCaptureVideoDataOutputSampleBufferDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) captureOutput didOutputSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
-(void) captureOutput: (AVCaptureOutput *) captureOutput didDropSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureVideoDataOutputSampleBufferDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVCaptureAudioDataOutputSampleBufferDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) captureOutput didOutputSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureAudioDataOutputSampleBufferDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop