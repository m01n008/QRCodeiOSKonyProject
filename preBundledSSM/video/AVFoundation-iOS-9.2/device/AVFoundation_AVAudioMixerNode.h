#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioMixerNode_symbols(JSContext*);
@protocol AVAudioMixerNodeInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (nonatomic) float outputVolume;
@property (readonly,nonatomic) AVAudioNodeBus nextAvailableInputBus;
@end
@protocol AVAudioMixerNodeClassExports<JSExport, AVAudioMixingClassExports_>
@end
#pragma clang diagnostic pop