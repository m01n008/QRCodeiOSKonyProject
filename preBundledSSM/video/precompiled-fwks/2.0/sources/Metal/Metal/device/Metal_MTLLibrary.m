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
	context[@"MTLPatchTypeNone"] = @0U;
	context[@"MTLPatchTypeTriangle"] = @1U;
	context[@"MTLPatchTypeQuad"] = @2U;

	context[@"MTLFunctionTypeVertex"] = @1U;
	context[@"MTLFunctionTypeFragment"] = @2U;
	context[@"MTLFunctionTypeKernel"] = @3U;

	context[@"MTLLanguageVersion1_0"] = @65536U;
	context[@"MTLLanguageVersion1_1"] = @65537U;
	context[@"MTLLanguageVersion1_2"] = @65538U;
	context[@"MTLLanguageVersion2_0"] = @131072U;

	context[@"MTLLibraryErrorUnsupported"] = @1U;
	context[@"MTLLibraryErrorInternal"] = @2U;
	context[@"MTLLibraryErrorCompileFailure"] = @3U;
	context[@"MTLLibraryErrorCompileWarning"] = @4U;
	context[@"MTLLibraryErrorFunctionNotFound"] = @5U;
	context[@"MTLLibraryErrorFileNotFound"] = @6U;

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
