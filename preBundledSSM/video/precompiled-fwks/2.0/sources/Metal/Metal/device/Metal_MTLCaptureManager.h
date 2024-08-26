#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCaptureManager_symbols(JSContext*);
@protocol MTLCaptureManagerInstanceExports<JSExport>
@property (readonly) BOOL isCapturing;
@property (readwrite,atomic,strong) id defaultCaptureScope;
-(void) startCaptureWithDevice: (id) device ;
-(void) startCaptureWithScope: (id) captureScope ;
-(id) newCaptureScopeWithDevice: (id) device ;
-(void) stopCapture;
-(void) startCaptureWithCommandQueue: (id) commandQueue ;
-(id) newCaptureScopeWithCommandQueue: (id) commandQueue ;
@end
@protocol MTLCaptureManagerClassExports<JSExport>
+(MTLCaptureManager *) sharedCaptureManager;
@end
#pragma clang diagnostic pop