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
	class_addProtocol([UIBlurEffect class], @protocol(UIBlurEffectInstanceExports));
	class_addProtocol([UIBlurEffect class], @protocol(UIBlurEffectClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIBlurEffectStyleExtraLight"] = @0L;
	context[@"UIBlurEffectStyleLight"] = @1L;
	context[@"UIBlurEffectStyleDark"] = @2L;
	context[@"UIBlurEffectStyleRegular"] = @4L;
	context[@"UIBlurEffectStyleProminent"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIBlurEffect_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
