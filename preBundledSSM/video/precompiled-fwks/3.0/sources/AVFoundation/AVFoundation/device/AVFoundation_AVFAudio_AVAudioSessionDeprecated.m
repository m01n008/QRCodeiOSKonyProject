#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioSession (AVAudioSessionAVAudioSessionDeprecatedCategoryExports)
-(BOOL) jssetPreferredHardwareSampleRate: (double) sampleRate error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setPreferredHardwareSampleRate: sampleRate error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jssetActive: (BOOL) active withFlags: (NSInteger) flags error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self setActive: active withFlags: flags error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionDeprecatedCategoryInstanceExports));
	class_addProtocol([AVAudioSession class], @protocol(AVAudioSessionAVAudioSessionDeprecatedCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioSessionInterruptionFlags_ShouldResume"] = @1;

	context[@"AVAudioSessionSetActiveFlags_NotifyOthersOnDeactivation"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVFAudio_AVAudioSessionDeprecatedProtocols()
{
	(void)@protocol(AVAudioSessionDelegate);
}
void load_AVFoundation_AVFAudio_AVAudioSessionDeprecated_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
