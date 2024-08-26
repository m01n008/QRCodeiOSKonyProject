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
	context[@"AVAudioUnitReverbPresetSmallRoom"] = @0L;
	context[@"AVAudioUnitReverbPresetMediumRoom"] = @1L;
	context[@"AVAudioUnitReverbPresetLargeRoom"] = @2L;
	context[@"AVAudioUnitReverbPresetMediumHall"] = @3L;
	context[@"AVAudioUnitReverbPresetLargeHall"] = @4L;
	context[@"AVAudioUnitReverbPresetPlate"] = @5L;
	context[@"AVAudioUnitReverbPresetMediumChamber"] = @6L;
	context[@"AVAudioUnitReverbPresetLargeChamber"] = @7L;
	context[@"AVAudioUnitReverbPresetCathedral"] = @8L;
	context[@"AVAudioUnitReverbPresetLargeRoom2"] = @9L;
	context[@"AVAudioUnitReverbPresetMediumHall2"] = @10L;
	context[@"AVAudioUnitReverbPresetMediumHall3"] = @11L;
	context[@"AVAudioUnitReverbPresetLargeHall2"] = @12L;

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
