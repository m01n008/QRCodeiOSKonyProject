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
	class_addProtocol([MTLAttribute class], @protocol(MTLAttributeInstanceExports));
	class_addProtocol([MTLAttribute class], @protocol(MTLAttributeClassExports));
	class_addProtocol([MTLVertexAttribute class], @protocol(MTLVertexAttributeInstanceExports));
	class_addProtocol([MTLVertexAttribute class], @protocol(MTLVertexAttributeClassExports));
	class_addProtocol([MTLCompileOptions class], @protocol(MTLCompileOptionsInstanceExports));
	class_addProtocol([MTLCompileOptions class], @protocol(MTLCompileOptionsClassExports));
	class_addProtocol([MTLFunctionConstant class], @protocol(MTLFunctionConstantInstanceExports));
	class_addProtocol([MTLFunctionConstant class], @protocol(MTLFunctionConstantClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"MTLPatchTypeNone"] = @0UL;
	context[@"MTLPatchTypeTriangle"] = @1UL;
	context[@"MTLPatchTypeQuad"] = @2UL;

	context[@"MTLFunctionTypeVertex"] = @1UL;
	context[@"MTLFunctionTypeFragment"] = @2UL;
	context[@"MTLFunctionTypeKernel"] = @3UL;

	context[@"MTLLanguageVersion1_0"] = @65536UL;
	context[@"MTLLanguageVersion1_1"] = @65537UL;
	context[@"MTLLanguageVersion1_2"] = @65538UL;
	context[@"MTLLanguageVersion2_0"] = @131072UL;

	context[@"MTLLibraryErrorUnsupported"] = @1UL;
	context[@"MTLLibraryErrorInternal"] = @2UL;
	context[@"MTLLibraryErrorCompileFailure"] = @3UL;
	context[@"MTLLibraryErrorCompileWarning"] = @4UL;
	context[@"MTLLibraryErrorFunctionNotFound"] = @5UL;
	context[@"MTLLibraryErrorFileNotFound"] = @6UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &MTLLibraryErrorDomain;
	if (p != NULL) context[@"MTLLibraryErrorDomain"] = MTLLibraryErrorDomain;
}
void Metal_MTLLibraryProtocols()
{
	(void)@protocol(MTLFunction);
	(void)@protocol(MTLLibrary);
}
void load_Metal_MTLLibrary_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
