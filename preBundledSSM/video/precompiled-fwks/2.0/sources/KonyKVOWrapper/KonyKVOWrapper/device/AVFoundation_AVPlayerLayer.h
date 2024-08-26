#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVPlayerLayer_symbols(JSContext*);
@protocol AVPlayerLayerInstanceExports<JSExport>
@property (copy,nonatomic) NSDictionary * pixelBufferAttributes;
@property (retain,nonatomic) AVPlayer * player;
@property (copy) AVLayerVideoGravity videoGravity;
@property (readonly,nonatomic) CGRect videoRect;
@property (getter=isReadyForDisplay,readonly,nonatomic) BOOL readyForDisplay;
@end
@protocol AVPlayerLayerClassExports<JSExport>
+(AVPlayerLayer *) playerLayerWithPlayer: (AVPlayer *) player ;
@end
#pragma clang diagnostic pop