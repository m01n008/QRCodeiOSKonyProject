#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioIONode_symbols(JSContext*);
@protocol AVAudioOutputNodeInstanceExports<JSExport>
@end
@protocol AVAudioOutputNodeClassExports<JSExport>
@end
@protocol AVAudioInputNodeInstanceExports<JSExport, AVAudioMixingInstanceExports_>
@property (getter=isVoiceProcessingInputMuted,nonatomic) BOOL voiceProcessingInputMuted;
@property (getter=isVoiceProcessingAGCEnabled,nonatomic) BOOL voiceProcessingAGCEnabled;
@property (getter=isVoiceProcessingBypassed,nonatomic) BOOL voiceProcessingBypassed;
@end
@protocol AVAudioInputNodeClassExports<JSExport, AVAudioMixingClassExports_>
@end
@protocol AVAudioIONodeInstanceExports<JSExport>
@property (getter=isVoiceProcessingEnabled,readonly,nonatomic) BOOL voiceProcessingEnabled;
@property (readonly,nonatomic) NSTimeInterval presentationLatency;
@property (readonly,nonatomic) id audioUnit;
JSExportAs(setVoiceProcessingEnabledError,
-(BOOL) jssetVoiceProcessingEnabled: (BOOL) enabled error: (JSValue *) outError );
@end
@protocol AVAudioIONodeClassExports<JSExport>
@end
#pragma clang diagnostic pop