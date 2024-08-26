#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLIndirectCommandEncoder_symbols(JSContext*);
@protocol MTLIndirectComputeCommandInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) reset;
-(void) setImageblockWidth: (NSUInteger) width height: (NSUInteger) height ;
-(void) setKernelBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setBarrier;
-(void) setStageInRegion: (MTLRegion) region ;
-(void) clearBarrier;
-(void) concurrentDispatchThreads: (MTLSize) threadsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
-(void) setThreadgroupMemoryLength: (NSUInteger) length atIndex: (NSUInteger) index ;
-(void) setComputePipelineState: (id) pipelineState ;
-(void) concurrentDispatchThreadgroups: (MTLSize) threadgroupsPerGrid threadsPerThreadgroup: (MTLSize) threadsPerThreadgroup ;
@end
@protocol MTLIndirectComputeCommandClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol MTLIndirectRenderCommandInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) reset;
-(void) drawPrimitives: (MTLPrimitiveType) primitiveType vertexStart: (NSUInteger) vertexStart vertexCount: (NSUInteger) vertexCount instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance ;
-(void) drawIndexedPatches: (NSUInteger) numberOfPatchControlPoints patchStart: (NSUInteger) patchStart patchCount: (NSUInteger) patchCount patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset controlPointIndexBuffer: (id) controlPointIndexBuffer controlPointIndexBufferOffset: (NSUInteger) controlPointIndexBufferOffset instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance tessellationFactorBuffer: (id) buffer tessellationFactorBufferOffset: (NSUInteger) offset tessellationFactorBufferInstanceStride: (NSUInteger) instanceStride ;
-(void) setFragmentBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setVertexBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) drawIndexedPrimitives: (MTLPrimitiveType) primitiveType indexCount: (NSUInteger) indexCount indexType: (MTLIndexType) indexType indexBuffer: (id) indexBuffer indexBufferOffset: (NSUInteger) indexBufferOffset instanceCount: (NSUInteger) instanceCount baseVertex: (NSInteger) baseVertex baseInstance: (NSUInteger) baseInstance ;
-(void) drawPatches: (NSUInteger) numberOfPatchControlPoints patchStart: (NSUInteger) patchStart patchCount: (NSUInteger) patchCount patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance tessellationFactorBuffer: (id) buffer tessellationFactorBufferOffset: (NSUInteger) offset tessellationFactorBufferInstanceStride: (NSUInteger) instanceStride ;
-(void) setRenderPipelineState: (id) pipelineState ;
@end
@protocol MTLIndirectRenderCommandClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop