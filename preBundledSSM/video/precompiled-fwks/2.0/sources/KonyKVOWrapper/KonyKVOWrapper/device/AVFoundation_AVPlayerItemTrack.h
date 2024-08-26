#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerItemTrack_symbols(JSContext*);
@protocol AVPlayerItemTrackInstanceExports<JSExport>
@property (readonly,nonatomic) float currentVideoFrameRate;
@property (getter=isEnabled,assign,nonatomic) BOOL enabled;
@property (readonly,nonatomic) AVAssetTrack * assetTrack;
@end
@protocol AVPlayerItemTrackClassExports<JSExport>
@end
#pragma clang diagnostic pop