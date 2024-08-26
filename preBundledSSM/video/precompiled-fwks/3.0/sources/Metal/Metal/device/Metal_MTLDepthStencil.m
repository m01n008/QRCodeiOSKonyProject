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
	context[@"MTLCompareFunctionNever"] = @0U;
	context[@"MTLCompareFunctionLess"] = @1U;
	context[@"MTLCompareFunctionEqual"] = @2U;
	context[@"MTLCompareFunctionLessEqual"] = @3U;
	context[@"MTLCompareFunctionGreater"] = @4U;
	context[@"MTLCompareFunctionNotEqual"] = @5U;
	context[@"MTLCompareFunctionGreaterEqual"] = @6U;
	context[@"MTLCompareFunctionAlways"] = @7U;

	context[@"MTLStencilOperationKeep"] = @0U;
	context[@"MTLStencilOperationZero"] = @1U;
	context[@"MTLStencilOperationReplace"] = @2U;
	context[@"MTLStencilOperationIncrementClamp"] = @3U;
	context[@"MTLStencilOperationDecrementClamp"] = @4U;
	context[@"MTLStencilOperationInvert"] = @5U;
	context[@"MTLStencilOperationIncrementWrap"] = @6U;
	context[@"MTLStencilOperationDecrementWrap"] = @7U;

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
