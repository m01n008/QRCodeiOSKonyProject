#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSynchronizedLayer_symbols(JSContext*);
@protocol AVSynchronizedLayerInstanceExports<JSExport>
@property (retain,nonatomic) AVPlayerItem * playerItem;
@end
@protocol AVSynchronizedLayerClassExports<JSExport>
+(AVSynchronizedLayer *) synchronizedLayerWithPlayerItem: (AVPlayerItem *) playerItem ;
@end
#pragma clang diagnostic pop