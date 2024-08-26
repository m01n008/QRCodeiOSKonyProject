#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSampleBufferDisplayLayer_symbols(JSContext*);
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryInstanceExports<JSExport>
@property (getter=isReadyForMoreMediaData,readonly) BOOL readyForMoreMediaData;
-(void) flushAndRemoveImage;
-(void) stopRequestingMediaData;
-(void) enqueueSampleBuffer: (id) sampleBuffer ;
-(void) flush;
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferDisplayLayerInstanceExports<JSExport>
@property (readonly,nonatomic) AVQueuedSampleBufferRenderingStatus status;
@property (retain) id controlTimebase;
@property (copy) NSString * videoGravity;
@property (readonly,nonatomic) NSError * error;
@end
@protocol AVSampleBufferDisplayLayerClassExports<JSExport>
@end
#pragma clang diagnostic pop