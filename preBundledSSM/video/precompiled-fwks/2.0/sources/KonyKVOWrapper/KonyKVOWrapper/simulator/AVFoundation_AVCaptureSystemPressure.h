#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVCaptureSystemPressure_symbols(JSContext*);
@protocol AVCaptureSystemPressureStateInstanceExports<JSExport>
@property (readonly,atomic) AVCaptureSystemPressureFactors factors;
@property (readonly,atomic) AVCaptureSystemPressureLevel level;
@end
@protocol AVCaptureSystemPressureStateClassExports<JSExport>
@end
#pragma clang diagnostic pop