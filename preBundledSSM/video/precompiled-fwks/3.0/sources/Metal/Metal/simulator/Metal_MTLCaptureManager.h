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
#pragma clang diagnostic pop