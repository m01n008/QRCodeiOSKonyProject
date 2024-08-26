#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSampleBufferDisplayLayer_symbols(JSContext*);
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryInstanceExports<JSExport, AVQueuedSampleBufferRenderingInstanceExports_>
@property (readonly,nonatomic) AVQueuedSampleBufferRenderingStatus status;
@property (getter=isReadyForMoreMediaData,readonly) BOOL readyForMoreMediaData;
@property (readonly,nonatomic) BOOL requiresFlushToResumeDecoding;
@property (readonly,nonatomic) NSError * error;
-(void) flushAndRemoveImage;
-(void) stopRequestingMediaData;
-(void) enqueueSampleBuffer: (id) sampleBuffer ;
-(void) flush;
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerQueueManagementCategoryClassExports<JSExport, AVQueuedSampleBufferRenderingClassExports_>
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerImageProtectionCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL preventsCapture;
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerImageProtectionCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerVideoDisplaySleepPreventionCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL preventsDisplaySleepDuringVideoPlayback;
@end
@protocol AVSampleBufferDisplayLayerAVSampleBufferDisplayLayerVideoDisplaySleepPreventionCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferDisplayLayerInstanceExports<JSExport>
@property (retain) id controlTimebase;
@property (copy) AVLayerVideoGravity videoGravity;
@end
@protocol AVSampleBufferDisplayLayerClassExports<JSExport>
@end
#pragma clang diagnostic pop