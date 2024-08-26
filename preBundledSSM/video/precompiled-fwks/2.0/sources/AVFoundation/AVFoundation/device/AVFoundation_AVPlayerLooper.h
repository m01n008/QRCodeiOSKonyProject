#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerLooper_symbols(JSContext*);
@protocol AVPlayerLooperInstanceExports<JSExport>
@property (readonly) AVPlayerLooperStatus status;
@property (readonly,nonatomic) NSArray * loopingPlayerItems;
@property (readonly) NSInteger loopCount;
@property (readonly) NSError * error;
-(void) disableLooping;
JSExportAs(initWithPlayerTemplateItemTimeRange,
-(id) jsinitWithPlayer: (AVQueuePlayer *) player templateItem: (AVPlayerItem *) itemToLoop timeRange: (CMTimeRange) loopRange );
@end
@protocol AVPlayerLooperClassExports<JSExport>
+(id) playerLooperWithPlayer: (AVQueuePlayer *) player templateItem: (AVPlayerItem *) itemToLoop ;
+(id) playerLooperWithPlayer: (AVQueuePlayer *) player templateItem: (AVPlayerItem *) itemToLoop timeRange: (CMTimeRange) loopRange ;
@end
#pragma clang diagnostic pop