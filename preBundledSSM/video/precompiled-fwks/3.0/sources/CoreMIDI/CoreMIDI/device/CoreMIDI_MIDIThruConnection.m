#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (CoreMIDI_MIDIThruConnection)
+(JSValue*) valueWithMIDITransform: (MIDITransform) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"transform": @(s.transform),
		@"param": @(s.param),
	} inContext: context];
}
-(MIDITransform) toMIDITransform {
	return (MIDITransform) {
		(MIDITransformType) [self[@"transform"] toInt32],
		(SInt16) [self[@"param"] toInt32],
	};
}
+(JSValue*) valueWithMIDIControlTransform: (MIDIControlTransform) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"controlType": @(s.controlType),
		@"remappedControlType": @(s.remappedControlType),
		@"controlNumber": @(s.controlNumber),
		@"transform": @(s.transform),
		@"param": @(s.param),
	} inContext: context];
}
-(MIDIControlTransform) toMIDIControlTransform {
	return (MIDIControlTransform) {
		(MIDITransformControlType) [self[@"controlType"] toInt32],
		(MIDITransformControlType) [self[@"remappedControlType"] toInt32],
		(UInt16) [self[@"controlNumber"] toUInt32],
		(MIDITransformType) [self[@"transform"] toInt32],
		(SInt16) [self[@"param"] toInt32],
	};
}
+(JSValue*) valueWithMIDIThruConnectionEndpoint: (MIDIThruConnectionEndpoint) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"endpointRef": @(s.endpointRef),
		@"uniqueID": @(s.uniqueID),
	} inContext: context];
}
-(MIDIThruConnectionEndpoint) toMIDIThruConnectionEndpoint {
	return (MIDIThruConnectionEndpoint) {
		(MIDIEndpointRef) [self[@"endpointRef"] toDouble],
		(MIDIUniqueID) [self[@"uniqueID"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"MIDIThruConnectionSetParams"] = ^OSStatus(MIDIThruConnectionRef arg0, id arg1) {
		return MIDIThruConnectionSetParams(arg0, arg1);
	};
	context[@"MIDIThruConnectionDispose"] = ^OSStatus(MIDIThruConnectionRef arg0) {
		return MIDIThruConnectionDispose(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kMIDITransform_None"] = @0;
	context[@"kMIDITransform_FilterOut"] = @1;
	context[@"kMIDITransform_MapControl"] = @2;
	context[@"kMIDITransform_Add"] = @8;
	context[@"kMIDITransform_Scale"] = @9;
	context[@"kMIDITransform_MinValue"] = @10;
	context[@"kMIDITransform_MaxValue"] = @11;
	context[@"kMIDITransform_MapValue"] = @12;

	context[@"kMIDIThruConnection_MaxEndpoints"] = @8;

	context[@"kMIDIControlType_7Bit"] = @0;
	context[@"kMIDIControlType_14Bit"] = @1;
	context[@"kMIDIControlType_7BitRPN"] = @2;
	context[@"kMIDIControlType_14BitRPN"] = @3;
	context[@"kMIDIControlType_7BitNRPN"] = @4;
	context[@"kMIDIControlType_14BitNRPN"] = @5;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMIDI_MIDIThruConnection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
