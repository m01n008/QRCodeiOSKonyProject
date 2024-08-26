#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLBlitCommandEncoder_symbols(JSContext*);
@protocol MTLBlitCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset sourceBytesPerRow: (NSUInteger) sourceBytesPerRow sourceBytesPerImage: (NSUInteger) sourceBytesPerImage sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin ;
-(void) optimizeContentsForCPUAccess: (id) texture ;
-(void) generateMipmapsForTexture: (id) texture ;
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset size: (NSUInteger) size ;
-(void) optimizeContentsForGPUAccess: (id) texture slice: (NSUInteger) slice level: (NSUInteger) level ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset destinationBytesPerRow: (NSUInteger) destinationBytesPerRow destinationBytesPerImage: (NSUInteger) destinationBytesPerImage ;
-(void) getTextureAccessCounters: (id) texture region: (MTLRegion) region mipLevel: (NSUInteger) mipLevel slice: (NSUInteger) slice resetCounters: (BOOL) resetCounters countersBuffer: (id) countersBuffer countersBufferOffset: (NSUInteger) countersBufferOffset ;
-(void) optimizeContentsForGPUAccess: (id) texture ;
-(void) resetCommandsInBuffer: (id) buffer withRange: (NSRange) range ;
-(void) waitForFence: (id) fence ;
-(void) copyFromTexture: (id) sourceTexture toTexture: (id) destinationTexture ;
-(void) optimizeContentsForCPUAccess: (id) texture slice: (NSUInteger) slice level: (NSUInteger) level ;
-(void) resetTextureAccessCounters: (id) texture region: (MTLRegion) region mipLevel: (NSUInteger) mipLevel slice: (NSUInteger) slice ;
-(void) optimizeIndirectCommandBuffer: (id) indirectCommandBuffer withRange: (NSRange) range ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel sliceCount: (NSUInteger) sliceCount levelCount: (NSUInteger) levelCount ;
-(void) sampleCountersInBuffer: (id) sampleBuffer atSampleIndex: (NSUInteger) sampleIndex withBarrier: (BOOL) barrier ;
-(void) updateFence: (id) fence ;
-(void) copyIndirectCommandBuffer: (id) source sourceRange: (NSRange) sourceRange destination: (id) destination destinationIndex: (NSUInteger) destinationIndex ;
-(void) copyFromBuffer: (id) sourceBuffer sourceOffset: (NSUInteger) sourceOffset sourceBytesPerRow: (NSUInteger) sourceBytesPerRow sourceBytesPerImage: (NSUInteger) sourceBytesPerImage sourceSize: (MTLSize) sourceSize toTexture: (id) destinationTexture destinationSlice: (NSUInteger) destinationSlice destinationLevel: (NSUInteger) destinationLevel destinationOrigin: (MTLOrigin) destinationOrigin options: (MTLBlitOption) options ;
-(void) fillBuffer: (id) buffer range: (NSRange) range value: (uint8_t) value ;
-(void) resolveCounters: (id) sampleBuffer inRange: (NSRange) range destinationBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset ;
-(void) copyFromTexture: (id) sourceTexture sourceSlice: (NSUInteger) sourceSlice sourceLevel: (NSUInteger) sourceLevel sourceOrigin: (MTLOrigin) sourceOrigin sourceSize: (MTLSize) sourceSize toBuffer: (id) destinationBuffer destinationOffset: (NSUInteger) destinationOffset destinationBytesPerRow: (NSUInteger) destinationBytesPerRow destinationBytesPerImage: (NSUInteger) destinationBytesPerImage options: (MTLBlitOption) options ;
@end
@protocol MTLBlitCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop