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
	class_addProtocol([MTLIntersectionFunctionTableDescriptor class], @protocol(MTLIntersectionFunctionTableDescriptorInstanceExports));
	class_addProtocol([MTLIntersectionFunctionTableDescriptor class], @protocol(MTLIntersectionFunctionTableDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLIntersectionFunctionSignatureNone"] = @0UL;
	context[@"MTLIntersectionFunctionSignatureInstancing"] = @1UL;
	context[@"MTLIntersectionFunctionSignatureTriangleData"] = @2UL;
	context[@"MTLIntersectionFunctionSignatureWorldSpaceData"] = @4UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Metal_MTLIntersectionFunctionTableProtocols()
{
	(void)@protocol(MTLIntersectionFunctionTable);
}
void load_Metal_MTLIntersectionFunctionTable_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
