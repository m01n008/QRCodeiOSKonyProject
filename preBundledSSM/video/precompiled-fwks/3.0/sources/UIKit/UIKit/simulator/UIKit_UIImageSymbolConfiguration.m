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
	context[@"UIImageSymbolScaleDefault"] = @-1L;
	context[@"UIImageSymbolScaleUnspecified"] = @0L;
	context[@"UIImageSymbolScaleSmall"] = @1L;
	context[@"UIImageSymbolScaleMedium"] = @2L;
	context[@"UIImageSymbolScaleLarge"] = @3L;

	context[@"UIImageSymbolWeightUnspecified"] = @0L;
	context[@"UIImageSymbolWeightUltraLight"] = @1L;
	context[@"UIImageSymbolWeightThin"] = @2L;
	context[@"UIImageSymbolWeightLight"] = @3L;
	context[@"UIImageSymbolWeightRegular"] = @4L;
	context[@"UIImageSymbolWeightMedium"] = @5L;
	context[@"UIImageSymbolWeightSemibold"] = @6L;
	context[@"UIImageSymbolWeightBold"] = @7L;
	context[@"UIImageSymbolWeightHeavy"] = @8L;
	context[@"UIImageSymbolWeightBlack"] = @9L;

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
