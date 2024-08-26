#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AUGraph)
+(JSValue*) valueWithAudioUnitNodeConnection: (AudioUnitNodeConnection) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"sourceNode": @(s.sourceNode),
		@"sourceOutputNumber": @(s.sourceOutputNumber),
		@"destNode": @(s.destNode),
		@"destInputNumber": @(s.destInputNumber),
	} inContext: context];
}
-(AudioUnitNodeConnection) toAudioUnitNodeConnection {
	return (AudioUnitNodeConnection) {
		(AUNode) [self[@"sourceNode"] toDouble],
		(UInt32) [self[@"sourceOutputNumber"] toDouble],
		(AUNode) [self[@"destNode"] toDouble],
		(UInt32) [self[@"destInputNumber"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AUGraphConnectNodeInput"] = ^OSStatus(id arg0, AUNode arg1, UInt32 arg2, AUNode arg3, UInt32 arg4) {
		return AUGraphConnectNodeInput(arg0, arg1, arg2, arg3, arg4);
	};
	context[@"AUGraphRemoveNode"] = ^OSStatus(id arg0, AUNode arg1) {
		return AUGraphRemoveNode(arg0, arg1);
	};
	context[@"AUGraphClose"] = ^OSStatus(id arg0) {
		return AUGraphClose(arg0);
	};
	context[@"AUGraphClearConnections"] = ^OSStatus(id arg0) {
		return AUGraphClearConnections(arg0);
	};
	context[@"DisposeAUGraph"] = ^OSStatus(id arg0) {
		return DisposeAUGraph(arg0);
	};
	context[@"AUGraphStop"] = ^OSStatus(id arg0) {
		return AUGraphStop(arg0);
	};
	context[@"AUGraphStart"] = ^OSStatus(id arg0) {
		return AUGraphStart(arg0);
	};
	context[@"AUGraphInitialize"] = ^OSStatus(id arg0) {
		return AUGraphInitialize(arg0);
	};
	context[@"AUGraphDisconnectNodeInput"] = ^OSStatus(id arg0, AUNode arg1, UInt32 arg2) {
		return AUGraphDisconnectNodeInput(arg0, arg1, arg2);
	};
	context[@"AUGraphOpen"] = ^OSStatus(id arg0) {
		return AUGraphOpen(arg0);
	};
	context[@"AUGraphUninitialize"] = ^OSStatus(id arg0) {
		return AUGraphUninitialize(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAUGraphErr_NodeNotFound"] = @-10860L;
	context[@"kAUGraphErr_InvalidConnection"] = @-10861L;
	context[@"kAUGraphErr_OutputNodeErr"] = @-10862L;
	context[@"kAUGraphErr_CannotDoInCurrentContext"] = @-10863L;
	context[@"kAUGraphErr_InvalidAudioUnit"] = @-10864L;

	context[@"kAUNodeInteraction_Connection"] = @1UL;
	context[@"kAUNodeInteraction_InputCallback"] = @2UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AUGraph_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
