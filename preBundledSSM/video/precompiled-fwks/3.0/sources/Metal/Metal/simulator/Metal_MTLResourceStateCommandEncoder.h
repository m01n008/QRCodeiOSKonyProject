#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLResourceStateCommandEncoder_symbols(JSContext*);
@interface JSValue (Metal_MTLResourceStateCommandEncoder)
+(JSValue*) valueWithMTLMapIndirectArguments: (MTLMapIndirectArguments) s inContext: (JSContext*) context;
-(MTLMapIndirectArguments) toMTLMapIndirectArguments;
@end
@protocol MTLResourceStateCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) updateTextureMapping: (id) texture mode: (const MTLSparseTextureMappingMode) mode indirectBuffer: (id) indirectBuffer indirectBufferOffset: (NSUInteger) indirectBufferOffset ;
-(void) waitForFence: (id) fence ;
-(void) updateFence: (id) fence ;
-(void) updateTextureMapping: (id) texture mode: (const MTLSparseTextureMappingMode) mode region: (const MTLRegion) region mipLevel: (const NSUInteger) mipLevel slice: (const NSUInteger) slice ;
@end
@protocol MTLResourceStateCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop