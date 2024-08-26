#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCommandBuffer_symbols(JSContext*);
@protocol MTLCommandBufferInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLCommandBufferStatus status;
@property (readonly) CFTimeInterval kernelEndTime;
@property (readonly) BOOL retainedReferences;
@property (readonly) CFTimeInterval GPUEndTime;
@property (copy,atomic) NSString * label;
@property (readonly) id commandQueue;
@property (readonly) CFTimeInterval GPUStartTime;
@property (readonly) CFTimeInterval kernelStartTime;
@property (readonly) NSError * error;
@property (readonly) id device;
-(void) waitUntilScheduled;
-(void) presentDrawable: (id) drawable atTime: (CFTimeInterval) presentationTime ;
-(void) waitUntilCompleted;
-(id) computeCommandEncoder;
-(void) presentDrawable: (id) drawable afterMinimumDuration: (CFTimeInterval) duration ;
JSExportAs(addScheduledHandler,
-(void) jsaddScheduledHandler: (JSValue *) block );
-(void) popDebugGroup;
-(id) parallelRenderCommandEncoderWithDescriptor: (MTLRenderPassDescriptor *) renderPassDescriptor ;
-(void) enqueue;
-(void) pushDebugGroup: (NSString *) string ;
-(void) presentDrawable: (id) drawable ;
-(id) renderCommandEncoderWithDescriptor: (MTLRenderPassDescriptor *) renderPassDescriptor ;
-(void) commit;
-(id) blitCommandEncoder;
JSExportAs(addCompletedHandler,
-(void) jsaddCompletedHandler: (JSValue *) block );
@end
@protocol MTLCommandBufferClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop