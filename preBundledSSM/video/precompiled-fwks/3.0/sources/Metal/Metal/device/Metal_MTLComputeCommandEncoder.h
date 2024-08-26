#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLComputeCommandEncoder_symbols(JSContext*);
@protocol MTLComputeCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
@property (readonly) MTLDispatchType dispatchType;
-(void) setStageInRegion: (MTLRegion) region ;
-(void) setTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) dispatchThreads: (MTLSize) threadsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) sampleCountersInBuffer: (id) sampleBuffer atSampleIndex: (NSUInteger) sampleIndex withBarrier: (BOOL) barrier ;
-(void) setBufferOffset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) executeCommandsInBuffer: (id) indirectCommandbuffer indirectBuffer: (id) indirectRangeBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) setVisibleFunctionTable: (id) visibleFunctionTable atBufferIndex: (NSUInteger) bufferIndex ;
-(void) dispatchThreadgroups: (MTLSize) threadgroupsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) setComputePipelineState: (id) state ;
-(void) executeCommandsInBuffer: (id) indirectCommandBuffer withRange: (NSRange) executionRange ;
-(void) waitForFence: (id) fence ;
-(void) useHeap: (id) heap ;
-(void) setAccelerationStructure: (id) accelerationStructure atBufferIndex: (NSUInteger) bufferIndex ;
-(void) useResource: (id) resource usage: (MTLResourceUsage) usage ;
-(void) setThreadgroupMemoryLength: (NSUInteger) length atIndex: (NSUInteger) index ;
-(void) setSamplerState: (id) sampler lodMinClamp: (float) lodMinClamp lodMaxClamp: (float) lodMaxClamp atIndex: (NSUInteger) index ;
-(void) updateFence: (id) fence ;
-(void) setIntersectionFunctionTable: (id) intersectionFunctionTable atBufferIndex: (NSUInteger) bufferIndex ;
-(void) setStageInRegionWithIndirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) setBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) dispatchThreadgroupsWithIndirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) setImageblockWidth: (NSUInteger) width height: (NSUInteger) height ;
-(void) memoryBarrierWithScope: (MTLBarrierScope) scope ;
@end
@protocol MTLComputeCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop