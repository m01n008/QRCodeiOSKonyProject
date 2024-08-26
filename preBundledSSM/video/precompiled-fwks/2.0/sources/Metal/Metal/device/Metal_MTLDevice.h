#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLDevice_symbols(JSContext*);
@interface JSValue (Metal_MTLDevice)
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
@property (readonly) NSString * name;
@property (readonly) NSUInteger maxThreadgroupMemoryLength;
@property (readonly) MTLArgumentBuffersTier argumentBuffersSupport;
@property (readonly) NSUInteger currentAllocatedSize;
@property (getter=areProgrammableSamplePositionsSupported,readonly) BOOL programmableSamplePositionsSupported;
@property (readonly) MTLSize maxThreadsPerThreadgroup;
@property (readonly) uint64_t registryID;
@property (getter=areRasterOrderGroupsSupported,readonly) BOOL rasterOrderGroupsSupported;
@property (readonly) MTLReadWriteTextureTier readWriteTextureSupport;
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
-(id) newTextureWithDescriptor: (MTLTextureDescriptor *) descriptor ;
JSExportAs(newLibraryWithURLError,
-(id) jsnewLibraryWithURL: (NSURL *) url error: (JSValue *) error );
-(id) newCommandQueue;
-(id) newDefaultLibrary;
JSExportAs(newRenderPipelineStateWithDescriptorError,
-(id) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor error: (JSValue *) error );
-(id) newBufferWithLength: (NSUInteger) length options: (MTLResourceOptions) options ;
JSExportAs(newComputePipelineStateWithFunctionError,
-(id) jsnewComputePipelineStateWithFunction: (id) computeFunction error: (JSValue *) error );
JSExportAs(newDefaultLibraryWithBundleError,
-(id) jsnewDefaultLibraryWithBundle: (NSBundle *) bundle error: (JSValue *) error );
-(id) newSamplerStateWithDescriptor: (MTLSamplerDescriptor *) descriptor ;
-(MTLSizeAndAlign) heapBufferSizeAndAlignWithLength: (NSUInteger) length options: (MTLResourceOptions) options ;
JSExportAs(newComputePipelineStateWithFunctionCompletionHandler,
-(void) jsnewComputePipelineStateWithFunction: (id) computeFunction completionHandler: (JSValue *) completionHandler );
JSExportAs(newRenderPipelineStateWithDescriptorCompletionHandler,
-(void) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor completionHandler: (JSValue *) completionHandler );
JSExportAs(newComputePipelineStateWithDescriptorOptionsCompletionHandler,
-(void) jsnewComputePipelineStateWithDescriptor: (MTLComputePipelineDescriptor *) descriptor options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
JSExportAs(newRenderPipelineStateWithDescriptorOptionsCompletionHandler,
-(void) jsnewRenderPipelineStateWithDescriptor: (MTLRenderPipelineDescriptor *) descriptor options: (MTLPipelineOption) options completionHandler: (JSValue *) completionHandler );
JSExportAs(newLibraryWithSourceOptionsError,
-(id) jsnewLibraryWithSource: (NSString *) source options: (MTLCompileOptions *) options error: (JSValue *) error );
-(id) newDepthStencilStateWithDescriptor: (MTLDepthStencilDescriptor *) descriptor ;
JSExportAs(newLibraryWithSourceOptionsCompletionHandler,
-(void) jsnewLibraryWithSource: (NSString *) source options: (MTLCompileOptions *) options completionHandler: (JSValue *) completionHandler );
-(id) newHeapWithDescriptor: (MTLHeapDescriptor *) descriptor ;
-(id) newFence;
@end
@protocol MTLDeviceClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop