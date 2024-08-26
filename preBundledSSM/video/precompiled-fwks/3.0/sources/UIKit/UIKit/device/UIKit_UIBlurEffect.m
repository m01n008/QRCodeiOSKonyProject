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
	context[@"UIBlurEffectStyleExtraLight"] = @0;
	context[@"UIBlurEffectStyleLight"] = @1;
	context[@"UIBlurEffectStyleDark"] = @2;
	context[@"UIBlurEffectStyleRegular"] = @4;
	context[@"UIBlurEffectStyleProminent"] = @5;
	context[@"UIBlurEffectStyleSystemUltraThinMaterial"] = @6;
	context[@"UIBlurEffectStyleSystemThinMaterial"] = @7;
	context[@"UIBlurEffectStyleSystemMaterial"] = @8;
	context[@"UIBlurEffectStyleSystemThickMaterial"] = @9;
	context[@"UIBlurEffectStyleSystemChromeMaterial"] = @10;
	context[@"UIBlurEffectStyleSystemUltraThinMaterialLight"] = @11;
	context[@"UIBlurEffectStyleSystemThinMaterialLight"] = @12;
	context[@"UIBlurEffectStyleSystemMaterialLight"] = @13;
	context[@"UIBlurEffectStyleSystemThickMaterialLight"] = @14;
	context[@"UIBlurEffectStyleSystemChromeMaterialLight"] = @15;
	context[@"UIBlurEffectStyleSystemUltraThinMaterialDark"] = @16;
	context[@"UIBlurEffectStyleSystemThinMaterialDark"] = @17;
	context[@"UIBlurEffectStyleSystemMaterialDark"] = @18;
	context[@"UIBlurEffectStyleSystemThickMaterialDark"] = @19;
	context[@"UIBlurEffectStyleSystemChromeMaterialDark"] = @20;

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
