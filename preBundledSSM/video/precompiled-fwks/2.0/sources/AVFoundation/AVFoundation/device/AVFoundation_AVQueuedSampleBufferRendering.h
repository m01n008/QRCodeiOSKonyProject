#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVQueuedSampleBufferRendering_symbols(JSContext*);
@protocol AVQueuedSampleBufferRenderingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (getter=isReadyForMoreMediaData,readonly) BOOL readyForMoreMediaData;
@property (readonly,retain) id timebase;
-(void) stopRequestingMediaData;
-(void) enqueueSampleBuffer: (id) sampleBuffer ;
-(void) flush;
@end
@protocol AVQueuedSampleBufferRenderingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop