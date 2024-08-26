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
	class_addProtocol([MTLBinaryArchiveDescriptor class], @protocol(MTLBinaryArchiveDescriptorInstanceExports));
	class_addProtocol([MTLBinaryArchiveDescriptor class], @protocol(MTLBinaryArchiveDescriptorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLBinaryArchiveErrorNone"] = @0UL;
	context[@"MTLBinaryArchiveErrorInvalidFile"] = @1UL;
	context[@"MTLBinaryArchiveErrorUnexpectedElement"] = @2UL;
	context[@"MTLBinaryArchiveErrorCompilationFailure"] = @3UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLBinaryArchiveDomain;
	if (p != NULL) context[@"MTLBinaryArchiveDomain"] = MTLBinaryArchiveDomain;
}
void Metal_MTLBinaryArchiveProtocols()
{
	(void)@protocol(MTLBinaryArchive);
}
void load_Metal_MTLBinaryArchive_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
