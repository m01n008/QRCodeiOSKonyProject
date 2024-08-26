#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitEffect_symbols(JSContext*);
@protocol AVAudioUnitEffectInstanceExports<JSExport>
@property (nonatomic) BOOL bypass;
JSExportAs(initWithAudioComponentDescription,
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) audioComponentDescription );
@end
@protocol AVAudioUnitEffectClassExports<JSExport>
@end
#pragma clang diagnostic pop