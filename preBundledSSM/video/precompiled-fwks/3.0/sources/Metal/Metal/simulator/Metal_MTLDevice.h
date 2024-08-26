#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLDevice_symbols(JSContext*);
@interface JSValue (Metal_MTLDevice)
+(JSValue*) valueWithMTLAccelerationStructureSizes: (MTLAccelerationStructureSizes) s inContext: (JSContext*) context;
-(MTLAccelerationStructureSizes) toMTLAccelerationStructureSizes;
+(JSValue*) valueWithMTLSizeAndAlign: (MTLSizeAndAlign) s inContext: (JSContext*) context;
-(MTLSizeAndAlign) toMTLSizeAndAlign;
@end
@protocol MTLArgumentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) NSUInteger index;
@property (nonatomic) NSUInteger constantBlockAlignment;
@property (nonatomic) MTLDataType dataType;
@property (nonatomic) MTLTextureType textureType;
@property (nonatomic) MTLArgumentAccess access;
@property (nonatomic) NSUInteger arrayLength;
@end
@protocol MTLArgumentDescriptorClassExports<JSExport, NSCopyingClassExports_>
+(MTLArgumentDescriptor *) argumentDescriptor;
@end
@protocol MTLDeviceInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) NSUInteger maxBufferLength;
@property (readonly) NSArray * counterSets;
@property (readonly) NSString * name;
@property (readonly) BOOL supportsFunctionPointers;
@property (readonly) BOOL supportsPullModelInterpolation;
@property (readonly) MTLArgumentBuffersTier argumentBuffersSupport;
@property (readonly) BOOL supportsShaderBarycentricCoordinates;
@property (readonly) NSUInteger currentAllocatedSize;
@property (getter=areProgrammableSamplePositionsSupported,readonly) BOOL programmableSamplePositionsSupported;
@property (readonly) BOOL supportsDynamicLibraries;
@property (readonly) MTLSize maxThreadsPerThreadgroup;
@property (readonly) uint64_t registryID;
@property (readonly) BOOL hasUnifiedMemory;
@property (readonly) NSUInteger maxThreadgroupMemoryLength;
@property (readonly) NSUInteger maxArgumentBufferSamplerCount;
@property (readonly) NSUInteger sparseTileSizeInBytes;
@property (getter=areRasterOrderGroupsSupported,readonly) BOOL rasterOrderGroupsSupported;
@property (readonly) MTLReadWriteTextureTier readWriteTextureSupport;
@property (readonly) BOOL supportsRaytracing;
@property (getter=areBarycentricCoordsSupported,readonly) BOOL barycentricCoordsSupported;
-(id) newCommandQueueWithMaxCommandBufferCount: (NSUInteger) maxCommandBufferCount ;
-(BOOL) supportsFeatureSet: (MTLFeatureSet) featureSet ;
-(BOOL) supportsTextureSampleCount: (NSUInteger) sampleCount ;
-(NSUInteger) minimumLinearTextureAlignmentForPixelFormat: (MTLPixelFormat) format ;
-(id) newArgumentEncoderWithArguments: (NSArray *) arguments ;
JSExportAs(newComputePipelineStateWithFunctionOptionsCompletionHandler,
-(void) jsnewComputePipelineStateWithFunction: (id) computeFunction options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
JSExportAs(newLibraryWithFileError,
-(id) jsnewLibraryWithFile: (NSString *) filepath error: (JSValue *) error );
JSExportAs(newRenderPipelineStateWithTileDescriptorOptionsCompletionHandler,
-(void) jsnewRenderPipelineStateWithTileDescriptor: (MTLTileRenderPipelineDescriptor *) descriptor options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
-(MTLSizeAndAlign) heapTextureSizeAndAlignWithDescriptor: (MTLTextureDescriptor *) desc ;
JSExportAs(newDynamicLibraryError,
-(id) jsnewDynamicLibrary: (id) library error: (JSValue *) error );
-(BOOL) supportsFamily: (MTLGPUFamily) gpuFamily ;
-(id) newTextureWithDescriptor: (MTLTextureDescriptor *) descriptor ;
JSExportAs(newCounterSampleBufferWithDescriptorError,
-(id) jsnewCounterSampleBufferWithDescriptor: (MTLCounterSampleBufferDescriptor *) descriptor error: (JSValue *) error );
-(MTLSize) sparseTileSizeWithTextureType: (MTLTextureType) textureType pixelFormat: (MTLPixelFormat) pixelFormat sampleCount: (NSUInteger) sampleCount ;
-(id) newRasterizationRateMapWithDescriptor: (MTLRasterizationRateMapDescriptor *) descriptor ;
JSExportAs(newLibraryWithURLError,
-(id) jsnewLibraryWithURL: (NSURL *) url error: (JSValue *) error );
-(id) newCommandQueue;
JSExportAs(newBinaryArchiveWithDescriptorError,
-(id) jsnewBinaryArchiveWithDescriptor: (MTLBinaryArchiveDescriptor *) descriptor error: (JSValue *) error );
-(id) newDefaultLibrary;
-(BOOL) supportsVertexAmplificationCount: (NSUInteger) count ;
-(BOOL) supportsCounterSampling: (MTLCounterSamplingPoint) samplingPoint ;
JSExportAs(newRenderPipelineStateWithDescriptorError,
-(id) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor error: (JSValue *) error );
-(id) newBufferWithLength: (NSUInteger) length options: (MTLResourceOptions) options ;
JSExportAs(newDynamicLibraryWithURLError,
-(id) jsnewDynamicLibraryWithURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(newComputePipelineStateWithFunctionError,
-(id) jsnewComputePipelineStateWithFunction: (id) computeFunction error: (JSValue *) error );
JSExportAs(newDefaultLibraryWithBundleError,
-(id) jsnewDefaultLibraryWithBundle: (NSBundle *) bundle error: (JSValue *) error );
-(id) newSamplerStateWithDescriptor: (MTLSamplerDescriptor *) descriptor ;
-(MTLAccelerationStructureSizes) accelerationStructureSizesWithDescriptor: (MTLAccelerationStructureDescriptor *) descriptor ;
-(MTLSizeAndAlign) heapBufferSizeAndAlignWithLength: (NSUInteger) length options: (MTLResourceOptions) options ;
JSExportAs(newComputePipelineStateWithFunctionCompletionHandler,
-(void) jsnewComputePipelineStateWithFunction: (id) computeFunction completionHandler: (JSValue *) completionHandler );
-(BOOL) supportsRasterizationRateMapWithLayerCount: (NSUInteger) layerCount ;
JSExportAs(newRenderPipelineStateWithDescriptorCompletionHandler,
-(void) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor completionHandler: (JSValue *) completionHandler );
-(NSUInteger) minimumTextureBufferAlignmentForPixelFormat: (MTLPixelFormat) format ;
JSExportAs(newComputePipelineStateWithDescriptorOptionsCompletionHandler,
-(void) jsnewComputePipelineStateWithDescriptor: (MTLComputePipelineDescriptor *) descriptor options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
-(id) newIndirectCommandBufferWithDescriptor: (MTLIndirectCommandBufferDescriptor *) descriptor maxCommandCount: (NSUInteger) maxCount options: (MTLResourceOptions) options ;
JSExportAs(newRenderPipelineStateWithDescriptorOptionsCompletionHandler,
-(void) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
JSExportAs(newLibraryWithSourceOptionsError,
-(id) jsnewLibraryWithSource: (NSString *) source options: (MTLCompileOptions *) options error: (JSValue *) error );
-(id) newSharedEvent;
-(id) newSharedEventWithHandle: (MTLSharedEventHandle *) sharedEventHandle ;
-(id) newDepthStencilStateWithDescriptor: (MTLDepthStencilDescriptor *) descriptor ;
-(id) newAccelerationStructureWithSize: (NSUInteger) size ;
JSExportAs(newLibraryWithSourceOptionsCompletionHandler,
-(void) jsnewLibraryWithSource: (NSString *) source options: (MTLCompileOptions *) options completionHandler: (JSValue *) completionHandler );
-(id) newHeapWithDescriptor: (MTLHeapDescriptor *) descriptor ;
-(id) newAccelerationStructureWithDescriptor: (MTLAccelerationStructureDescriptor *) descriptor ;
-(id) newFence;
-(id) newEvent;
@end
@protocol MTLDeviceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop