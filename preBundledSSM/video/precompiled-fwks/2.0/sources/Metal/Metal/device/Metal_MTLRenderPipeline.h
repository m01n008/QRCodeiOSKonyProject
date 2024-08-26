#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLRenderPipeline_symbols(JSContext*);
@protocol MTLRenderPipelineColorAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLColorWriteMask writeMask;
@property (nonatomic) MTLBlendFactor sourceRGBBlendFactor;
@property (nonatomic) MTLBlendFactor sourceAlphaBlendFactor;
@property (nonatomic) MTLPixelFormat pixelFormat;
@property (nonatomic) MTLBlendFactor destinationAlphaBlendFactor;
@property (nonatomic) MTLBlendOperation rgbBlendOperation;
@property (getter=isBlendingEnabled,nonatomic) BOOL blendingEnabled;
@property (nonatomic) MTLBlendFactor destinationRGBBlendFactor;
@property (nonatomic) MTLBlendOperation alphaBlendOperation;
@end
@protocol MTLRenderPipelineColorAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLTileRenderPipelineColorAttachmentDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLPixelFormat pixelFormat;
@end
@protocol MTLTileRenderPipelineColorAttachmentDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLTileRenderPipelineColorAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLTileRenderPipelineColorAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLTileRenderPipelineColorAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLTileRenderPipelineColorAttachmentDescriptorArrayClassExports<JSExport>
@end
@protocol MTLRenderPipelineDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (getter=isTessellationFactorScaleEnabled,readwrite,nonatomic) BOOL tessellationFactorScaleEnabled;
@property (copy,nonatomic) MTLVertexDescriptor * vertexDescriptor;
@property (nonatomic) MTLPixelFormat stencilAttachmentPixelFormat;
@property (readwrite,nonatomic) MTLTessellationFactorFormat tessellationFactorFormat;
@property (getter=isRasterizationEnabled,readwrite,nonatomic) BOOL rasterizationEnabled;
@property (getter=isAlphaToOneEnabled,readwrite,nonatomic) BOOL alphaToOneEnabled;
@property (readwrite,nonatomic) MTLTessellationControlPointIndexType tessellationControlPointIndexType;
@property (readonly) MTLRenderPipelineColorAttachmentDescriptorArray * colorAttachments;
@property (readwrite,nonatomic) NSUInteger sampleCount;
@property (nonatomic) MTLPixelFormat depthAttachmentPixelFormat;
@property (readonly) MTLPipelineBufferDescriptorArray * vertexBuffers;
@property (copy,nonatomic) NSString * label;
@property (readwrite,nonatomic,strong) id fragmentFunction;
@property (readwrite,nonatomic) MTLWinding tessellationOutputWindingOrder;
@property (readwrite,nonatomic) MTLTessellationFactorStepFunction tessellationFactorStepFunction;
@property (readonly) MTLPipelineBufferDescriptorArray * fragmentBuffers;
@property (readwrite,nonatomic,strong) id vertexFunction;
@property (readwrite,nonatomic) NSUInteger rasterSampleCount;
@property (readwrite,nonatomic) MTLTessellationPartitionMode tessellationPartitionMode;
@property (getter=isAlphaToCoverageEnabled,readwrite,nonatomic) BOOL alphaToCoverageEnabled;
@property (readwrite,nonatomic) NSUInteger maxTessellationFactor;
-(void) reset;
@end
@protocol MTLRenderPipelineDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLRenderPipelineReflectionInstanceExports<JSExport>
@property (readonly) NSArray * tileArguments;
@property (readonly) NSArray * vertexArguments;
@property (readonly) NSArray * fragmentArguments;
@end
@protocol MTLRenderPipelineReflectionClassExports<JSExport>
@end
@protocol MTLTileRenderPipelineDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly) MTLPipelineBufferDescriptorArray * tileBuffers;
@property (readwrite,nonatomic,strong) id tileFunction;
@property (copy,nonatomic) NSString * label;
@property (readonly) MTLTileRenderPipelineColorAttachmentDescriptorArray * colorAttachments;
@property (readwrite,nonatomic) BOOL threadgroupSizeMatchesTileSize;
@property (readwrite,nonatomic) NSUInteger rasterSampleCount;
-(void) reset;
@end
@protocol MTLTileRenderPipelineDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLRenderPipelineColorAttachmentDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLRenderPipelineColorAttachmentDescriptor *) attachment atIndexedSubscript: (NSUInteger) attachmentIndex ;
-(MTLRenderPipelineColorAttachmentDescriptor *) objectAtIndexedSubscript: (NSUInteger) attachmentIndex ;
@end
@protocol MTLRenderPipelineColorAttachmentDescriptorArrayClassExports<JSExport>
@end
@protocol MTLRenderPipelineStateInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) BOOL threadgroupSizeMatchesTileSize;
@property (readonly) NSUInteger imageblockSampleLength;
@property (readonly) NSUInteger maxTotalThreadsPerThreadgroup;
@property (readonly) NSString * label;
-(NSUInteger) imageblockMemoryLengthForDimensions: (MTLSize) imageblockDimensions ;
@end
@protocol MTLRenderPipelineStateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop