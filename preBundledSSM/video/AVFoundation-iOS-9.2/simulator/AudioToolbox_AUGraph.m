#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
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
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
