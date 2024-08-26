#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitMIDIInstrument (Exports)
-(id) jsinitWithAudioComponentDescription: (AudioComponentDescription) description 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioComponentDescription: description ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitMIDIInstrument class], @protocol(AVAudioUnitMIDIInstrumentInstanceExports));
	class_addProtocol([AVAudioUnitMIDIInstrument class], @protocol(AVAudioUnitMIDIInstrumentClassExports));
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
void load_AVFoundation_AVFAudio_AVAudioUnitMIDIInstrument_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
