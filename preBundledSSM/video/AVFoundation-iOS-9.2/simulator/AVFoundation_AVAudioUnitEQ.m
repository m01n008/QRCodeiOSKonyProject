#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioUnitEQFilterTypeParametric"] = @0;
	context[@"AVAudioUnitEQFilterTypeLowPass"] = @1;
	context[@"AVAudioUnitEQFilterTypeHighPass"] = @2;
	context[@"AVAudioUnitEQFilterTypeResonantLowPass"] = @3;
	context[@"AVAudioUnitEQFilterTypeResonantHighPass"] = @4;
	context[@"AVAudioUnitEQFilterTypeBandPass"] = @5;
	context[@"AVAudioUnitEQFilterTypeBandStop"] = @6;
	context[@"AVAudioUnitEQFilterTypeLowShelf"] = @7;
	context[@"AVAudioUnitEQFilterTypeHighShelf"] = @8;
	context[@"AVAudioUnitEQFilterTypeResonantLowShelf"] = @9;
	context[@"AVAudioUnitEQFilterTypeResonantHighShelf"] = @10;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioUnitEQ_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
