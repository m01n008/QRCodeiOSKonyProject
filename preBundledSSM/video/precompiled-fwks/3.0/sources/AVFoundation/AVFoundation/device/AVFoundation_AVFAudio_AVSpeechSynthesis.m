#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVSpeechSynthesizer (Exports)
-(void) jswriteUtterance: (AVSpeechUtterance *) utterance toBufferCallback: (JSValue *) bufferCallback 
{
	void (^ bufferCallback_)(AVAudioBuffer * ) = nil;
	if (!bufferCallback.isUndefined) {
		bufferCallback_ = ^void(AVAudioBuffer * arg0) {
			JSContext* __jsContext = bufferCallback.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, bufferCallback, self, parameters);
		};
	}
	[self writeUtterance: utterance toBufferCallback: bufferCallback_ ];
}
@end
@implementation AVSpeechUtterance (Exports)
-(id) jsinitWithAttributedString: (NSAttributedString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithAttributedString: string ] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithString: string ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation AVSpeechSynthesisVoice (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVSpeechSynthesizer class], @protocol(AVSpeechSynthesizerInstanceExports));
	class_addProtocol([AVSpeechSynthesizer class], @protocol(AVSpeechSynthesizerClassExports));
	class_addProtocol([AVSpeechUtterance class], @protocol(AVSpeechUtteranceInstanceExports));
	class_addProtocol([AVSpeechUtterance class], @protocol(AVSpeechUtteranceClassExports));
	class_addProtocol([AVSpeechSynthesisVoice class], @protocol(AVSpeechSynthesisVoiceInstanceExports));
	class_addProtocol([AVSpeechSynthesisVoice class], @protocol(AVSpeechSynthesisVoiceClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVSpeechBoundaryImmediate"] = @0;
	context[@"AVSpeechBoundaryWord"] = @1;

	context[@"AVSpeechSynthesisVoiceQualityDefault"] = @1;
	context[@"AVSpeechSynthesisVoiceQualityEnhanced"] = @2;

	context[@"AVSpeechSynthesisVoiceGenderUnspecified"] = @0;
	context[@"AVSpeechSynthesisVoiceGenderMale"] = @1;
	context[@"AVSpeechSynthesisVoiceGenderFemale"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVSpeechUtteranceDefaultSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceDefaultSpeechRate"] = @(AVSpeechUtteranceDefaultSpeechRate);
	p = (void*) &AVSpeechSynthesisIPANotationAttribute;
	if (p != NULL) context[@"AVSpeechSynthesisIPANotationAttribute"] = AVSpeechSynthesisIPANotationAttribute;
	p = (void*) &AVSpeechSynthesisVoiceIdentifierAlex;
	if (p != NULL) context[@"AVSpeechSynthesisVoiceIdentifierAlex"] = AVSpeechSynthesisVoiceIdentifierAlex;
	p = (void*) &AVSpeechUtteranceMinimumSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceMinimumSpeechRate"] = @(AVSpeechUtteranceMinimumSpeechRate);
	p = (void*) &AVSpeechUtteranceMaximumSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceMaximumSpeechRate"] = @(AVSpeechUtteranceMaximumSpeechRate);
}
void AVFoundation_AVFAudio_AVSpeechSynthesisProtocols()
{
	(void)@protocol(AVSpeechSynthesizerDelegate);
}
void load_AVFoundation_AVFAudio_AVSpeechSynthesis_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
