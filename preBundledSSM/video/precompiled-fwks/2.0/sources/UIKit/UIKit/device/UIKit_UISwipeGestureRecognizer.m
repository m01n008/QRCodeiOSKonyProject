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
	class_addProtocol([UISwipeGestureRecognizer class], @protocol(UISwipeGestureRecognizerInstanceExports));
	class_addProtocol([UISwipeGestureRecognizer class], @protocol(UISwipeGestureRecognizerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UISwipeGestureRecognizerDirectionRight"] = @1U;
	context[@"UISwipeGestureRecognizerDirectionLeft"] = @2U;
	context[@"UISwipeGestureRecognizerDirectionUp"] = @4U;
	context[@"UISwipeGestureRecognizerDirectionDown"] = @8U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UISwipeGestureRecognizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
