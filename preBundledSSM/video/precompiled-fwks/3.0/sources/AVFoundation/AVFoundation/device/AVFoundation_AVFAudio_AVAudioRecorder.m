#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioRecorder (Exports)
-(id) jsinitWithURL: (NSURL *) url format: (AVAudioFormat *) format error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithURL: url format: format error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) url settings: (NSDictionary *) settings error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithURL: url settings: settings error: &outError_ ] autorelease];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioRecorder class], @protocol(AVAudioRecorderInstanceExports));
	class_addProtocol([AVAudioRecorder class], @protocol(AVAudioRecorderClassExports));
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
void AVFoundation_AVFAudio_AVAudioRecorderProtocols()
{
	(void)@protocol(AVAudioRecorderDelegate);
}
void load_AVFoundation_AVFAudio_AVAudioRecorder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
