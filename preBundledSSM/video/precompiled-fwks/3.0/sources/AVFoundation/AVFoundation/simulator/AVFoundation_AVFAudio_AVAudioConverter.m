#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AVFoundation_AVFAudio_AVAudioConverter)
+(JSValue*) valueWithAVAudioConverterPrimeInfo: (AVAudioConverterPrimeInfo) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"leadingFrames": @(s.leadingFrames),
		@"trailingFrames": @(s.trailingFrames),
	} inContext: context];
}
-(AVAudioConverterPrimeInfo) toAVAudioConverterPrimeInfo {
	return (AVAudioConverterPrimeInfo) {
		(AVAudioFrameCount) [self[@"leadingFrames"] toUInt32],
		(AVAudioFrameCount) [self[@"trailingFrames"] toUInt32],
	};
}
@end
@implementation AVAudioConverter (Exports)
-(BOOL) jsconvertToBuffer: (AVAudioPCMBuffer *) outputBuffer fromBuffer: (const AVAudioPCMBuffer *) inputBuffer error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self convertToBuffer: outputBuffer fromBuffer: inputBuffer error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitFromFormat: (AVAudioFormat *) fromFormat toFormat: (AVAudioFormat *) toFormat 
{
	id resultVal__;
	resultVal__ = [[self initFromFormat: fromFormat toFormat: toFormat ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioConverter class], @protocol(AVAudioConverterInstanceExports));
	class_addProtocol([AVAudioConverter class], @protocol(AVAudioConverterClassExports));
	class_addProtocol([AVAudioConverter class], @protocol(AVAudioConverterEncodingCategoryInstanceExports));
	class_addProtocol([AVAudioConverter class], @protocol(AVAudioConverterEncodingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioConverterPrimeMethod_Pre"] = @0L;
	context[@"AVAudioConverterPrimeMethod_Normal"] = @1L;
	context[@"AVAudioConverterPrimeMethod_None"] = @2L;

	context[@"AVAudioConverterInputStatus_HaveData"] = @0L;
	context[@"AVAudioConverterInputStatus_NoDataNow"] = @1L;
	context[@"AVAudioConverterInputStatus_EndOfStream"] = @2L;

	context[@"AVAudioConverterOutputStatus_HaveData"] = @0L;
	context[@"AVAudioConverterOutputStatus_InputRanDry"] = @1L;
	context[@"AVAudioConverterOutputStatus_EndOfStream"] = @2L;
	context[@"AVAudioConverterOutputStatus_Error"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioConverter_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
