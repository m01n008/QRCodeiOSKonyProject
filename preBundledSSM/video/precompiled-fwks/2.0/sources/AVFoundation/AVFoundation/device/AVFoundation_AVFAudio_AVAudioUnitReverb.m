#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([AVAudioUnitReverb class], @protocol(AVAudioUnitReverbInstanceExports));
	class_addProtocol([AVAudioUnitReverb class], @protocol(AVAudioUnitReverbClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioUnitReverbPresetSmallRoom"] = @0;
	context[@"AVAudioUnitReverbPresetMediumRoom"] = @1;
	context[@"AVAudioUnitReverbPresetLargeRoom"] = @2;
	context[@"AVAudioUnitReverbPresetMediumHall"] = @3;
	context[@"AVAudioUnitReverbPresetLargeHall"] = @4;
	context[@"AVAudioUnitReverbPresetPlate"] = @5;
	context[@"AVAudioUnitReverbPresetMediumChamber"] = @6;
	context[@"AVAudioUnitReverbPresetLargeChamber"] = @7;
	context[@"AVAudioUnitReverbPresetCathedral"] = @8;
	context[@"AVAudioUnitReverbPresetLargeRoom2"] = @9;
	context[@"AVAudioUnitReverbPresetMediumHall2"] = @10;
	context[@"AVAudioUnitReverbPresetMediumHall3"] = @11;
	context[@"AVAudioUnitReverbPresetLargeHall2"] = @12;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioUnitReverb_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
