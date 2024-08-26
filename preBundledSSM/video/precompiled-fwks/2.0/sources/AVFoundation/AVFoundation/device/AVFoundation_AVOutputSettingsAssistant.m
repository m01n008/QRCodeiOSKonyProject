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
	class_addProtocol([AVOutputSettingsAssistant class], @protocol(AVOutputSettingsAssistantAVOutputSettingsAssistant_SourceInformationCategoryInstanceExports));
	class_addProtocol([AVOutputSettingsAssistant class], @protocol(AVOutputSettingsAssistantAVOutputSettingsAssistant_SourceInformationCategoryClassExports));
	class_addProtocol([AVOutputSettingsAssistant class], @protocol(AVOutputSettingsAssistantInstanceExports));
	class_addProtocol([AVOutputSettingsAssistant class], @protocol(AVOutputSettingsAssistantClassExports));
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
	p = (void*) &AVOutputSettingsPresetHEVC1920x1080;
	if (p != NULL) context[@"AVOutputSettingsPresetHEVC1920x1080"] = AVOutputSettingsPresetHEVC1920x1080;
	p = (void*) &AVOutputSettingsPreset640x480;
	if (p != NULL) context[@"AVOutputSettingsPreset640x480"] = AVOutputSettingsPreset640x480;
	p = (void*) &AVOutputSettingsPreset3840x2160;
	if (p != NULL) context[@"AVOutputSettingsPreset3840x2160"] = AVOutputSettingsPreset3840x2160;
	p = (void*) &AVOutputSettingsPresetHEVC3840x2160;
	if (p != NULL) context[@"AVOutputSettingsPresetHEVC3840x2160"] = AVOutputSettingsPresetHEVC3840x2160;
	p = (void*) &AVOutputSettingsPreset1920x1080;
	if (p != NULL) context[@"AVOutputSettingsPreset1920x1080"] = AVOutputSettingsPreset1920x1080;
	p = (void*) &AVOutputSettingsPreset1280x720;
	if (p != NULL) context[@"AVOutputSettingsPreset1280x720"] = AVOutputSettingsPreset1280x720;
	p = (void*) &AVOutputSettingsPreset960x540;
	if (p != NULL) context[@"AVOutputSettingsPreset960x540"] = AVOutputSettingsPreset960x540;
}
void load_AVFoundation_AVOutputSettingsAssistant_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
