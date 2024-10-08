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
	class_addProtocol([NSEnumerator class], @protocol(NSEnumeratorInstanceExports));
	class_addProtocol([NSEnumerator class], @protocol(NSEnumeratorClassExports));
	class_addProtocol([NSEnumerator class], @protocol(NSEnumeratorNSExtendedEnumeratorCategoryInstanceExports));
	class_addProtocol([NSEnumerator class], @protocol(NSEnumeratorNSExtendedEnumeratorCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void Foundation_NSEnumeratorProtocols()
{
	(void)objc_getProtocol('NSFastEnumeration');
}
void load_Foundation_NSEnumerator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
