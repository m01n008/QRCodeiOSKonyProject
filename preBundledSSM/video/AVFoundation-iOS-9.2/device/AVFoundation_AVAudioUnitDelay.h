#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitDelay_symbols(JSContext*);
@protocol AVAudioUnitDelayInstanceExports<JSExport>
@property (nonatomic) float wetDryMix;
@property (nonatomic) NSTimeInterval delayTime;
@property (nonatomic) float feedback;
@property (nonatomic) float lowPassCutoff;
@end
@protocol AVAudioUnitDelayClassExports<JSExport>
@end
#pragma clang diagnostic pop