#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLResourceStateCommandEncoder)
+(JSValue*) valueWithMTLMapIndirectArguments: (MTLMapIndirectArguments) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"regionOriginX": @(s.regionOriginX),
		@"regionOriginY": @(s.regionOriginY),
		@"regionOriginZ": @(s.regionOriginZ),
		@"regionSizeWidth": @(s.regionSizeWidth),
		@"regionSizeHeight": @(s.regionSizeHeight),
		@"regionSizeDepth": @(s.regionSizeDepth),
		@"mipMapLevel": @(s.mipMapLevel),
		@"sliceId": @(s.sliceId),
	} inContext: context];
}
-(MTLMapIndirectArguments) toMTLMapIndirectArguments {
	return (MTLMapIndirectArguments) {
		(uint32_t) [self[@"regionOriginX"] toUInt32],
		(uint32_t) [self[@"regionOriginY"] toUInt32],
		(uint32_t) [self[@"regionOriginZ"] toUInt32],
		(uint32_t) [self[@"regionSizeWidth"] toUInt32],
		(uint32_t) [self[@"regionSizeHeight"] toUInt32],
		(uint32_t) [self[@"regionSizeDepth"] toUInt32],
		(uint32_t) [self[@"mipMapLevel"] toUInt32],
		(uint32_t) [self[@"sliceId"] toUInt32],
	};
}
@end
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLSparseTextureMappingModeMap"] = @0U;
	context[@"MTLSparseTextureMappingModeUnmap"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLResourceStateCommandEncoderProtocols()
{
	(void)@protocol(MTLResourceStateCommandEncoder);
}
void load_Metal_MTLResourceStateCommandEncoder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
