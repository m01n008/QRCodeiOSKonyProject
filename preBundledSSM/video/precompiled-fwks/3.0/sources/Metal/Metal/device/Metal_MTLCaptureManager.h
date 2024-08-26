#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCaptureManager_symbols(JSContext*);
@protocol MTLCaptureDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (assign,nonatomic) MTLCaptureDestination destination;
@property (nonatomic,strong) id captureObject;
@property (copy,nonatomic) NSURL * outputURL;
@end
@protocol MTLCaptureDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLCaptureManagerInstanceExports<JSExport>
@property (readonly) BOOL isCapturing;
@property (readwrite,atomic,strong) id defaultCaptureScope;
-(void) startCaptureWithDevice: (id) device ;
-(BOOL) supportsDestination: (MTLCaptureDestination) destination ;
JSExportAs(startCaptureWithDescriptorError,
-(BOOL) jsstartCaptureWithDescriptor: (MTLCaptureDescriptor *) descriptor error: (JSValue *) error );
-(id) newCaptureScopeWithDevice: (id) device ;
-(void) startCaptureWithScope: (id) captureScope ;
-(void) stopCapture;
-(void) startCaptureWithCommandQueue: (id) commandQueue ;
-(id) newCaptureScopeWithCommandQueue: (id) commandQueue ;
@end
@protocol MTLCaptureManagerClassExports<JSExport>
+(MTLCaptureManager *) sharedCaptureManager;
@end
#pragma clang diagnostic pop