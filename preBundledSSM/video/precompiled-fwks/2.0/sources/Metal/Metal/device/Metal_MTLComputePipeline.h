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
@property (readwrite,nonatomic,strong) id computeFunction;
@property (readwrite,nonatomic) BOOL threadGroupSizeIsMultipleOfThreadExecutionWidth;
@property (copy,nonatomic) MTLStageInputOutputDescriptor * stageInputDescriptor;
@property (readonly) MTLPipelineBufferDescriptorArray * buffers;
@property (copy,nonatomic) NSString * label;
-(void) reset;
@end
@protocol MTLComputePipelineDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLComputePipelineStateInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSUInteger threadExecutionWidth;
@property (readonly) NSUInteger staticThreadgroupMemoryLength;
@property (readonly) NSUInteger maxTotalThreadsPerThreadgroup;
@property (readonly) NSString * label;
-(NSUInteger) imageblockMemoryLengthForDimensions: (MTLSize) imageblockDimensions ;
@end
@protocol MTLComputePipelineStateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop