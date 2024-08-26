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
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectInstanceExports));
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectClassExports));
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectAdditionalStylesCategoryInstanceExports));
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectAdditionalStylesCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIVibrancyEffectStyleLabel"] = @0;
	context[@"UIVibrancyEffectStyleSecondaryLabel"] = @1;
	context[@"UIVibrancyEffectStyleTertiaryLabel"] = @2;
	context[@"UIVibrancyEffectStyleQuaternaryLabel"] = @3;
	context[@"UIVibrancyEffectStyleFill"] = @4;
	context[@"UIVibrancyEffectStyleSecondaryFill"] = @5;
	context[@"UIVibrancyEffectStyleTertiaryFill"] = @6;
	context[@"UIVibrancyEffectStyleSeparator"] = @7;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIVibrancyEffect_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
