#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureVideoPreviewLayer_symbols(JSContext*);
@protocol AVCaptureVideoPreviewLayerInstanceExports<JSExport>
@property (copy) AVLayerVideoGravity videoGravity;
@property (getter=isMirrored,nonatomic) BOOL mirrored;
@property (getter=isMirroringSupported,readonly,nonatomic) BOOL mirroringSupported;
@property (readonly,nonatomic) AVCaptureConnection * connection;
@property (retain,nonatomic) AVCaptureSession * session;
@property (getter=isOrientationSupported,readonly,nonatomic) BOOL orientationSupported;
@property (nonatomic) BOOL automaticallyAdjustsMirroring;
@property (nonatomic) AVCaptureVideoOrientation orientation;
JSExportAs(initWithSession,
-(id) jsinitWithSession: (AVCaptureSession *) session );
-(AVMetadataObject *) transformedMetadataObjectForMetadataObject: (AVMetadataObject *) metadataObject ;
-(void) setSessionWithNoConnection: (AVCaptureSession *) session ;
-(CGRect) rectForMetadataOutputRectOfInterest: (CGRect) rectInMetadataOutputCoordinates ;
-(CGPoint) pointForCaptureDevicePointOfInterest: (CGPoint) captureDevicePointOfInterest ;
-(CGRect) metadataOutputRectOfInterestForRect: (CGRect) rectInLayerCoordinates ;
-(CGPoint) captureDevicePointOfInterestForPoint: (CGPoint) pointInLayer ;
JSExportAs(initWithSessionWithNoConnection,
-(id) jsinitWithSessionWithNoConnection: (AVCaptureSession *) session );
@end
@protocol AVCaptureVideoPreviewLayerClassExports<JSExport>
+(id) layerWithSession: (AVCaptureSession *) session ;
+(id) layerWithSessionWithNoConnection: (AVCaptureSession *) session ;
@end
#pragma clang diagnostic pop