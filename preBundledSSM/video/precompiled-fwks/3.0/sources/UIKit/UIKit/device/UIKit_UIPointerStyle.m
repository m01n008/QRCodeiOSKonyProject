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
	class_addProtocol([UIPointerEffect class], @protocol(UIPointerEffectInstanceExports));
	class_addProtocol([UIPointerEffect class], @protocol(UIPointerEffectClassExports));
	class_addProtocol([UIPointerHoverEffect class], @protocol(UIPointerHoverEffectInstanceExports));
	class_addProtocol([UIPointerHoverEffect class], @protocol(UIPointerHoverEffectClassExports));
	class_addProtocol([UIPointerLiftEffect class], @protocol(UIPointerLiftEffectInstanceExports));
	class_addProtocol([UIPointerLiftEffect class], @protocol(UIPointerLiftEffectClassExports));
	class_addProtocol([UIPointerShape class], @protocol(UIPointerShapeInstanceExports));
	class_addProtocol([UIPointerShape class], @protocol(UIPointerShapeClassExports));
	class_addProtocol([UIPointerHighlightEffect class], @protocol(UIPointerHighlightEffectInstanceExports));
	class_addProtocol([UIPointerHighlightEffect class], @protocol(UIPointerHighlightEffectClassExports));
	class_addProtocol([UIPointerStyle class], @protocol(UIPointerStyleInstanceExports));
	class_addProtocol([UIPointerStyle class], @protocol(UIPointerStyleClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIPointerEffectTintModeNone"] = @0;
	context[@"UIPointerEffectTintModeOverlay"] = @1;
	context[@"UIPointerEffectTintModeUnderlay"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIPointerStyle_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
