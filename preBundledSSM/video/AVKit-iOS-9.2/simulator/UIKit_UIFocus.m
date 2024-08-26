#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([UIFocusUpdateContext class], @protocol(UIFocusUpdateContextInstanceExports));
	class_addProtocol([UIFocusUpdateContext class], @protocol(UIFocusUpdateContextClassExports));
	class_addProtocol([UIFocusGuide class], @protocol(UIFocusGuideInstanceExports));
	class_addProtocol([UIFocusGuide class], @protocol(UIFocusGuideClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIFocusHeadingUp"] = @1U;
	context[@"UIFocusHeadingDown"] = @2U;
	context[@"UIFocusHeadingLeft"] = @4U;
	context[@"UIFocusHeadingRight"] = @8U;
	context[@"UIFocusHeadingNext"] = @16U;
	context[@"UIFocusHeadingPrevious"] = @32U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UIFocusProtocols()
{
	(void)@protocol(UIFocusEnvironment);
}
void load_UIKit_UIFocus_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
