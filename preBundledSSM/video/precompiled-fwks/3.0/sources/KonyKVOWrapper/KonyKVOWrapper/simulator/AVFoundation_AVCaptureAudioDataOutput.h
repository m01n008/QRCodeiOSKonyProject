#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureAudioDataOutput_symbols(JSContext*);
@protocol AVCaptureAudioDataOutputInstanceExports<JSExport>
@property (readonly,nonatomic) id sampleBufferDelegate;
-(NSDictionary *) recommendedAudioSettingsForAssetWriterWithOutputFileType: (AVFileType) outputFileType ;
-(id) jsinit;
@end
@protocol AVCaptureAudioDataOutputClassExports<JSExport>
+(id) jsnew;
@end
@protocol AVCaptureAudioDataOutputSampleBufferDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) output didOutputSampleBuffer: (id) sampleBuffer fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureAudioDataOutputSampleBufferDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop