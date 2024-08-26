#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLComputeCommandEncoder_symbols(JSContext*);
@protocol MTLComputeCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) setStageInRegion: (MTLRegion) region ;
-(void) setTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) setBufferOffset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) dispatchThreadgroups: (MTLSize) threadgroupsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) setComputePipelineState: (id) state ;
-(void) waitForFence: (id) fence ;
-(void) setImageblockWidth: (NSUInteger) width height: (NSUInteger) height ;
-(void) useResource: (id) resource usage: (MTLResourceUsage) usage ;
-(void) setThreadgroupMemoryLength: (NSUInteger) length atIndex: (NSUInteger) index ;
-(void) setSamplerState: (id) sampler lodMinClamp: (float) lodMinClamp lodMaxClamp: (float) lodMaxClamp atIndex: (NSUInteger) index ;
-(void) updateFence: (id) fence ;
-(void) dispatchThreads: (MTLSize) threadsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) setBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) dispatchThreadgroupsWithIndirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) useHeap: (id) heap ;
@end
@protocol MTLComputeCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop