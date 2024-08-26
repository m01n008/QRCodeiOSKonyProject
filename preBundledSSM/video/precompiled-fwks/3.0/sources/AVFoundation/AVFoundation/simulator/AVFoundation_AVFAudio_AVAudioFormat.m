#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioFormat (Exports)
-(id) jsinitWithSettings: (NSDictionary *) settings 
{
	id resultVal__;
	resultVal__ = [[self initWithSettings: settings ] autorelease];
	return resultVal__;
}
-(id) jsinitStandardFormatWithSampleRate: (double) sampleRate channels: (AVAudioChannelCount) channels 
{
	id resultVal__;
	resultVal__ = [[self initStandardFormatWithSampleRate: sampleRate channels: channels ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCommonFormat: (AVAudioCommonFormat) format sampleRate: (double) sampleRate channels: (AVAudioChannelCount) channels interleaved: (BOOL) interleaved 
{
	id resultVal__;
	resultVal__ = [[self initWithCommonFormat: format sampleRate: sampleRate channels: channels interleaved: interleaved ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCommonFormat: (AVAudioCommonFormat) format sampleRate: (double) sampleRate interleaved: (BOOL) interleaved channelLayout: (AVAudioChannelLayout *) layout 
{
	id resultVal__;
	resultVal__ = [[self initWithCommonFormat: format sampleRate: sampleRate interleaved: interleaved channelLayout: layout ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCMAudioFormatDescription: (id) formatDescription 
{
	id resultVal__;
	resultVal__ = [[self initWithCMAudioFormatDescription: formatDescription ] autorelease];
	return resultVal__;
}
-(id) jsinitStandardFormatWithSampleRate: (double) sampleRate channelLayout: (AVAudioChannelLayout *) layout 
{
	id resultVal__;
	resultVal__ = [[self initStandardFormatWithSampleRate: sampleRate channelLayout: layout ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioFormat class], @protocol(AVAudioFormatInstanceExports));
	class_addProtocol([AVAudioFormat class], @protocol(AVAudioFormatClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioOtherFormat"] = @0UL;
	context[@"AVAudioPCMFormatFloat32"] = @1UL;
	context[@"AVAudioPCMFormatFloat64"] = @2UL;
	context[@"AVAudioPCMFormatInt16"] = @3UL;
	context[@"AVAudioPCMFormatInt32"] = @4UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioFormat_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
