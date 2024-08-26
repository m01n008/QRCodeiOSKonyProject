#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMIDI_MIDIServices)
+(JSValue*) valueWithMIDIObjectAddRemoveNotification: (MIDIObjectAddRemoveNotification) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"messageID": @(s.messageID),
		@"messageSize": @(s.messageSize),
		@"parent": @(s.parent),
		@"parentType": @(s.parentType),
		@"child": @(s.child),
		@"childType": @(s.childType),
	} inContext: context];
}
-(MIDIObjectAddRemoveNotification) toMIDIObjectAddRemoveNotification {
	return (MIDIObjectAddRemoveNotification) {
		(MIDINotificationMessageID) [self[@"messageID"] toInt32],
		(UInt32) [self[@"messageSize"] toUInt32],
		(MIDIObjectRef) [self[@"parent"] toUInt32],
		(MIDIObjectType) [self[@"parentType"] toInt32],
		(MIDIObjectRef) [self[@"child"] toUInt32],
		(MIDIObjectType) [self[@"childType"] toInt32],
	};
}
+(JSValue*) valueWithMIDIIOErrorNotification: (MIDIIOErrorNotification) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"messageID": @(s.messageID),
		@"messageSize": @(s.messageSize),
		@"driverDevice": @(s.driverDevice),
		@"errorCode": @(s.errorCode),
	} inContext: context];
}
-(MIDIIOErrorNotification) toMIDIIOErrorNotification {
	return (MIDIIOErrorNotification) {
		(MIDINotificationMessageID) [self[@"messageID"] toInt32],
		(UInt32) [self[@"messageSize"] toUInt32],
		(MIDIDeviceRef) [self[@"driverDevice"] toUInt32],
		(OSStatus) [self[@"errorCode"] toInt32],
	};
}
+(JSValue*) valueWithMIDINotification: (MIDINotification) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"messageID": @(s.messageID),
		@"messageSize": @(s.messageSize),
	} inContext: context];
}
-(MIDINotification) toMIDINotification {
	return (MIDINotification) {
		(MIDINotificationMessageID) [self[@"messageID"] toInt32],
		(UInt32) [self[@"messageSize"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"MIDIObjectSetDataProperty"] = ^OSStatus(MIDIObjectRef arg0, id arg1, id arg2) {
		return MIDIObjectSetDataProperty(arg0, arg1, arg2);
	};
	context[@"MIDIPortDispose"] = ^OSStatus(MIDIPortRef arg0) {
		return MIDIPortDispose(arg0);
	};
	context[@"MIDIObjectRemoveProperty"] = ^OSStatus(MIDIObjectRef arg0, id arg1) {
		return MIDIObjectRemoveProperty(arg0, arg1);
	};
	context[@"MIDIGetSource"] = ^MIDIEndpointRef(ItemCount arg0) {
		return MIDIGetSource(arg0);
	};
	context[@"MIDIDeviceGetEntity"] = ^MIDIEntityRef(MIDIDeviceRef arg0, ItemCount arg1) {
		return MIDIDeviceGetEntity(arg0, arg1);
	};
	context[@"MIDIGetNumberOfExternalDevices"] = ^ItemCount() {
		return MIDIGetNumberOfExternalDevices();
	};
	context[@"MIDIDeviceGetNumberOfEntities"] = ^ItemCount(MIDIDeviceRef arg0) {
		return MIDIDeviceGetNumberOfEntities(arg0);
	};
	context[@"MIDIFlushOutput"] = ^OSStatus(MIDIEndpointRef arg0) {
		return MIDIFlushOutput(arg0);
	};
	context[@"MIDIObjectSetDictionaryProperty"] = ^OSStatus(MIDIObjectRef arg0, id arg1, id arg2) {
		return MIDIObjectSetDictionaryProperty(arg0, arg1, arg2);
	};
	context[@"MIDIObjectSetIntegerProperty"] = ^OSStatus(MIDIObjectRef arg0, id arg1, SInt32 arg2) {
		return MIDIObjectSetIntegerProperty(arg0, arg1, arg2);
	};
	context[@"MIDIGetDestination"] = ^MIDIEndpointRef(ItemCount arg0) {
		return MIDIGetDestination(arg0);
	};
	context[@"MIDIEntityGetDestination"] = ^MIDIEndpointRef(MIDIEntityRef arg0, ItemCount arg1) {
		return MIDIEntityGetDestination(arg0, arg1);
	};
	context[@"MIDIGetNumberOfDestinations"] = ^ItemCount() {
		return MIDIGetNumberOfDestinations();
	};
	context[@"MIDIPortDisconnectSource"] = ^OSStatus(MIDIPortRef arg0, MIDIEndpointRef arg1) {
		return MIDIPortDisconnectSource(arg0, arg1);
	};
	context[@"MIDIGetDevice"] = ^MIDIDeviceRef(ItemCount arg0) {
		return MIDIGetDevice(arg0);
	};
	context[@"MIDIEntityGetNumberOfDestinations"] = ^ItemCount(MIDIEntityRef arg0) {
		return MIDIEntityGetNumberOfDestinations(arg0);
	};
	context[@"MIDIEntityGetSource"] = ^MIDIEndpointRef(MIDIEntityRef arg0, ItemCount arg1) {
		return MIDIEntityGetSource(arg0, arg1);
	};
	context[@"MIDIGetNumberOfDevices"] = ^ItemCount() {
		return MIDIGetNumberOfDevices();
	};
	context[@"MIDIEndpointDispose"] = ^OSStatus(MIDIEndpointRef arg0) {
		return MIDIEndpointDispose(arg0);
	};
	context[@"MIDIRestart"] = ^OSStatus() {
		return MIDIRestart();
	};
	context[@"MIDIClientDispose"] = ^OSStatus(MIDIClientRef arg0) {
		return MIDIClientDispose(arg0);
	};
	context[@"MIDIObjectSetStringProperty"] = ^OSStatus(MIDIObjectRef arg0, id arg1, id arg2) {
		return MIDIObjectSetStringProperty(arg0, arg1, arg2);
	};
	context[@"MIDIGetNumberOfSources"] = ^ItemCount() {
		return MIDIGetNumberOfSources();
	};
	context[@"MIDIEntityGetNumberOfSources"] = ^ItemCount(MIDIEntityRef arg0) {
		return MIDIEntityGetNumberOfSources(arg0);
	};
	context[@"MIDIGetExternalDevice"] = ^MIDIDeviceRef(ItemCount arg0) {
		return MIDIGetExternalDevice(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMIDIInvalidClient"] = @-10830;
	context[@"kMIDIInvalidPort"] = @-10831;
	context[@"kMIDIWrongEndpointType"] = @-10832;
	context[@"kMIDINoConnection"] = @-10833;
	context[@"kMIDIUnknownEndpoint"] = @-10834;
	context[@"kMIDIUnknownProperty"] = @-10835;
	context[@"kMIDIWrongPropertyType"] = @-10836;
	context[@"kMIDINoCurrentSetup"] = @-10837;
	context[@"kMIDIMessageSendErr"] = @-10838;
	context[@"kMIDIServerStartErr"] = @-10839;
	context[@"kMIDISetupFormatErr"] = @-10840;
	context[@"kMIDIWrongThread"] = @-10841;
	context[@"kMIDIObjectNotFound"] = @-10842;
	context[@"kMIDIIDNotUnique"] = @-10843;
	context[@"kMIDINotPermitted"] = @-10844;

	context[@"kMIDIObjectType_Other"] = @-1;
	context[@"kMIDIObjectType_Device"] = @0;
	context[@"kMIDIObjectType_Entity"] = @1;
	context[@"kMIDIObjectType_Source"] = @2;
	context[@"kMIDIObjectType_Destination"] = @3;
	context[@"kMIDIObjectType_ExternalDevice"] = @16;
	context[@"kMIDIObjectType_ExternalEntity"] = @17;
	context[@"kMIDIObjectType_ExternalSource"] = @18;
	context[@"kMIDIObjectType_ExternalDestination"] = @19;

	context[@"kMIDIInvalidUniqueID"] = @0;

	context[@"kMIDIMsgSetupChanged"] = @1;
	context[@"kMIDIMsgObjectAdded"] = @2;
	context[@"kMIDIMsgObjectRemoved"] = @3;
	context[@"kMIDIMsgPropertyChanged"] = @4;
	context[@"kMIDIMsgThruConnectionsChanged"] = @5;
	context[@"kMIDIMsgSerialPortOwnerChanged"] = @6;
	context[@"kMIDIMsgIOError"] = @7;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kMIDIPropertyReceivesMTC;
	if (p != NULL) context[@"kMIDIPropertyReceivesMTC"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesMTC inContext: context];
	p = (void*) &kMIDIPropertySupportsShowControl;
	if (p != NULL) context[@"kMIDIPropertySupportsShowControl"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertySupportsShowControl inContext: context];
	p = (void*) &kMIDIPropertyModel;
	if (p != NULL) context[@"kMIDIPropertyModel"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyModel inContext: context];
	p = (void*) &kMIDIPropertyOffline;
	if (p != NULL) context[@"kMIDIPropertyOffline"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyOffline inContext: context];
	p = (void*) &kMIDIPropertySupportsMMC;
	if (p != NULL) context[@"kMIDIPropertySupportsMMC"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertySupportsMMC inContext: context];
	p = (void*) &kMIDIPropertyTransmitsNotes;
	if (p != NULL) context[@"kMIDIPropertyTransmitsNotes"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsNotes inContext: context];
	p = (void*) &kMIDIPropertyDriverOwner;
	if (p != NULL) context[@"kMIDIPropertyDriverOwner"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyDriverOwner inContext: context];
	p = (void*) &kMIDIPropertyDeviceID;
	if (p != NULL) context[@"kMIDIPropertyDeviceID"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyDeviceID inContext: context];
	p = (void*) &kMIDIPropertyIsDrumMachine;
	if (p != NULL) context[@"kMIDIPropertyIsDrumMachine"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsDrumMachine inContext: context];
	p = (void*) &kMIDIPropertyTransmitsProgramChanges;
	if (p != NULL) context[@"kMIDIPropertyTransmitsProgramChanges"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsProgramChanges inContext: context];
	p = (void*) &kMIDIPropertyUniqueID;
	if (p != NULL) context[@"kMIDIPropertyUniqueID"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyUniqueID inContext: context];
	p = (void*) &kMIDIPropertyCanRoute;
	if (p != NULL) context[@"kMIDIPropertyCanRoute"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyCanRoute inContext: context];
	p = (void*) &kMIDIPropertyManufacturer;
	if (p != NULL) context[@"kMIDIPropertyManufacturer"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyManufacturer inContext: context];
	p = (void*) &kMIDIPropertyIsMixer;
	if (p != NULL) context[@"kMIDIPropertyIsMixer"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsMixer inContext: context];
	p = (void*) &kMIDIPropertyReceivesProgramChanges;
	if (p != NULL) context[@"kMIDIPropertyReceivesProgramChanges"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesProgramChanges inContext: context];
	p = (void*) &kMIDIPropertyTransmitsBankSelectMSB;
	if (p != NULL) context[@"kMIDIPropertyTransmitsBankSelectMSB"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsBankSelectMSB inContext: context];
	p = (void*) &kMIDIPropertyTransmitsClock;
	if (p != NULL) context[@"kMIDIPropertyTransmitsClock"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsClock inContext: context];
	p = (void*) &kMIDIPropertyReceivesNotes;
	if (p != NULL) context[@"kMIDIPropertyReceivesNotes"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesNotes inContext: context];
	p = (void*) &kMIDIPropertyIsEffectUnit;
	if (p != NULL) context[@"kMIDIPropertyIsEffectUnit"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsEffectUnit inContext: context];
	p = (void*) &kMIDIPropertyTransmitsBankSelectLSB;
	if (p != NULL) context[@"kMIDIPropertyTransmitsBankSelectLSB"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsBankSelectLSB inContext: context];
	p = (void*) &kMIDIPropertyIsSampler;
	if (p != NULL) context[@"kMIDIPropertyIsSampler"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsSampler inContext: context];
	p = (void*) &kMIDIPropertyImage;
	if (p != NULL) context[@"kMIDIPropertyImage"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyImage inContext: context];
	p = (void*) &kMIDIPropertyAdvanceScheduleTimeMuSec;
	if (p != NULL) context[@"kMIDIPropertyAdvanceScheduleTimeMuSec"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyAdvanceScheduleTimeMuSec inContext: context];
	p = (void*) &kMIDIPropertyPrivate;
	if (p != NULL) context[@"kMIDIPropertyPrivate"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyPrivate inContext: context];
	p = (void*) &kMIDIPropertyMaxSysExSpeed;
	if (p != NULL) context[@"kMIDIPropertyMaxSysExSpeed"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyMaxSysExSpeed inContext: context];
	p = (void*) &kMIDIPropertyDriverDeviceEditorApp;
	if (p != NULL) context[@"kMIDIPropertyDriverDeviceEditorApp"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyDriverDeviceEditorApp inContext: context];
	p = (void*) &kMIDIPropertyReceivesBankSelectLSB;
	if (p != NULL) context[@"kMIDIPropertyReceivesBankSelectLSB"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesBankSelectLSB inContext: context];
	p = (void*) &kMIDIPropertySingleRealtimeEntity;
	if (p != NULL) context[@"kMIDIPropertySingleRealtimeEntity"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertySingleRealtimeEntity inContext: context];
	p = (void*) &kMIDIPropertyReceivesClock;
	if (p != NULL) context[@"kMIDIPropertyReceivesClock"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesClock inContext: context];
	p = (void*) &kMIDIPropertyNameConfiguration;
	if (p != NULL) context[@"kMIDIPropertyNameConfiguration"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyNameConfiguration inContext: context];
	p = (void*) &kMIDIPropertyReceivesBankSelectMSB;
	if (p != NULL) context[@"kMIDIPropertyReceivesBankSelectMSB"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceivesBankSelectMSB inContext: context];
	p = (void*) &kMIDIPropertyPanDisruptsStereo;
	if (p != NULL) context[@"kMIDIPropertyPanDisruptsStereo"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyPanDisruptsStereo inContext: context];
	p = (void*) &kMIDIPropertyDriverVersion;
	if (p != NULL) context[@"kMIDIPropertyDriverVersion"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyDriverVersion inContext: context];
	p = (void*) &kMIDIPropertyMaxReceiveChannels;
	if (p != NULL) context[@"kMIDIPropertyMaxReceiveChannels"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyMaxReceiveChannels inContext: context];
	p = (void*) &kMIDIPropertyTransmitsMTC;
	if (p != NULL) context[@"kMIDIPropertyTransmitsMTC"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitsMTC inContext: context];
	p = (void*) &kMIDIPropertyIsBroadcast;
	if (p != NULL) context[@"kMIDIPropertyIsBroadcast"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsBroadcast inContext: context];
	p = (void*) &kMIDIPropertyName;
	if (p != NULL) context[@"kMIDIPropertyName"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyName inContext: context];
	p = (void*) &kMIDIPropertyTransmitChannels;
	if (p != NULL) context[@"kMIDIPropertyTransmitChannels"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyTransmitChannels inContext: context];
	p = (void*) &kMIDIPropertyIsEmbeddedEntity;
	if (p != NULL) context[@"kMIDIPropertyIsEmbeddedEntity"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyIsEmbeddedEntity inContext: context];
	p = (void*) &kMIDIPropertyConnectionUniqueID;
	if (p != NULL) context[@"kMIDIPropertyConnectionUniqueID"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyConnectionUniqueID inContext: context];
	p = (void*) &kMIDIPropertyDisplayName;
	if (p != NULL) context[@"kMIDIPropertyDisplayName"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyDisplayName inContext: context];
	p = (void*) &kMIDIPropertySupportsGeneralMIDI;
	if (p != NULL) context[@"kMIDIPropertySupportsGeneralMIDI"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertySupportsGeneralMIDI inContext: context];
	p = (void*) &kMIDIPropertyReceiveChannels;
	if (p != NULL) context[@"kMIDIPropertyReceiveChannels"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyReceiveChannels inContext: context];
	p = (void*) &kMIDIPropertyMaxTransmitChannels;
	if (p != NULL) context[@"kMIDIPropertyMaxTransmitChannels"] = [JSValue valueWithObject: (__bridge id) kMIDIPropertyMaxTransmitChannels inContext: context];
	p = (void*) &kMIDIObjectType_ExternalMask;
	if (p != NULL) context[@"kMIDIObjectType_ExternalMask"] = @(kMIDIObjectType_ExternalMask);
}
void load_CoreMIDI_MIDIServices_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
