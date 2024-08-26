#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAudioUnitDistortionPresetDrumsBitBrush"] = @0;
	context[@"AVAudioUnitDistortionPresetDrumsBufferBeats"] = @1;
	context[@"AVAudioUnitDistortionPresetDrumsLoFi"] = @2;
	context[@"AVAudioUnitDistortionPresetMultiBrokenSpeaker"] = @3;
	context[@"AVAudioUnitDistortionPresetMultiCellphoneConcert"] = @4;
	context[@"AVAudioUnitDistortionPresetMultiDecimated1"] = @5;
	context[@"AVAudioUnitDistortionPresetMultiDecimated2"] = @6;
	context[@"AVAudioUnitDistortionPresetMultiDecimated3"] = @7;
	context[@"AVAudioUnitDistortionPresetMultiDecimated4"] = @8;
	context[@"AVAudioUnitDistortionPresetMultiDistortedFunk"] = @9;
	context[@"AVAudioUnitDistortionPresetMultiDistortedCubed"] = @10;
	context[@"AVAudioUnitDistortionPresetMultiDistortedSquared"] = @11;
	context[@"AVAudioUnitDistortionPresetMultiEcho1"] = @12;
	context[@"AVAudioUnitDistortionPresetMultiEcho2"] = @13;
	context[@"AVAudioUnitDistortionPresetMultiEchoTight1"] = @14;
	context[@"AVAudioUnitDistortionPresetMultiEchoTight2"] = @15;
	context[@"AVAudioUnitDistortionPresetMultiEverythingIsBroken"] = @16;
	context[@"AVAudioUnitDistortionPresetSpeechAlienChatter"] = @17;
	context[@"AVAudioUnitDistortionPresetSpeechCosmicInterference"] = @18;
	context[@"AVAudioUnitDistortionPresetSpeechGoldenPi"] = @19;
	context[@"AVAudioUnitDistortionPresetSpeechRadioTower"] = @20;
	context[@"AVAudioUnitDistortionPresetSpeechWaves"] = @21;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVAudioUnitDistortion_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
