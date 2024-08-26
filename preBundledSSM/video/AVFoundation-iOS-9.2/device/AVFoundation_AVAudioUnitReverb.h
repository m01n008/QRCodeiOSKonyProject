#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitReverb_symbols(JSContext*);
@protocol AVAudioUnitReverbInstanceExports<JSExport>
@property (nonatomic) float wetDryMix;
-(void) loadFactoryPreset: (AVAudioUnitReverbPreset) preset ;
@end
@protocol AVAudioUnitReverbClassExports<JSExport>
@end
#pragma clang diagnostic pop