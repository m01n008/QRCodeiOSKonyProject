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
	class_addProtocol([AVAudioUnitComponent class], @protocol(AVAudioUnitComponentInstanceExports));
	class_addProtocol([AVAudioUnitComponent class], @protocol(AVAudioUnitComponentClassExports));
	class_addProtocol([AVAudioUnitComponentManager class], @protocol(AVAudioUnitComponentManagerInstanceExports));
	class_addProtocol([AVAudioUnitComponentManager class], @protocol(AVAudioUnitComponentManagerClassExports));
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
	p = (void*) &AVAudioUnitTypeFormatConverter;
	if (p != NULL) context[@"AVAudioUnitTypeFormatConverter"] = AVAudioUnitTypeFormatConverter;
	p = (void*) &AVAudioUnitTypeMusicDevice;
	if (p != NULL) context[@"AVAudioUnitTypeMusicDevice"] = AVAudioUnitTypeMusicDevice;
	p = (void*) &AVAudioUnitManufacturerNameApple;
	if (p != NULL) context[@"AVAudioUnitManufacturerNameApple"] = AVAudioUnitManufacturerNameApple;
	p = (void*) &AVAudioUnitTypeOutput;
	if (p != NULL) context[@"AVAudioUnitTypeOutput"] = AVAudioUnitTypeOutput;
	p = (void*) &AVAudioUnitComponentTagsDidChangeNotification;
	if (p != NULL) context[@"AVAudioUnitComponentTagsDidChangeNotification"] = AVAudioUnitComponentTagsDidChangeNotification;
	p = (void*) &AVAudioUnitTypeMIDIProcessor;
	if (p != NULL) context[@"AVAudioUnitTypeMIDIProcessor"] = AVAudioUnitTypeMIDIProcessor;
	p = (void*) &AVAudioUnitTypeMixer;
	if (p != NULL) context[@"AVAudioUnitTypeMixer"] = AVAudioUnitTypeMixer;
	p = (void*) &AVAudioUnitTypeEffect;
	if (p != NULL) context[@"AVAudioUnitTypeEffect"] = AVAudioUnitTypeEffect;
	p = (void*) &AVAudioUnitTypeOfflineEffect;
	if (p != NULL) context[@"AVAudioUnitTypeOfflineEffect"] = AVAudioUnitTypeOfflineEffect;
	p = (void*) &AVAudioUnitTypeMusicEffect;
	if (p != NULL) context[@"AVAudioUnitTypeMusicEffect"] = AVAudioUnitTypeMusicEffect;
	p = (void*) &AVAudioUnitTypeGenerator;
	if (p != NULL) context[@"AVAudioUnitTypeGenerator"] = AVAudioUnitTypeGenerator;
	p = (void*) &AVAudioUnitTypePanner;
	if (p != NULL) context[@"AVAudioUnitTypePanner"] = AVAudioUnitTypePanner;
}
void load_AVFoundation_AVFAudio_AVAudioUnitComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
