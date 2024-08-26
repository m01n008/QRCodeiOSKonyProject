#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitTimeEffect (Exports)
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) audioComponentDescription 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioComponentDescription: audioComponentDescription ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitTimeEffect class], @protocol(AVAudioUnitTimeEffectInstanceExports));
	class_addProtocol([AVAudioUnitTimeEffect class], @protocol(AVAudioUnitTimeEffectClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioUnitTimeEffect_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
