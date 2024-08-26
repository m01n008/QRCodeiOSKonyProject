#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVSpeechSynthesis_symbols(JSContext*);
@protocol AVSpeechSynthesizerInstanceExports<JSExport>
@property (retain,nonatomic) NSArray * outputChannels;
@property (assign,nonatomic) BOOL mixToTelephonyUplink;
@property (getter=isPaused,readonly,nonatomic) BOOL paused;
@property (nonatomic,weak) id delegate;
@property (assign,nonatomic) BOOL usesApplicationAudioSession;
@property (getter=isSpeaking,readonly,nonatomic) BOOL speaking;
-(BOOL) continueSpeaking;
JSExportAs(writeUtteranceToBufferCallback,
-(void) jswriteUtterance: (AVSpeechUtterance *) utterance toBufferCallback: (JSValue *) bufferCallback );
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
@property (nonatomic) BOOL prefersAssistiveTechnologySettings;
@property (nonatomic) NSTimeInterval postUtteranceDelay;
@property (readonly,nonatomic) NSAttributedString * attributedSpeechString;
JSExportAs(initWithAttributedString,
-(id) jsinitWithAttributedString: (NSAttributedString *) string );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) string );
@end
@protocol AVSpeechUtteranceClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
+(id) speechUtteranceWithString: (NSString *) string ;
+(id) speechUtteranceWithAttributedString: (NSAttributedString *) string ;
@end
@protocol AVSpeechSynthesisVoiceInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) NSString * name;
@property (readonly,nonatomic) NSString * language;
@property (readonly,nonatomic) AVSpeechSynthesisVoiceGender gender;
@property (readonly,nonatomic) NSDictionary * audioFileSettings;
@property (readonly,nonatomic) NSString * identifier;
@property (readonly,nonatomic) AVSpeechSynthesisVoiceQuality quality;
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