#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioUnitTimePitch_symbols(JSContext*);
@protocol AVAudioUnitTimePitchInstanceExports<JSExport>
@property (nonatomic) float rate;
@property (nonatomic) float overlap;
@property (nonatomic) float pitch;
@end
@protocol AVAudioUnitTimePitchClassExports<JSExport>
@end
#pragma clang diagnostic pop