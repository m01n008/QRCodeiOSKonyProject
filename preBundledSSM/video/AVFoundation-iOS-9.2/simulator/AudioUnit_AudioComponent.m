#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AudioUnit_AudioComponent)
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
		(OSType) [self[@"componentType"] toDouble],
		(OSType) [self[@"componentSubType"] toDouble],
		(OSType) [self[@"componentManufacturer"] toDouble],
		(UInt32) [self[@"componentFlags"] toDouble],
		(UInt32) [self[@"componentFlagsMask"] toDouble],
	};
}
@end
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kAudioComponentFlag_Unsearchable"] = @1UL;
	context[@"kAudioComponentFlag_SandboxSafe"] = @2UL;
	context[@"kAudioComponentFlag_IsV3AudioUnit"] = @4UL;
	context[@"kAudioComponentFlag_RequiresAsyncInstantiation"] = @8UL;
	context[@"kAudioComponentFlag_CanLoadInProcess"] = @16UL;

	context[@"kAudioComponentInstantiation_LoadOutOfProcess"] = @1UL;

	context[@"kAudioComponentValidationResult_Unknown"] = @0UL;
	context[@"kAudioComponentValidationResult_Passed"] = @1UL;
	context[@"kAudioComponentValidationResult_Failed"] = @2UL;
	context[@"kAudioComponentValidationResult_TimedOut"] = @3UL;
	context[@"kAudioComponentValidationResult_UnauthorizedError_Open"] = @4UL;
	context[@"kAudioComponentValidationResult_UnauthorizedError_Init"] = @5UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AudioUnit_AudioComponent_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
