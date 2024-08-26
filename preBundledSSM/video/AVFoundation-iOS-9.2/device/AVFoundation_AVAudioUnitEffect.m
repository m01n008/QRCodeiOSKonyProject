#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitEffect (Exports)
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) audioComponentDescription 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioComponentDescription: audioComponentDescription ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitEffect class], @protocol(AVAudioUnitEffectInstanceExports));
	class_addProtocol([AVAudioUnitEffect class], @protocol(AVAudioUnitEffectClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioUnitEffect_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
