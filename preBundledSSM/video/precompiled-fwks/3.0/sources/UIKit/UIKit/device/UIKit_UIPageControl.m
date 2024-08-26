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
	class_addProtocol([UIPageControl class], @protocol(UIPageControlInstanceExports));
	class_addProtocol([UIPageControl class], @protocol(UIPageControlClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIPageControlInteractionStateNone"] = @0;
	context[@"UIPageControlInteractionStateDiscrete"] = @1;
	context[@"UIPageControlInteractionStateContinuous"] = @2;

	context[@"UIPageControlBackgroundStyleAutomatic"] = @0;
	context[@"UIPageControlBackgroundStyleProminent"] = @1;
	context[@"UIPageControlBackgroundStyleMinimal"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIPageControl_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
