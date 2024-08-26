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
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioOutputUnitStop"] = ^OSStatus(id arg0) {
		return AudioOutputUnitStop(arg0);
	};
	context[@"AudioOutputUnitStart"] = ^OSStatus(id arg0) {
		return AudioOutputUnitStart(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioOutputUnitRange"] = @512;
	context[@"kAudioOutputUnitStartSelect"] = @513;
	context[@"kAudioOutputUnitStopSelect"] = @514;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioOutputUnit_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
