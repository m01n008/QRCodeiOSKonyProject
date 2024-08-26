#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (Metal_MTLIndirectCommandBuffer)
+(JSValue*) valueWithMTLIndirectCommandBufferExecutionRange: (MTLIndirectCommandBufferExecutionRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"location": @(s.location),
		@"length": @(s.length),
	} inContext: context];
}
-(MTLIndirectCommandBufferExecutionRange) toMTLIndirectCommandBufferExecutionRange {
	return (MTLIndirectCommandBufferExecutionRange) {
		(uint32_t) [self[@"location"] toUInt32],
		(uint32_t) [self[@"length"] toUInt32],
	};
}
@end
static void addProtocols()
{
	class_addProtocol([MTLIndirectCommandBufferDescriptor class], @protocol(MTLIndirectCommandBufferDescriptorInstanceExports));
	class_addProtocol([MTLIndirectCommandBufferDescriptor class], @protocol(MTLIndirectCommandBufferDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"MTLIndirectCommandBufferExecutionRangeMake"] = ^MTLIndirectCommandBufferExecutionRange(uint32_t arg0, uint32_t arg1) {
		return MTLIndirectCommandBufferExecutionRangeMake(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLIndirectCommandTypeDraw"] = @1U;
	context[@"MTLIndirectCommandTypeDrawIndexed"] = @2U;
	context[@"MTLIndirectCommandTypeDrawPatches"] = @4U;
	context[@"MTLIndirectCommandTypeDrawIndexedPatches"] = @8U;
	context[@"MTLIndirectCommandTypeConcurrentDispatch"] = @32U;
	context[@"MTLIndirectCommandTypeConcurrentDispatchThreads"] = @64U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLIndirectCommandBufferProtocols()
{
	(void)@protocol(MTLIndirectCommandBuffer);
}
void load_Metal_MTLIndirectCommandBuffer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
