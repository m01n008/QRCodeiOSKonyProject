#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureVideoDataOutput_symbols(JSContext*);
@protocol AVCaptureVideoDataOutputInstanceExports<JSExport>
@property (copy,nonatomic) NSDictionary * videoSettings;
@property (readonly,nonatomic) NSArray * availableVideoCodecTypes;
@property (readonly,nonatomic) id sampleBufferDelegate;
@property (nonatomic) BOOL automaticallyConfiguresOutputBufferDimensions;
@property (nonatomic) CMTime minFrameDuration;
@property (nonatomic) BOOL alwaysDiscardsLateVideoFrames;
@property (readonly,nonatomic) NSArray * availableVideoCVPixelFormatTypes;
@property (nonatomic) BOOL deliversPreviewSizedOutputBuffers;
-(NSDictionary *) recommendedVideoSettingsForVideoCodecType: (AVVideoCodecType) videoCodecType assetWriterOutputFileType: (AVFileType) outputFileType ;
-(NSArray *) availableVideoCodecTypesForAssetWriterWithOutputFileType: (AVFileType) outputFileType ;
-(NSDictionary *) recommendedVideoSettingsForAssetWriterWithOutputFileType: (AVFileType) outputFileType ;
-(id) jsinit;
@end
@protocol AVCaptureVideoDataOutputClassExports<JSExport>
+(id) jsnew;
@end
@protocol AVCaptureVideoDataOutputSampleBufferDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) output didOutputSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
-(void) captureOutput: (AVCaptureOutput *) output didDropSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureVideoDataOutputSampleBufferDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop