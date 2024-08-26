#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCommandQueue_symbols(JSContext*);
@protocol MTLCommandQueueInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (copy,atomic) NSString * label;
-(void) insertDebugCaptureBoundary;
-(id) commandBufferWithDescriptor: (MTLCommandBufferDescriptor *) descriptor ;
-(id) commandBufferWithUnretainedReferences;
-(id) commandBuffer;
@end
@protocol MTLCommandQueueClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop