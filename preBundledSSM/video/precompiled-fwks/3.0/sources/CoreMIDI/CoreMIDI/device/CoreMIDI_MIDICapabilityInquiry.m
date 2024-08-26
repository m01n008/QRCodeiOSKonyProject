#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation MIDICIResponder (Exports)
-(id) jsinitWithDeviceInfo: (MIDICIDeviceInfo *) deviceInfo profileDelegate: (id) delegate profileStates: (MIDICIProfileStateList *) profileList supportProperties: (BOOL) propertiesSupported 
{
	id resultVal__;
	resultVal__ = [[self initWithDeviceInfo: deviceInfo profileDelegate: delegate profileStates: profileList supportProperties: propertiesSupported ] autorelease];
	return resultVal__;
}
@end
@implementation MIDICISession (Exports)
-(BOOL) jsdisableProfile: (MIDICIProfile *) profile onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self disableProfile: profile onChannel: channel error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinitWithDiscoveredNode: (MIDICIDiscoveredNode *) discoveredNode dataReadyHandler: (JSValue *) handler disconnectHandler: (JSValue *) disconnectHandler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	void (^ disconnectHandler_)(MIDICISession * , NSError * ) = nil;
	if (!disconnectHandler.isUndefined) {
		disconnectHandler_ = ^void(MIDICISession * arg0, NSError * arg1) {
			JSContext* __jsContext = disconnectHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, disconnectHandler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithDiscoveredNode: discoveredNode dataReadyHandler: handler_ disconnectHandler: disconnectHandler_ ] autorelease];
	return resultVal__;
}
-(BOOL) jsenableProfile: (MIDICIProfile *) profile onChannel: (MIDIChannelNumber) channel error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self enableProfile: profile onChannel: channel error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsProfileChangedCallback
{
	return [JSValue valueWithObject: self.profileChangedCallback inContext: [JSContext currentContext]];
}
-(void) setJsProfileChangedCallback: (JSValue *) value
{
	void (^ value_)(MIDICISession * , MIDIChannelNumber, MIDICIProfile * , BOOL) = nil;
	if (!value.isUndefined) {
		value_ = ^void(MIDICISession * arg0, MIDIChannelNumber arg1, MIDICIProfile * arg2, BOOL arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg3) inContext: __jsContext]];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.profileChangedCallback = value_;
}
-(JSValue *) getJsProfileSpecificDataHandler
{
	return [JSValue valueWithObject: self.profileSpecificDataHandler inContext: [JSContext currentContext]];
}
-(void) setJsProfileSpecificDataHandler: (JSValue *) value
{
	void (^ value_)(MIDICISession * , MIDIChannelNumber, MIDICIProfile * , NSData * ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(MIDICISession * arg0, MIDIChannelNumber arg1, MIDICIProfile * arg2, NSData * arg3) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg3 ? [JSValue valueWithObject: arg3 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.profileSpecificDataHandler = value_;
}
@end
@implementation MIDICIProfileState (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithEnabledProfiles: (NSArray *) enabled disabledProfiles: (NSArray *) disabled 
{
	id resultVal__;
	resultVal__ = [[self initWithEnabledProfiles: enabled disabledProfiles: disabled ] autorelease];
	return resultVal__;
}
-(id) jsinitWithChannel: (MIDIChannelNumber) midiChannelNum enabledProfiles: (NSArray *) enabled disabledProfiles: (NSArray *) disabled 
{
	id resultVal__;
	resultVal__ = [[self initWithChannel: midiChannelNum enabledProfiles: enabled disabledProfiles: disabled ] autorelease];
	return resultVal__;
}
@end
@implementation MIDICIDeviceInfo (Exports)
-(id) jsinitWithDestination: (MIDIEntityRef) midiDestination manufacturer: (NSData *) manufacturer family: (NSData *) family model: (NSData *) modelNumber revision: (NSData *) revisionLevel 
{
	id resultVal__;
	resultVal__ = [[self initWithDestination: midiDestination manufacturer: manufacturer family: family model: modelNumber revision: revisionLevel ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation MIDICIProfile (Exports)
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithData: (NSData *) data name: (NSString *) inName 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data name: inName ] autorelease];
	return resultVal__;
}
@end
@implementation MIDICIDiscoveredNode (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation MIDICIDiscoveryManager (Exports)
-(void) jsdiscoverWithHandler: (JSValue *) completedHandler 
{
	void (^ completedHandler_)(NSArray  * ) = nil;
	if (!completedHandler.isUndefined) {
		completedHandler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = completedHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completedHandler, self, parameters);
		};
	}
	[self discoverWithHandler: completedHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([MIDICIResponder class], @protocol(MIDICIResponderInstanceExports));
	class_addProtocol([MIDICIResponder class], @protocol(MIDICIResponderClassExports));
	class_addProtocol([MIDICISession class], @protocol(MIDICISessionInstanceExports));
	class_addProtocol([MIDICISession class], @protocol(MIDICISessionClassExports));
	class_addProtocol([MIDICIProfileState class], @protocol(MIDICIProfileStateInstanceExports));
	class_addProtocol([MIDICIProfileState class], @protocol(MIDICIProfileStateClassExports));
	class_addProtocol([MIDICIDeviceInfo class], @protocol(MIDICIDeviceInfoInstanceExports));
	class_addProtocol([MIDICIDeviceInfo class], @protocol(MIDICIDeviceInfoClassExports));
	class_addProtocol([MIDICIProfile class], @protocol(MIDICIProfileInstanceExports));
	class_addProtocol([MIDICIProfile class], @protocol(MIDICIProfileClassExports));
	class_addProtocol([MIDICIDiscoveredNode class], @protocol(MIDICIDiscoveredNodeInstanceExports));
	class_addProtocol([MIDICIDiscoveredNode class], @protocol(MIDICIDiscoveredNodeClassExports));
	class_addProtocol([MIDICIDiscoveryManager class], @protocol(MIDICIDiscoveryManagerInstanceExports));
	class_addProtocol([MIDICIDiscoveryManager class], @protocol(MIDICIDiscoveryManagerClassExports));
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
	p = (void*) &MIDIChannelsWholePort;
	if (p != NULL) context[@"MIDIChannelsWholePort"] = @(MIDIChannelsWholePort);
}
void CoreMIDI_MIDICapabilityInquiryProtocols()
{
	(void)@protocol(MIDICIProfileResponderDelegate);
}
void load_CoreMIDI_MIDICapabilityInquiry_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
