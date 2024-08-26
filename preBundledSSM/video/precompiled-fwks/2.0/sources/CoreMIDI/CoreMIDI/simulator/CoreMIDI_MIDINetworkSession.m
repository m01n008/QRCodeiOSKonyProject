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
	class_addProtocol([MIDINetworkHost class], @protocol(MIDINetworkHostInstanceExports));
	class_addProtocol([MIDINetworkHost class], @protocol(MIDINetworkHostClassExports));
	class_addProtocol([MIDINetworkSession class], @protocol(MIDINetworkSessionInstanceExports));
	class_addProtocol([MIDINetworkSession class], @protocol(MIDINetworkSessionClassExports));
	class_addProtocol([MIDINetworkConnection class], @protocol(MIDINetworkConnectionInstanceExports));
	class_addProtocol([MIDINetworkConnection class], @protocol(MIDINetworkConnectionClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MIDINetworkConnectionPolicy_NoOne"] = @0UL;
	context[@"MIDINetworkConnectionPolicy_HostsInContactList"] = @1UL;
	context[@"MIDINetworkConnectionPolicy_Anyone"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MIDINetworkNotificationSessionDidChange;
	if (p != NULL) context[@"MIDINetworkNotificationSessionDidChange"] = MIDINetworkNotificationSessionDidChange;
	p = (void*) &MIDINetworkNotificationContactsDidChange;
	if (p != NULL) context[@"MIDINetworkNotificationContactsDidChange"] = MIDINetworkNotificationContactsDidChange;
	p = (void*) &MIDINetworkBonjourServiceType;
	if (p != NULL) context[@"MIDINetworkBonjourServiceType"] = MIDINetworkBonjourServiceType;
}
void load_CoreMIDI_MIDINetworkSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
