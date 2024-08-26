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
	class_addProtocol([AVAudioUnitDistortion class], @protocol(AVAudioUnitDistortionInstanceExports));
	class_addProtocol([AVAudioUnitDistortion class], @protocol(AVAudioUnitDistortionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioUnitDistortionPresetDrumsBitBrush"] = @0L;
	context[@"AVAudioUnitDistortionPresetDrumsBufferBeats"] = @1L;
	context[@"AVAudioUnitDistortionPresetDrumsLoFi"] = @2L;
	context[@"AVAudioUnitDistortionPresetMultiBrokenSpeaker"] = @3L;
	context[@"AVAudioUnitDistortionPresetMultiCellphoneConcert"] = @4L;
	context[@"AVAudioUnitDistortionPresetMultiDecimated1"] = @5L;
	context[@"AVAudioUnitDistortionPresetMultiDecimated2"] = @6L;
	context[@"AVAudioUnitDistortionPresetMultiDecimated3"] = @7L;
	context[@"AVAudioUnitDistortionPresetMultiDecimated4"] = @8L;
	context[@"AVAudioUnitDistortionPresetMultiDistortedFunk"] = @9L;
	context[@"AVAudioUnitDistortionPresetMultiDistortedCubed"] = @10L;
	context[@"AVAudioUnitDistortionPresetMultiDistortedSquared"] = @11L;
	context[@"AVAudioUnitDistortionPresetMultiEcho1"] = @12L;
	context[@"AVAudioUnitDistortionPresetMultiEcho2"] = @13L;
	context[@"AVAudioUnitDistortionPresetMultiEchoTight1"] = @14L;
	context[@"AVAudioUnitDistortionPresetMultiEchoTight2"] = @15L;
	context[@"AVAudioUnitDistortionPresetMultiEverythingIsBroken"] = @16L;
	context[@"AVAudioUnitDistortionPresetSpeechAlienChatter"] = @17L;
	context[@"AVAudioUnitDistortionPresetSpeechCosmicInterference"] = @18L;
	context[@"AVAudioUnitDistortionPresetSpeechGoldenPi"] = @19L;
	context[@"AVAudioUnitDistortionPresetSpeechRadioTower"] = @20L;
	context[@"AVAudioUnitDistortionPresetSpeechWaves"] = @21L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioUnitDistortion_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
