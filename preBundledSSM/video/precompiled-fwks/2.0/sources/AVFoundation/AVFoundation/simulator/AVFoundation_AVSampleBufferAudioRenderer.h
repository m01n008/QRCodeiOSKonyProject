#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSampleBufferAudioRenderer_symbols(JSContext*);
@protocol AVSampleBufferAudioRendererInstanceExports<JSExport, AVQueuedSampleBufferRenderingInstanceExports_>
@property (readonly,nonatomic) AVQueuedSampleBufferRenderingStatus status;
@property (copy,nonatomic) AVAudioTimePitchAlgorithm audioTimePitchAlgorithm;
@property (copy,nonatomic) NSString * audioOutputDeviceUniqueID;
@property (readonly,nonatomic) NSError * error;
@end
@protocol AVSampleBufferAudioRendererClassExports<JSExport, AVQueuedSampleBufferRenderingClassExports_>
@end
@protocol AVSampleBufferAudioRendererAVSampleBufferAudioRendererVolumeControlCategoryInstanceExports<JSExport>
@property (nonatomic) float volume;
@property (getter=isMuted,nonatomic) BOOL muted;
@end
@protocol AVSampleBufferAudioRendererAVSampleBufferAudioRendererVolumeControlCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferAudioRendererAVSampleBufferAudioRendererQueueManagementCategoryInstanceExports<JSExport>
JSExportAs(flushFromSourceTimeCompletionHandler,
-(void) jsflushFromSourceTime: (CMTime) time completionHandler: (JSValue *) completionHandler );
@end
@protocol AVSampleBufferAudioRendererAVSampleBufferAudioRendererQueueManagementCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop