#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAudioUnitEQ (Exports)
-(id) jsinitWithNumberOfBands: (NSUInteger) numberOfBands 
{
	id resultVal__;
	resultVal__ = [[self initWithNumberOfBands: numberOfBands ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAudioUnitEQ class], @protocol(AVAudioUnitEQInstanceExports));
	class_addProtocol([AVAudioUnitEQ class], @protocol(AVAudioUnitEQClassExports));
	class_addProtocol([AVAudioUnitEQFilterParameters class], @protocol(AVAudioUnitEQFilterParametersInstanceExports));
	class_addProtocol([AVAudioUnitEQFilterParameters class], @protocol(AVAudioUnitEQFilterParametersClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioUnitEQFilterTypeParametric"] = @0L;
	context[@"AVAudioUnitEQFilterTypeLowPass"] = @1L;
	context[@"AVAudioUnitEQFilterTypeHighPass"] = @2L;
	context[@"AVAudioUnitEQFilterTypeResonantLowPass"] = @3L;
	context[@"AVAudioUnitEQFilterTypeResonantHighPass"] = @4L;
	context[@"AVAudioUnitEQFilterTypeBandPass"] = @5L;
	context[@"AVAudioUnitEQFilterTypeBandStop"] = @6L;
	context[@"AVAudioUnitEQFilterTypeLowShelf"] = @7L;
	context[@"AVAudioUnitEQFilterTypeHighShelf"] = @8L;
	context[@"AVAudioUnitEQFilterTypeResonantLowShelf"] = @9L;
	context[@"AVAudioUnitEQFilterTypeResonantHighShelf"] = @10L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioUnitEQ_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
