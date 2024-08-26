#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLArgumentEncoder_symbols(JSContext*);
@protocol MTLArgumentEncoderInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly) id device;
@property (readonly) NSUInteger encodedLength;
@property (readonly) NSUInteger alignment;
@property (copy,atomic) NSString * label;
-(void) setTexture: (id) texture atIndex: (NSUInteger) index ;
-(void) setArgumentBuffer: (id) argumentBuffer offset: (NSUInteger) offset ;
-(id) newArgumentEncoderForBufferAtIndex: (NSUInteger) index ;
-(void) setAccelerationStructure: (id) accelerationStructure atIndex: (NSUInteger) index ;
-(void) setIndirectCommandBuffer: (id) indirectCommandBuffer atIndex: (NSUInteger) index ;
-(void) setSamplerState: (id) sampler atIndex: (NSUInteger) index ;
-(void) setVisibleFunctionTable: (id) visibleFunctionTable atIndex: (NSUInteger) index ;
-(void) setComputePipelineState: (id) pipeline atIndex: (NSUInteger) index ;
-(void) setArgumentBuffer: (id) argumentBuffer startOffset: (NSUInteger) startOffset arrayElement: (NSUInteger) arrayElement ;
-(void) setRenderPipelineState: (id) pipeline atIndex: (NSUInteger) index ;
-(void) setBuffer: (id) buffer offset: (NSUInteger) offset atIndex: (NSUInteger) index ;
-(void) setIntersectionFunctionTable: (id) intersectionFunctionTable atIndex: (NSUInteger) index ;
@end
@protocol MTLArgumentEncoderClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop