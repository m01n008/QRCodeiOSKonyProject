#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioConnectionPoint (Exports)
-(id) jsinitWithNode: (AVAudioNode *) node bus: (AVAudioNodeBus) bus 
{
	id resultVal__;
	resultVal__ = [[self initWithNode: node bus: bus ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioConnectionPoint class], @protocol(AVAudioConnectionPointInstanceExports));
	class_addProtocol([AVAudioConnectionPoint class], @protocol(AVAudioConnectionPointClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioConnectionPoint_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
