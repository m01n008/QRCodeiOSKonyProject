#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioTime (Exports)
-(id) jsinitWithSampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate 
{
	id resultVal__;
	resultVal__ = [[self initWithSampleTime: sampleTime atRate: sampleRate ] autorelease];
	return resultVal__;
}
-(id) jsinitWithHostTime: (uint64_t) hostTime 
{
	id resultVal__;
	resultVal__ = [[self initWithHostTime: hostTime ] autorelease];
	return resultVal__;
}
-(id) jsinitWithHostTime: (uint64_t) hostTime sampleTime: (AVAudioFramePosition) sampleTime atRate: (double) sampleRate 
{
	id resultVal__;
	resultVal__ = [[self initWithHostTime: hostTime sampleTime: sampleTime atRate: sampleRate ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioTime class], @protocol(AVAudioTimeInstanceExports));
	class_addProtocol([AVAudioTime class], @protocol(AVAudioTimeClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioTime_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
