#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLRenderCommandEncoder_symbols(JSContext*);
@interface JSValue (Metal_MTLRenderCommandEncoder)
+(JSValue*) valueWithMTLScissorRect: (MTLScissorRect) s inContext: (JSContext*) context;
-(MTLScissorRect) toMTLScissorRect;
+(JSValue*) valueWithMTLViewport: (MTLViewport) s inContext: (JSContext*) context;
-(MTLViewport) toMTLViewport;
+(JSValue*) valueWithMTLVertexAmplificationViewMapping: (MTLVertexAmplificationViewMapping) s inContext: (JSContext*) context;
-(MTLVertexAmplificationViewMapping) toMTLVertexAmplificationViewMapping;
+(JSValue*) valueWithMTLDrawIndexedPrimitivesIndirectArguments: (MTLDrawIndexedPrimitivesIndirectArguments) s inContext: (JSContext*) context;
-(MTLDrawIndexedPrimitivesIndirectArguments) toMTLDrawIndexedPrimitivesIndirectArguments;
+(JSValue*) valueWithMTLDrawPrimitivesIndirectArguments: (MTLDrawPrimitivesIndirectArguments) s inContext: (JSContext*) context;
-(MTLDrawPrimitivesIndirectArguments) toMTLDrawPrimitivesIndirectArguments;
+(JSValue*) valueWithMTLDrawPatchIndirectArguments: (MTLDrawPatchIndirectArguments) s inContext: (JSContext*) context;
-(MTLDrawPatchIndirectArguments) toMTLDrawPatchIndirectArguments;
@end
@protocol MTLRenderCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
@property (readonly) NSUInteger tileWidth;
@property (readonly) NSUInteger tileHeight;
-(void) drawPrimitives: (MTLPrimitiveType) primitiveType vertexStart: (NSUInteger) vertexStart vertexCount: (NSUInteger) vertexCount ;
-(void) setDepthStoreActionOptions: (MTLStoreActionOptions) storeActionOptions ;
-(void) setTileSamplerState: (id) sampler lodMinClamp: (float) lodMinClamp lodMaxClamp: (float) lodMaxClamp atIndex: (NSUInteger) index ;
-(void) setTileBufferOffset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) updateFence: (id) fence afterStages: (MTLRenderStages) stages ;
-(void) drawPatches: (NSUInteger) numberOfPatchControlPoints patchStart: (NSUInteger) patchStart patchCount: (NSUInteger) patchCount patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance ;
-(void) setVertexBufferOffset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) sampleCountersInBuffer: (id) sampleBuffer atSampleIndex: (NSUInteger) sampleIndex withBarrier: (BOOL) barrier ;
-(void) setTileTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) setViewport: (MTLViewport) viewport ;
-(void) drawPrimitives: (MTLPrimitiveType) primitiveType indirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) drawIndexedPatches: (NSUInteger) numberOfPatchControlPoints patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset controlPointIndexBuffer: (id) controlPointIndexBuffer controlPointIndexBufferOffset: (NSUInteger) controlPointIndexBufferOffset indirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) setVertexSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) useHeap: (id) heap ;
-(void) drawIndexedPatches: (NSUInteger) numberOfPatchControlPoints patchStart: (NSUInteger) patchStart patchCount: (NSUInteger) patchCount patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset controlPointIndexBuffer: (id) controlPointIndexBuffer controlPointIndexBufferOffset: (NSUInteger) controlPointIndexBufferOffset instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance ;
-(void) drawPrimitives: (MTLPrimitiveType) primitiveType vertexStart: (NSUInteger) vertexStart vertexCount: (NSUInteger) vertexCount instanceCount: (NSUInteger) instanceCount baseInstance: (NSUInteger) baseInstance ;
-(void) setStencilFrontReferenceValue: (uint32_t) frontReferenceValue backReferenceValue: (uint32_t) backReferenceValue ;
-(void) setStencilStoreActionOptions: (MTLStoreActionOptions) storeActionOptions ;
-(void) executeCommandsInBuffer: (id) indirectCommandbuffer indirectBuffer: (id) indirectRangeBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) useHeap: (id) heap stages: (MTLRenderStages) stages ;
-(void) setTessellationFactorBuffer: (id) buffer offset: (NSUInteger) offset instanceStride: (NSUInteger) instanceStride ;
-(void) setBlendColorRed: (float) red green: (float) green blue: (float) blue alpha: (float) alpha ;
-(void) setFrontFacingWinding: (MTLWinding) frontFacingWinding ;
-(void) setFragmentTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) drawIndexedPrimitives: (MTLPrimitiveType) primitiveType indexCount: (NSUInteger) indexCount indexType: (MTLIndexType) indexType indexBuffer: (id) indexBuffer indexBufferOffset: (NSUInteger) indexBufferOffset ;
-(void) setColorStoreAction: (MTLStoreAction) storeAction atIndex: (NSUInteger) colorAttachmentIndex ;
-(void) setStencilReferenceValue: (uint32_t) referenceValue ;
-(void) setTessellationFactorScale: (float) scale ;
-(void) setDepthBias: (float) depthBias slopeScale: (float) slopeScale clamp: (float) clamp ;
-(void) executeCommandsInBuffer: (id) indirectCommandBuffer withRange: (NSRange) executionRange ;
-(void) setTileBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setThreadgroupMemoryLength: (NSUInteger) length offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) drawIndexedPrimitives: (MTLPrimitiveType) primitiveType indexType: (MTLIndexType) indexType indexBuffer: (id) indexBuffer indexBufferOffset: (NSUInteger) indexBufferOffset indirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) setFragmentSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) drawPrimitives: (MTLPrimitiveType) primitiveType vertexStart: (NSUInteger) vertexStart vertexCount: (NSUInteger) vertexCount instanceCount: (NSUInteger) instanceCount ;
-(void) setColorStoreActionOptions: (MTLStoreActionOptions) storeActionOptions atIndex: (NSUInteger) colorAttachmentIndex ;
-(void) setDepthStoreAction: (MTLStoreAction) storeAction ;
-(void) setFragmentSamplerState: (id) sampler lodMinClamp: (float) lodMinClamp lodMaxClamp: (float) lodMaxClamp atIndex: (NSUInteger) index ;
-(void) setVertexBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setFragmentBufferOffset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setDepthClipMode: (MTLDepthClipMode) depthClipMode ;
-(void) setTriangleFillMode: (MTLTriangleFillMode) fillMode ;
-(void) setScissorRect: (MTLScissorRect) rect ;
-(void) useResource: (id) resource usage: (MTLResourceUsage) usage ;
-(void) drawPatches: (NSUInteger) numberOfPatchControlPoints patchIndexBuffer: (id) patchIndexBuffer patchIndexBufferOffset: (NSUInteger) patchIndexBufferOffset indirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) setCullMode: (MTLCullMode) cullMode ;
-(void) dispatchThreadsPerTile: (MTLSize) threadsPerTile ;
-(void) setStencilStoreAction: (MTLStoreAction) storeAction ;
-(void) setTileSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) setVertexSamplerState: (id) sampler lodMinClamp: (float) lodMinClamp lodMaxClamp: (float) lodMaxClamp atIndex: (NSUInteger) index ;
-(void) setDepthStencilState: (id) depthStencilState ;
-(void) setVisibilityResultMode: (MTLVisibilityResultMode) mode offset: (NSUInteger) offset ;
-(void) drawIndexedPrimitives: (MTLPrimitiveType) primitiveType indexCount: (NSUInteger) indexCount indexType: (MTLIndexType) indexType indexBuffer: (id) indexBuffer indexBufferOffset: (NSUInteger) indexBufferOffset instanceCount: (NSUInteger) instanceCount baseVertex: (NSInteger) baseVertex baseInstance: (NSUInteger) baseInstance ;
-(void) drawIndexedPrimitives: (MTLPrimitiveType) primitiveType indexCount: (NSUInteger) indexCount indexType: (MTLIndexType) indexType indexBuffer: (id) indexBuffer indexBufferOffset: (NSUInteger) indexBufferOffset instanceCount: (NSUInteger) instanceCount ;
-(void) waitForFence: (id) fence beforeStages: (MTLRenderStages) stages ;
-(void) setFragmentBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) useResource: (id) resource usage: (MTLResourceUsage) usage stages: (MTLRenderStages) stages ;
-(void) setVertexTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) setRenderPipelineState: (id) pipelineState ;
@end
@protocol MTLRenderCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop