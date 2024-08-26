#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Metal_MTLAccelerationStructureCommandEncoder_symbols(JSContext*);
@protocol MTLAccelerationStructureCommandEncoderInstanceExports_<JSExport, MTLCommandEncoderInstanceExports_>
-(void) waitForFence: (id) fence ;
-(void) writeCompactedAccelerationStructureSize: (id) accelerationStructure toBuffer: (id) buffer offset: (NSUInteger) offset ;
-(void) copyAndCompactAccelerationStructure: (id) sourceAccelerationStructure toAccelerationStructure: (id) destinationAccelerationStructure ;
-(void) sampleCountersInBuffer: (id) sampleBuffer atSampleIndex: (NSUInteger) sampleIndex withBarrier: (BOOL) barrier ;
-(void) useResource: (id) resource usage: (MTLResourceUsage) usage ;
-(void) useHeap: (id) heap ;
-(void) updateFence: (id) fence ;
-(void) buildAccelerationStructure: (id) accelerationStructure descriptor: (MTLAccelerationStructureDescriptor *) descriptor scratchBuffer: (id) scratchBuffer scratchBufferOffset: (NSUInteger) scratchBufferOffset ;
-(void) copyAccelerationStructure: (id) sourceAccelerationStructure toAccelerationStructure: (id) destinationAccelerationStructure ;
-(void) refitAccelerationStructure: (id) sourceAccelerationStructure descriptor: (MTLAccelerationStructureDescriptor *) descriptor destination: (id) destinationAccelerationStructure scratchBuffer: (id) scratchBuffer scratchBufferOffset: (NSUInteger) scratchBufferOffset ;
@end
@protocol MTLAccelerationStructureCommandEncoderClassExports_<JSExport, MTLCommandEncoderClassExports_>
@end
#pragma clang diagnostic pop