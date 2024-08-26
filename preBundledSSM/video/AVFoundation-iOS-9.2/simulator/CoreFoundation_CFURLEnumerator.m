#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCFURLEnumeratorDefaultBehavior"] = @0UL;
	context[@"kCFURLEnumeratorDescendRecursively"] = @1UL;
	context[@"kCFURLEnumeratorSkipInvisibles"] = @2UL;
	context[@"kCFURLEnumeratorGenerateFileReferenceURLs"] = @4UL;
	context[@"kCFURLEnumeratorSkipPackageContents"] = @8UL;
	context[@"kCFURLEnumeratorIncludeDirectoriesPreOrder"] = @16UL;
	context[@"kCFURLEnumeratorIncludeDirectoriesPostOrder"] = @32UL;

	context[@"kCFURLEnumeratorSuccess"] = @1L;
	context[@"kCFURLEnumeratorEnd"] = @2L;
	context[@"kCFURLEnumeratorError"] = @3L;
	context[@"kCFURLEnumeratorDirectoryPostOrderSuccess"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreFoundation_CFURLEnumerator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
