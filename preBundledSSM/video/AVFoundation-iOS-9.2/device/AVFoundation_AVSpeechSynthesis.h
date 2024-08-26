#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVSpeechSynthesis_symbols(JSContext*);
@protocol AVSpeechSynthesizerInstanceExports<JSExport>
@property (getter=isPaused,readonly,nonatomic) BOOL paused;
@property (assign,nonatomic) id delegate;
@property (getter=isSpeaking,readonly,nonatomic) BOOL speaking;
-(BOOL) continueSpeaking;
-(void) speakUtterance: (AVSpeechUtterance *) utterance ;
-(BOOL) pauseSpeakingAtBoundary: (AVSpeechBoundary) boundary ;
-(BOOL) stopSpeakingAtBoundary: (AVSpeechBoundary) boundary ;
@end
@protocol AVSpeechSynthesizerClassExports<JSExport>
@end
@protocol AVSpeechUtteranceInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) NSTimeInterval preUtteranceDelay;
@property (readonly,nonatomic) NSString * speechString;
@property (nonatomic) float pitchMultiplier;
@property (nonatomic) float volume;
@property (nonatomic) float rate;
@property (retain,nonatomic) AVSpeechSynthesisVoice * voice;
@property (nonatomic) NSTimeInterval postUtteranceDelay;
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) string );
@end
@protocol AVSpeechUtteranceClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) speechUtteranceWithString: (NSString *) string ;
@end
@protocol AVSpeechSynthesisVoiceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) NSString * identifier;
@property (readonly,nonatomic) AVSpeechSynthesisVoiceQuality quality;
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) NSString * language;
@end
@protocol AVSpeechSynthesisVoiceClassExports<JSExport, NSSecureCodingClassExports_>
+(AVSpeechSynthesisVoice *) voiceWithIdentifier: (NSString *) identifier ;
+(AVSpeechSynthesisVoice *) voiceWithLanguage: (NSString *) languageCode ;
+(NSString *) currentLanguageCode;
+(NSArray *) speechVoices;
@end
@protocol AVSpeechSynthesizerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer didStartSpeechUtterance: (AVSpeechUtterance *) utterance ;
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer didContinueSpeechUtterance: (AVSpeechUtterance *) utterance ;
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer willSpeakRangeOfSpeechString: (NSRange) characterRange utterance: (AVSpeechUtterance *) utterance ;
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer didCancelSpeechUtterance: (AVSpeechUtterance *) utterance ;
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer didFinishSpeechUtterance: (AVSpeechUtterance *) utterance ;
-(void) speechSynthesizer: (AVSpeechSynthesizer *) synthesizer didPauseSpeechUtterance: (AVSpeechUtterance *) utterance ;
@end
@protocol AVSpeechSynthesizerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop