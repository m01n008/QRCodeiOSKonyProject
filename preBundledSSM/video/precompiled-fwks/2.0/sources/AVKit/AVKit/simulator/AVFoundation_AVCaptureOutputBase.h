#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureOutputBase_symbols(JSContext*);
@protocol AVCaptureOutputInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * connections;
-(CGRect) metadataOutputRectOfInterestForRect: (CGRect) rectInOutputCoordinates ;
-(AVMetadataObject *) transformedMetadataObjectForMetadataObject: (AVMetadataObject *) metadataObject connection: (AVCaptureConnection *) connection ;
-(CGRect) rectForMetadataOutputRectOfInterest: (CGRect) rectInMetadataOutputCoordinates ;
-(AVCaptureConnection *) connectionWithMediaType: (AVMediaType) mediaType ;
@end
@protocol AVCaptureOutputClassExports<JSExport>
@end
#pragma clang diagnostic pop