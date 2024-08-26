#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureFileOutput_symbols(JSContext*);
@protocol AVCaptureMovieFileOutputInstanceExports<JSExport>
@property (nonatomic) CMTime movieFragmentInterval;
@property (readonly,nonatomic) NSArray * availableVideoCodecTypes;
@property (copy,nonatomic) NSArray * metadata;
-(void) setRecordsVideoOrientationAndMirroringChanges: (BOOL) doRecordChanges asMetadataTrackForConnection: (AVCaptureConnection *) connection ;
-(NSArray *) supportedOutputSettingsKeysForConnection: (AVCaptureConnection *) connection ;
-(BOOL) recordsVideoOrientationAndMirroringChangesAsMetadataTrackForConnection: (AVCaptureConnection *) connection ;
-(NSDictionary *) outputSettingsForConnection: (AVCaptureConnection *) connection ;
-(id) jsinit;
-(void) setOutputSettings: (NSDictionary *) outputSettings forConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureMovieFileOutputClassExports<JSExport>
+(id) jsnew;
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
@protocol AVCaptureFileOutputRecordingDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureFileOutput *) output didStartRecordingToOutputFileAtURL: (NSURL *) fileURL fromConnections: (NSArray *) connections ;
-(void) captureOutput: (AVCaptureFileOutput *) output didFinishRecordingToOutputFileAtURL: (NSURL *) outputFileURL fromConnections: (NSArray *) connections error: (NSError *) error ;
@end
@protocol AVCaptureFileOutputRecordingDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop