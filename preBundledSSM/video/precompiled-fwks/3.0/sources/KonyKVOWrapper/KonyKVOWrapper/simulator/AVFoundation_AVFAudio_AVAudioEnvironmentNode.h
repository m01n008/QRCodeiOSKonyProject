#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioEnvironmentNode_symbols(JSContext*);
@protocol AVAudioEnvironmentDistanceAttenuationParametersInstanceExports<JSExport>
@property (nonatomic) float maximumDistance;
@property (nonatomic) float rolloffFactor;
@property (nonatomic) AVAudioEnvironmentDistanceAttenuationModel distanceAttenuationModel;
@property (nonatomic) float referenceDistance;
@end
@protocol AVAudioEnvironmentDistanceAttenuationParametersClassExports<JSExport>
@end
@protocol AVAudioEnvironmentReverbParametersInstanceExports<JSExport>
@property (nonatomic) BOOL enable;
@property (readonly,nonatomic) AVAudioUnitEQFilterParameters * filterParameters;
@property (nonatomic) float level;
-(void) loadFactoryReverbPreset: (AVAudioUnitReverbPreset) preset ;
@end
@protocol AVAudioEnvironmentReverbParametersClassExports<JSExport>
@end
@protocol AVAudioEnvironmentNodeInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (nonatomic) float outputVolume;
@property (readonly,nonatomic) AVAudioEnvironmentReverbParameters * reverbParameters;
@property (nonatomic) AVAudio3DPoint listenerPosition;
@property (nonatomic) AVAudioEnvironmentOutputType outputType;
@property (readonly,nonatomic) AVAudioEnvironmentDistanceAttenuationParameters * distanceAttenuationParameters;
@property (readonly,nonatomic) AVAudioNodeBus nextAvailableInputBus;
@property (nonatomic) AVAudio3DVectorOrientation listenerVectorOrientation;
@property (nonatomic) AVAudio3DAngularOrientation listenerAngularOrientation;
@property (readonly,nonatomic) NSArray * applicableRenderingAlgorithms;
-(id) jsinit;
@end
@protocol AVAudioEnvironmentNodeClassExports<JSExport, AVAudioMixingClassExports_>
@end
#pragma clang diagnostic pop