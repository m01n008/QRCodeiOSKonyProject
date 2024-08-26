#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLBlitCommandEncoder_symbols(JSContext*);
@protocol MTLBlitCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) waitForFence: (id) fence ;
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset sourceBytesPerRow: (NSUInteger) sourceBytesPerRow sourceBytesPerImage: (NSUInteger) sourceBytesPerImage sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin options: (MTLBlitOption) options ;
-(void) fillBuffer: (id) buffer range: (NSRange) range value: (uint8_t) value ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset destinationBytesPerRow: (NSUInteger) destinationBytesPerRow destinationBytesPerImage: (NSUInteger) destinationBytesPerImage options: (MTLBlitOption) options ;
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset sourceBytesPerRow: (NSUInteger) sourceBytesPerRow sourceBytesPerImage: (NSUInteger) sourceBytesPerImage sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset destinationBytesPerRow: (NSUInteger) destinationBytesPerRow destinationBytesPerImage: (NSUInteger) destinationBytesPerImage ;
-(void) generateMipmapsForTexture: (id) texture ;
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset size: (NSUInteger) size ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin ;
-(void) updateFence: (id) fence ;
@end
@protocol MTLBlitCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop