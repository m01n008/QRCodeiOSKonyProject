#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitDistortion_symbols(JSContext*);
@protocol AVAudioUnitDistortionInstanceExports<JSExport>
@property (nonatomic) float preGain;
@property (nonatomic) float wetDryMix;
-(void) loadFactoryPreset: (AVAudioUnitDistortionPreset) preset ;
@end
@protocol AVAudioUnitDistortionClassExports<JSExport>
@end
#pragma clang diagnostic pop