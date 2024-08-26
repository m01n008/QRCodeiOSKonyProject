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
	class_addProtocol([UIImageSymbolConfiguration class], @protocol(UIImageSymbolConfigurationInstanceExports));
	class_addProtocol([UIImageSymbolConfiguration class], @protocol(UIImageSymbolConfigurationClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"UIImageSymbolWeightForFontWeight"] = ^UIImageSymbolWeight(UIFontWeight arg0) {
		return UIImageSymbolWeightForFontWeight(arg0);
	};
	context[@"UIFontWeightForImageSymbolWeight"] = ^UIFontWeight(UIImageSymbolWeight arg0) {
		return UIFontWeightForImageSymbolWeight(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIImageSymbolScaleDefault"] = @-1;
	context[@"UIImageSymbolScaleUnspecified"] = @0;
	context[@"UIImageSymbolScaleSmall"] = @1;
	context[@"UIImageSymbolScaleMedium"] = @2;
	context[@"UIImageSymbolScaleLarge"] = @3;

	context[@"UIImageSymbolWeightUnspecified"] = @0;
	context[@"UIImageSymbolWeightUltraLight"] = @1;
	context[@"UIImageSymbolWeightThin"] = @2;
	context[@"UIImageSymbolWeightLight"] = @3;
	context[@"UIImageSymbolWeightRegular"] = @4;
	context[@"UIImageSymbolWeightMedium"] = @5;
	context[@"UIImageSymbolWeightSemibold"] = @6;
	context[@"UIImageSymbolWeightBold"] = @7;
	context[@"UIImageSymbolWeightHeavy"] = @8;
	context[@"UIImageSymbolWeightBlack"] = @9;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIImageSymbolConfiguration_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
