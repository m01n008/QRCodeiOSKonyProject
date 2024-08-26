#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioToolbox_AudioComponent)
+(JSValue*) valueWithAudioComponentDescription: (AudioComponentDescription) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"componentType": @(s.componentType),
		@"componentSubType": @(s.componentSubType),
		@"componentManufacturer": @(s.componentManufacturer),
		@"componentFlags": @(s.componentFlags),
		@"componentFlagsMask": @(s.componentFlagsMask),
	} inContext: context];
}
-(AudioComponentDescription) toAudioComponentDescription {
	return (AudioComponentDescription) {
		(OSType) [self[@"componentType"] toUInt32],
		(OSType) [self[@"componentSubType"] toUInt32],
		(OSType) [self[@"componentManufacturer"] toUInt32],
		(UInt32) [self[@"componentFlags"] toUInt32],
		(UInt32) [self[@"componentFlagsMask"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"AudioComponentInstanceCanDo"] = ^Boolean(id arg0, SInt16 arg1) {
		return AudioComponentInstanceCanDo(arg0, arg1);
	};
	context[@"AudioComponentInstanceDispose"] = ^OSStatus(id arg0) {
		return AudioComponentInstanceDispose(arg0);
	};
	context[@"AudioComponentInstanceGetComponent"] = ^id(id arg0) {
		return AudioComponentInstanceGetComponent(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioComponentFlag_Unsearchable"] = @1U;
	context[@"kAudioComponentFlag_SandboxSafe"] = @2U;
	context[@"kAudioComponentFlag_IsV3AudioUnit"] = @4U;
	context[@"kAudioComponentFlag_RequiresAsyncInstantiation"] = @8U;
	context[@"kAudioComponentFlag_CanLoadInProcess"] = @16U;

	context[@"kAudioComponentInstantiation_LoadOutOfProcess"] = @1U;

	context[@"kAudioComponentValidationResult_Unknown"] = @0U;
	context[@"kAudioComponentValidationResult_Passed"] = @1U;
	context[@"kAudioComponentValidationResult_Failed"] = @2U;
	context[@"kAudioComponentValidationResult_TimedOut"] = @3U;
	context[@"kAudioComponentValidationResult_UnauthorizedError_Open"] = @4U;
	context[@"kAudioComponentValidationResult_UnauthorizedError_Init"] = @5U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioToolbox_AudioComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
