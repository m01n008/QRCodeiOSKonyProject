#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLPipeline_symbols(JSContext*);
@protocol MTLPipelineBufferDescriptorArrayInstanceExports<JSExport>
-(void) setObject: (MTLPipelineBufferDescriptor *) buffer atIndexedSubscript: (NSUInteger) bufferIndex ;
-(MTLPipelineBufferDescriptor *) objectAtIndexedSubscript: (NSUInteger) bufferIndex ;
@end
@protocol MTLPipelineBufferDescriptorArrayClassExports<JSExport>
@end
@protocol MTLPipelineBufferDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) MTLMutability mutability;
@end
@protocol MTLPipelineBufferDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop