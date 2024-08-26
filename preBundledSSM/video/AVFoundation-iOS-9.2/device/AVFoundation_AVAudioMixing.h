#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioMixing_symbols(JSContext*);
@protocol AVAudioMixingDestinationInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (readonly,nonatomic) AVAudioConnectionPoint * connectionPoint;
@end
@protocol AVAudioMixingDestinationClassExports<JSExport, AVAudioMixingClassExports_>
@end
@protocol AVAudioMixingInstanceExports_<JSExport, AVAudioStereoMixingInstanceExports_, AVAudio3DMixingInstanceExports_>
@property (nonatomic) float volume;
-(AVAudioMixingDestination *) destinationForMixer: (AVAudioNode *) mixer bus: (AVAudioNodeBus) bus ;
@end
@protocol AVAudioMixingClassExports_<JSExport, AVAudioStereoMixingClassExports_, AVAudio3DMixingClassExports_>
@end
@protocol AVAudio3DMixingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (nonatomic) float reverbBlend;
@property (nonatomic) float occlusion;
@property (nonatomic) float obstruction;
@property (nonatomic) float rate;
@property (nonatomic) AVAudio3DMixingRenderingAlgorithm renderingAlgorithm;
@property (nonatomic) AVAudio3DPoint position;
@end
@protocol AVAudio3DMixingClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol AVAudioStereoMixingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (nonatomic) float pan;
@end
@protocol AVAudioStereoMixingClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop