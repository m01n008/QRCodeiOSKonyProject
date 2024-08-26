#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSampleBufferRenderSynchronizer_symbols(JSContext*);
@protocol AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagementCategoryInstanceExports<JSExport>
@property (readonly,atomic) NSArray * renderers;
JSExportAs(removeRendererAtTimeCompletionHandler,
-(void) jsremoveRenderer: (id) renderer atTime: (CMTime) time completionHandler: (JSValue *) completionHandler );
-(void) addRenderer: (id) renderer ;
@end
@protocol AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerRendererManagementCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerTimeObservationCategoryInstanceExports<JSExport>
-(void) removeTimeObserver: (id) observer ;
@end
@protocol AVSampleBufferRenderSynchronizerAVSampleBufferRenderSynchronizerTimeObservationCategoryClassExports<JSExport>
@end
@protocol AVSampleBufferRenderSynchronizerInstanceExports<JSExport>
@property (readwrite,nonatomic) float rate;
@property (readonly,retain) id timebase;
-(void) setRate: (float) rate time: (CMTime) time ;
-(CMTime) currentTime;
@end
@protocol AVSampleBufferRenderSynchronizerClassExports<JSExport>
@end
#pragma clang diagnostic pop