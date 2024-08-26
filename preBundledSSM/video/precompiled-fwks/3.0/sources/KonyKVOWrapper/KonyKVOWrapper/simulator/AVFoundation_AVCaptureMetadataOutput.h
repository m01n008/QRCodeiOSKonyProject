#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureMetadataOutput_symbols(JSContext*);
@protocol AVCaptureMetadataOutputInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * availableMetadataObjectTypes;
@property (readonly,nonatomic) id metadataObjectsDelegate;
@property (copy,nonatomic) NSArray * metadataObjectTypes;
@property (nonatomic) CGRect rectOfInterest;
-(id) jsinit;
@end
@protocol AVCaptureMetadataOutputClassExports<JSExport>
+(id) jsnew;
@end
@protocol AVCaptureMetadataOutputObjectsDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) captureOutput: (AVCaptureOutput *) output didOutputMetadataObjects: (NSArray *) metadataObjects fromConnection: (AVCaptureConnection *) connection ;
@end
@protocol AVCaptureMetadataOutputObjectsDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop