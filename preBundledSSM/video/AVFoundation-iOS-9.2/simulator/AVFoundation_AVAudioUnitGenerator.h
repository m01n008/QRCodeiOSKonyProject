#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioUnitGenerator_symbols(JSContext*);
@protocol AVAudioUnitGeneratorInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (nonatomic) BOOL bypass;
JSExportAs(initWithAudioComponentDescription,
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) audioComponentDescription );
@end
@protocol AVAudioUnitGeneratorClassExports<JSExport, AVAudioMixingClassExports_>
@end
#pragma clang diagnostic pop