#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCameraCalibrationData_symbols(JSContext*);
@protocol AVCameraCalibrationDataInstanceExports<JSExport>
@property (readonly,nonatomic) CGSize intrinsicMatrixReferenceDimensions;
@property (readonly,nonatomic) NSData * inverseLensDistortionLookupTable;
@property (readonly,nonatomic) NSData * lensDistortionLookupTable;
@property (readonly,nonatomic) CGPoint lensDistortionCenter;
@property (readonly,nonatomic) float pixelSize;
@end
@protocol AVCameraCalibrationDataClassExports<JSExport>
@end
#pragma clang diagnostic pop