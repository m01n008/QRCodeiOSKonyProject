#import "allincludes.h"
#import <JavaScriptCore/JavaScriptCore.h>
void loadNFICoreMIDIModules(JSContext* context)
{
	load_CoreMIDI_MIDIMessages_symbols(context);
	load_CoreMIDI_MIDIDriver_symbols(context);
	load_CoreMIDI_MIDICapabilityInquiry_symbols(context);
	load_CoreMIDI_MIDISetup_symbols(context);
	load_CoreMIDI_MIDIThruConnection_symbols(context);
	load_CoreMIDI_MIDIServices_symbols(context);
	load_CoreMIDI_MIDINetworkSession_symbols(context);
}

JSValue* extractNFICoreMIDIStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context)
{
	if (strcmp(type, @encode(MIDIMessage_96)) == 0) {
		MIDIMessage_96 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIMessage_96: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIMessage_128)) == 0) {
		MIDIMessage_128 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIMessage_128: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIMessage_64)) == 0) {
		MIDIMessage_64 argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIMessage_64: argument inContext: context];
	} else if (strcmp(type, @encode(MIDITransform)) == 0) {
		MIDITransform argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDITransform: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIControlTransform)) == 0) {
		MIDIControlTransform argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIControlTransform: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIThruConnectionEndpoint)) == 0) {
		MIDIThruConnectionEndpoint argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIThruConnectionEndpoint: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIObjectAddRemoveNotification)) == 0) {
		MIDIObjectAddRemoveNotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIObjectAddRemoveNotification: argument inContext: context];
	} else if (strcmp(type, @encode(MIDIIOErrorNotification)) == 0) {
		MIDIIOErrorNotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDIIOErrorNotification: argument inContext: context];
	} else if (strcmp(type, @encode(MIDINotification)) == 0) {
		MIDINotification argument;
		[invocation getArgument: &argument atIndex: index];
		return [JSValue valueWithMIDINotification: argument inContext: context];
	}    
    return nil;
}

BOOL setNFICoreMIDIStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation)
{
	if (strcmp(type, @encode(MIDIMessage_96)) == 0) {
		MIDIMessage_96 returnValue = value.toMIDIMessage_96;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIMessage_128)) == 0) {
		MIDIMessage_128 returnValue = value.toMIDIMessage_128;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIMessage_64)) == 0) {
		MIDIMessage_64 returnValue = value.toMIDIMessage_64;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDITransform)) == 0) {
		MIDITransform returnValue = value.toMIDITransform;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIControlTransform)) == 0) {
		MIDIControlTransform returnValue = value.toMIDIControlTransform;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIThruConnectionEndpoint)) == 0) {
		MIDIThruConnectionEndpoint returnValue = value.toMIDIThruConnectionEndpoint;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIObjectAddRemoveNotification)) == 0) {
		MIDIObjectAddRemoveNotification returnValue = value.toMIDIObjectAddRemoveNotification;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDIIOErrorNotification)) == 0) {
		MIDIIOErrorNotification returnValue = value.toMIDIIOErrorNotification;
		[invocation setReturnValue: &returnValue];
		return YES;
	} else if (strcmp(type, @encode(MIDINotification)) == 0) {
		MIDINotification returnValue = value.toMIDINotification;
		[invocation setReturnValue: &returnValue];
		return YES;
	}    
    return NO;
}

