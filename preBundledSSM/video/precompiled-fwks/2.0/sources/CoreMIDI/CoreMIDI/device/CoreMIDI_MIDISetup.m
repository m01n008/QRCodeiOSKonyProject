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
	context[@"MIDISetupAddExternalDevice"] = ^OSStatus(MIDIDeviceRef arg0) {
		return MIDISetupAddExternalDevice(arg0);
	};
	context[@"MIDISetupRemoveDevice"] = ^OSStatus(MIDIDeviceRef arg0) {
		return MIDISetupRemoveDevice(arg0);
	};
	context[@"MIDISetupAddDevice"] = ^OSStatus(MIDIDeviceRef arg0) {
		return MIDISetupAddDevice(arg0);
	};
	context[@"MIDISetupRemoveExternalDevice"] = ^OSStatus(MIDIDeviceRef arg0) {
		return MIDISetupRemoveExternalDevice(arg0);
	};
	context[@"MIDIEntityAddOrRemoveEndpoints"] = ^OSStatus(MIDIEntityRef arg0, ItemCount arg1, ItemCount arg2) {
		return MIDIEntityAddOrRemoveEndpoints(arg0, arg1, arg2);
	};
	context[@"MIDIDeviceRemoveEntity"] = ^OSStatus(MIDIDeviceRef arg0, MIDIEntityRef arg1) {
		return MIDIDeviceRemoveEntity(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMIDI_MIDISetup_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
