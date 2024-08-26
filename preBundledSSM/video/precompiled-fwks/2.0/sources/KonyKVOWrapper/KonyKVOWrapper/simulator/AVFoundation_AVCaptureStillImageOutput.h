#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureStillImageOutput_symbols(JSContext*);
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
-(id) jsinit;
@end
@protocol AVCaptureStillImageOutputClassExports<JSExport>
+(id) jsnew;
+(NSData *) jpegStillImageNSDataRepresentation: (id) jpegSampleBuffer ;
@end
@protocol AVCaptureAutoExposureBracketedStillImageSettingsInstanceExports<JSExport>
@property (readonly) float exposureTargetBias;
@end
@protocol AVCaptureAutoExposureBracketedStillImageSettingsClassExports<JSExport>
+(id) autoExposureSettingsWithExposureTargetBias: (float) exposureTargetBias ;
@end
@protocol AVCaptureManualExposureBracketedStillImageSettingsInstanceExports<JSExport>
@property (readonly) float ISO;
@property (readonly) CMTime exposureDuration;
@end
@protocol AVCaptureManualExposureBracketedStillImageSettingsClassExports<JSExport>
+(id) manualExposureSettingsWithExposureDuration: (CMTime) duration ISO: (float) ISO ;
@end
@protocol AVCaptureBracketedStillImageSettingsInstanceExports<JSExport>
@end
@protocol AVCaptureBracketedStillImageSettingsClassExports<JSExport>
@end
@protocol AVCaptureStillImageOutputAVCaptureStillImageOutputBracketedCaptureCategoryInstanceExports<JSExport>
@property (getter=isLensStabilizationDuringBracketedCaptureSupported,readonly,nonatomic) BOOL lensStabilizationDuringBracketedCaptureSupported;
@property (getter=isLensStabilizationDuringBracketedCaptureEnabled,nonatomic) BOOL lensStabilizationDuringBracketedCaptureEnabled;
@property (readonly,nonatomic) NSUInteger maxBracketedCaptureStillImageCount;
JSExportAs(prepareToCaptureStillImageBracketFromConnectionWithSettingsArrayCompletionHandler,
-(void) jsprepareToCaptureStillImageBracketFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler );
JSExportAs(captureStillImageBracketAsynchronouslyFromConnectionWithSettingsArrayCompletionHandler,
-(void) jscaptureStillImageBracketAsynchronouslyFromConnection: (AVCaptureConnection *) connection withSettingsArray: (NSArray *) settings completionHandler: (JSValue *) handler );
@end
@protocol AVCaptureStillImageOutputAVCaptureStillImageOutputBracketedCaptureCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop