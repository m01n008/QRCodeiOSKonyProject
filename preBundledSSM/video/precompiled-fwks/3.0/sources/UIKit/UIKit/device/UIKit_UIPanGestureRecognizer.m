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
	class_addProtocol([UIPanGestureRecognizer class], @protocol(UIPanGestureRecognizerInstanceExports));
	class_addProtocol([UIPanGestureRecognizer class], @protocol(UIPanGestureRecognizerClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIScrollTypeDiscrete"] = @0U;
	context[@"UIScrollTypeContinuous"] = @1U;

	context[@"UIScrollTypeMaskDiscrete"] = @1;
	context[@"UIScrollTypeMaskContinuous"] = @2;
	context[@"UIScrollTypeMaskAll"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIPanGestureRecognizer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
