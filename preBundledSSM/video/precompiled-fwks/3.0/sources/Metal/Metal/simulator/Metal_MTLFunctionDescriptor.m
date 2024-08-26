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
	class_addProtocol([MTLFunctionDescriptor class], @protocol(MTLFunctionDescriptorInstanceExports));
	class_addProtocol([MTLFunctionDescriptor class], @protocol(MTLFunctionDescriptorClassExports));
	class_addProtocol([MTLIntersectionFunctionDescriptor class], @protocol(MTLIntersectionFunctionDescriptorInstanceExports));
	class_addProtocol([MTLIntersectionFunctionDescriptor class], @protocol(MTLIntersectionFunctionDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLFunctionOptionNone"] = @0UL;
	context[@"MTLFunctionOptionCompileToBinary"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Metal_MTLFunctionDescriptor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
