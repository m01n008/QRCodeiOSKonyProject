#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLComputePipeline_symbols(JSContext*);
@protocol MTLComputePipelineReflectionInstanceExports<JSExport>
@property (readonly) NSArray * arguments;
@end
@protocol MTLComputePipelineReflectionClassExports<JSExport>
@end
@protocol MTLComputePipelineDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,nonatomic) BOOL threadGroupSizeIsMultipleOfThreadExecutionWidth;
@property (readwrite,nonatomic) NSUInteger maxCallStackDepth;
@property (copy,nonatomic) MTLStageInputOutputDescriptor * stageInputDescriptor;
@property (copy,nonatomic) NSString * label;
@property (readwrite,nonatomic,strong) id computeFunction;
@property (readwrite,nonatomic) BOOL supportAddingBinaryFunctions;
@property (readwrite,nonatomic) BOOL supportIndirectCommandBuffers;
@property (readwrite,copy,nonatomic) NSArray * insertLibraries;
@property (readwrite,nonatomic) NSUInteger maxTotalThreadsPerThreadgroup;
@property (readwrite,copy,nonatomic) NSArray * binaryArchives;
@property (copy,nonatomic) MTLLinkedFunctions * linkedFunctions;
@property (readonly) MTLPipelineBufferDescriptorArray * buffers;
-(void) reset;
@end
@protocol MTLComputePipelineDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLComputePipelineStateInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) BOOL supportIndirectCommandBuffers;
@property (readonly) NSString * label;
@property (readonly) NSUInteger threadExecutionWidth;
@property (readonly) NSUInteger staticThreadgroupMemoryLength;
@property (readonly) NSUInteger maxTotalThreadsPerThreadgroup;
@property (readonly) id device;
-(id) newIntersectionFunctionTableWithDescriptor: (MTLIntersectionFunctionTableDescriptor *) descriptor ;
-(id) newVisibleFunctionTableWithDescriptor: (MTLVisibleFunctionTableDescriptor *) descriptor ;
JSExportAs(newComputePipelineStateWithAdditionalBinaryFunctionsError,
-(id) jsnewComputePipelineStateWithAdditionalBinaryFunctions: (NSArray *) functions error: (JSValue *) error );
-(NSUInteger) imageblockMemoryLengthForDimensions: (MTLSize) imageblockDimensions ;
-(id) functionHandleWithFunction: (id) function ;
@end
@protocol MTLComputePipelineStateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop