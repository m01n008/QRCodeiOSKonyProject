#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLIndirectCommandBuffer_symbols(JSContext*);
@interface JSValue (Metal_MTLIndirectCommandBuffer)
+(JSValue*) valueWithMTLIndirectCommandBufferExecutionRange: (MTLIndirectCommandBufferExecutionRange) s inContext: (JSContext*) context;
-(MTLIndirectCommandBufferExecutionRange) toMTLIndirectCommandBufferExecutionRange;
@end
@protocol MTLIndirectCommandBufferDescriptorInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readwrite,nonatomic) BOOL inheritPipelineState;
@property (readwrite,nonatomic) MTLIndirectCommandType commandTypes;
@property (readwrite,nonatomic) NSUInteger maxVertexBufferBindCount;
@property (readwrite,nonatomic) NSUInteger maxFragmentBufferBindCount;
@property (readwrite,nonatomic) BOOL inheritBuffers;
@property (readwrite,nonatomic) NSUInteger maxKernelBufferBindCount;
@end
@protocol MTLIndirectCommandBufferDescriptorClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol MTLIndirectCommandBufferInstanceExports_<JSExport, MTLResourceInstanceExports_>
@property (readonly) NSUInteger size;
-(void) resetWithRange: (NSRange) range ;
-(id) indirectRenderCommandAtIndex: (NSUInteger) commandIndex ;
-(id) indirectComputeCommandAtIndex: (NSUInteger) commandIndex ;
@end
@protocol MTLIndirectCommandBufferClassExports_<JSExport, MTLResourceClassExports_>
@end
#pragma clang diagnostic pop