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
	context[@"MIDIDeviceListDispose"] = ^OSStatus(MIDIDeviceListRef arg0) {
		return MIDIDeviceListDispose(arg0);
	};
	context[@"MIDIGetDriverIORunLoop"] = ^id() {
		return MIDIGetDriverIORunLoop();
	};
	context[@"MIDIDeviceListGetDevice"] = ^MIDIDeviceRef(MIDIDeviceListRef arg0, ItemCount arg1) {
		return MIDIDeviceListGetDevice(arg0, arg1);
	};
	context[@"MIDIDeviceListAddDevice"] = ^OSStatus(MIDIDeviceListRef arg0, MIDIDeviceRef arg1) {
		return MIDIDeviceListAddDevice(arg0, arg1);
	};
	context[@"MIDIDeviceListGetNumberOfDevices"] = ^ItemCount(MIDIDeviceListRef arg0) {
		return MIDIDeviceListGetNumberOfDevices(arg0);
	};
	context[@"MIDIDeviceDispose"] = ^OSStatus(MIDIDeviceRef arg0) {
		return MIDIDeviceDispose(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMIDI_MIDIDriver_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
