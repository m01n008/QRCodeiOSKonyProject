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
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedStringDrawingCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSExtendedStringDrawingCategoryClassExports));
	class_addProtocol([NSStringDrawingContext class], @protocol(NSStringDrawingContextNSStringDrawingContextDeprecatedCategoryInstanceExports));
	class_addProtocol([NSStringDrawingContext class], @protocol(NSStringDrawingContextNSStringDrawingContextDeprecatedCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSExtendedStringDrawingCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSExtendedStringDrawingCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringDrawingCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringDrawingCategoryClassExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSStringDrawingCategoryInstanceExports));
	class_addProtocol([NSAttributedString class], @protocol(NSAttributedStringNSStringDrawingCategoryClassExports));
	class_addProtocol([NSStringDrawingContext class], @protocol(NSStringDrawingContextInstanceExports));
	class_addProtocol([NSStringDrawingContext class], @protocol(NSStringDrawingContextClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSStringDrawingUsesLineFragmentOrigin"] = @1L;
	context[@"NSStringDrawingUsesFontLeading"] = @2L;
	context[@"NSStringDrawingUsesDeviceMetrics"] = @8L;
	context[@"NSStringDrawingTruncatesLastVisibleLine"] = @32L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_NSStringDrawing_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
