#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVRouteDetector_symbols(JSContext*);
@protocol AVRouteDetectorInstanceExports<JSExport>
@property (getter=isRouteDetectionEnabled) BOOL routeDetectionEnabled;
@property (readonly) BOOL multipleRoutesDetected;
@end
@protocol AVRouteDetectorClassExports<JSExport>
@end
#pragma clang diagnostic pop