#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitSampler (Exports)
-(BOOL) jsloadSoundBankInstrumentAtURL: (NSURL *) bankURL program: (uint8_t) program bankMSB: (uint8_t) bankMSB bankLSB: (uint8_t) bankLSB error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadSoundBankInstrumentAtURL: bankURL program: program bankMSB: bankMSB bankLSB: bankLSB error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsloadInstrumentAtURL: (NSURL *) instrumentURL error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadInstrumentAtURL: instrumentURL error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsloadAudioFilesAtURLs: (NSArray *) audioFiles error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadAudioFilesAtURLs: audioFiles error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitSampler class], @protocol(AVAudioUnitSamplerInstanceExports));
	class_addProtocol([AVAudioUnitSampler class], @protocol(AVAudioUnitSamplerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioUnitSampler_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
