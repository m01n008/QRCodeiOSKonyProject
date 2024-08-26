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
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLDynamicLibraryErrorNone"] = @0UL;
	context[@"MTLDynamicLibraryErrorInvalidFile"] = @1UL;
	context[@"MTLDynamicLibraryErrorCompilationFailure"] = @2UL;
	context[@"MTLDynamicLibraryErrorUnresolvedInstallName"] = @3UL;
	context[@"MTLDynamicLibraryErrorDependencyLoadFailure"] = @4UL;
	context[@"MTLDynamicLibraryErrorUnsupported"] = @5UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLDynamicLibraryDomain;
	if (p != NULL) context[@"MTLDynamicLibraryDomain"] = MTLDynamicLibraryDomain;
}
void Metal_MTLDynamicLibraryProtocols()
{
	(void)@protocol(MTLDynamicLibrary);
}
void load_Metal_MTLDynamicLibrary_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
