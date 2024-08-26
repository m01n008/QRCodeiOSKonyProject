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
	class_addProtocol([UIWindowScene class], @protocol(UIWindowSceneUIScreenshotServiceCategoryInstanceExports));
	class_addProtocol([UIWindowScene class], @protocol(UIWindowSceneUIScreenshotServiceCategoryClassExports));
	class_addProtocol([UIScreenshotService class], @protocol(UIScreenshotServiceInstanceExports));
	class_addProtocol([UIScreenshotService class], @protocol(UIScreenshotServiceClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UIScreenshotServiceProtocols()
{
	(void)@protocol(UIScreenshotServiceDelegate);
}
void load_UIKit_UIScreenshotService_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
