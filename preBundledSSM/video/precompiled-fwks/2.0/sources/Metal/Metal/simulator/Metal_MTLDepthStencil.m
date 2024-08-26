#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([MTLDepthStencilDescriptor class], @protocol(MTLDepthStencilDescriptorInstanceExports));
	class_addProtocol([MTLDepthStencilDescriptor class], @protocol(MTLDepthStencilDescriptorClassExports));
	class_addProtocol([MTLStencilDescriptor class], @protocol(MTLStencilDescriptorInstanceExports));
	class_addProtocol([MTLStencilDescriptor class], @protocol(MTLStencilDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLCompareFunctionNever"] = @0UL;
	context[@"MTLCompareFunctionLess"] = @1UL;
	context[@"MTLCompareFunctionEqual"] = @2UL;
	context[@"MTLCompareFunctionLessEqual"] = @3UL;
	context[@"MTLCompareFunctionGreater"] = @4UL;
	context[@"MTLCompareFunctionNotEqual"] = @5UL;
	context[@"MTLCompareFunctionGreaterEqual"] = @6UL;
	context[@"MTLCompareFunctionAlways"] = @7UL;

	context[@"MTLStencilOperationKeep"] = @0UL;
	context[@"MTLStencilOperationZero"] = @1UL;
	context[@"MTLStencilOperationReplace"] = @2UL;
	context[@"MTLStencilOperationIncrementClamp"] = @3UL;
	context[@"MTLStencilOperationDecrementClamp"] = @4UL;
	context[@"MTLStencilOperationInvert"] = @5UL;
	context[@"MTLStencilOperationIncrementWrap"] = @6UL;
	context[@"MTLStencilOperationDecrementWrap"] = @7UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLDepthStencilProtocols()
{
	(void)@protocol(MTLDepthStencilState);
}
void load_Metal_MTLDepthStencil_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
