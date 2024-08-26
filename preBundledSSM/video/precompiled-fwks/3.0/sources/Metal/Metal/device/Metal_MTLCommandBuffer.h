#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLCommandBuffer_symbols(JSContext*);
@protocol MTLCommandBufferDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,nonatomic) BOOL retainedReferences;
@property (readwrite,nonatomic) MTLCommandBufferErrorOption errorOptions;
@end
@protocol MTLCommandBufferDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLCommandBufferInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) MTLCommandBufferStatus status;
@property (readonly) CFTimeInterval kernelEndTime;
@property (readonly) id logs;
@property (readonly) BOOL retainedReferences;
@property (readonly) CFTimeInterval GPUEndTime;
@property (copy,atomic) NSString * label;
@property (readonly) id commandQueue;
@property (readonly) CFTimeInterval GPUStartTime;
@property (readonly) MTLCommandBufferErrorOption errorOptions;
@property (readonly) CFTimeInterval kernelStartTime;
@property (readonly) NSError * error;
@property (readonly) id device;
-(id) resourceStateCommandEncoderWithDescriptor: (MTLResourceStatePassDescriptor *) resourceStatePassDescriptor ;
-(id) computeCommandEncoderWithDispatchType: (MTLDispatchType) dispatchType ;
-(void) presentDrawable: (id) drawable atTime: (CFTimeInterval) presentationTime ;
-(id) blitCommandEncoderWithDescriptor: (MTLBlitPassDescriptor *) blitPassDescriptor ;
-(id) computeCommandEncoderWithDescriptor: (MTLComputePassDescriptor *) computePassDescriptor ;
-(void) waitUntilCompleted;
-(id) computeCommandEncoder;
-(void) presentDrawable: (id) drawable afterMinimumDuration: (CFTimeInterval) duration ;
-(void) waitUntilScheduled;
JSExportAs(addScheduledHandler,
-(void) jsaddScheduledHandler: (JSValue *) block );
-(void) popDebugGroup;
-(id) parallelRenderCommandEncoderWithDescriptor: (MTLRenderPassDescriptor *) renderPassDescriptor ;
-(void) enqueue;
-(id) accelerationStructureCommandEncoder;
-(void) pushDebugGroup: (NSString *) string ;
-(void) presentDrawable: (id) drawable ;
-(id) resourceStateCommandEncoder;
-(id) renderCommandEncoderWithDescriptor: (MTLRenderPassDescriptor *) renderPassDescriptor ;
JSExportAs(addCompletedHandler,
-(void) jsaddCompletedHandler: (JSValue *) block );
-(void) commit;
-(id) blitCommandEncoder;
-(void) encodeWaitForEvent: (id) event value: (uint64_t) value ;
-(void) encodeSignalEvent: (id) event value: (uint64_t) value ;
@end
@protocol MTLCommandBufferClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLCommandBufferEncoderInfoInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) NSArray * debugSignposts;
@property (readonly,nonatomic) MTLCommandEncoderErrorState errorState;
@property (readonly,nonatomic) NSString * label;
@end
@protocol MTLCommandBufferEncoderInfoClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop