#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVSpeechUtterance (Exports)
-(id) jsinitWithString: (NSString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithString: string ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation AVSpeechSynthesisVoice (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
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
static void registerEnumConstants(JSContext* context)
{
	context[@"AVSpeechBoundaryImmediate"] = @0;
	context[@"AVSpeechBoundaryWord"] = @1;

	context[@"AVSpeechSynthesisVoiceQualityDefault"] = @1;
	context[@"AVSpeechSynthesisVoiceQualityEnhanced"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVSpeechUtteranceDefaultSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceDefaultSpeechRate"] = @(AVSpeechUtteranceDefaultSpeechRate);
	p = (void*) &AVSpeechSynthesisVoiceIdentifierAlex;
	if (p != NULL) context[@"AVSpeechSynthesisVoiceIdentifierAlex"] = AVSpeechSynthesisVoiceIdentifierAlex;
	p = (void*) &AVSpeechUtteranceMinimumSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceMinimumSpeechRate"] = @(AVSpeechUtteranceMinimumSpeechRate);
	p = (void*) &AVSpeechUtteranceMaximumSpeechRate;
	if (p != NULL) context[@"AVSpeechUtteranceMaximumSpeechRate"] = @(AVSpeechUtteranceMaximumSpeechRate);
}
void AVFoundation_AVSpeechSynthesisProtocols()
{
	(void)@protocol(AVSpeechSynthesizerDelegate);
}
void load_AVFoundation_AVSpeechSynthesis_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
