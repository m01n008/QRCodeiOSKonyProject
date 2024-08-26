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
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderUIKitAdditionsCategoryInstanceExports));
	class_addProtocol([NSItemProvider class], @protocol(NSItemProviderUIKitAdditionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIPreferredPresentationStyleUnspecified"] = @0;
	context[@"UIPreferredPresentationStyleInline"] = @1;
	context[@"UIPreferredPresentationStyleAttachment"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_NSItemProvider_UIKitAdditionsProtocols()
{
	(void)@protocol(UIItemProviderPresentationSizeProviding);
}
void load_UIKit_NSItemProvider_UIKitAdditions_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
