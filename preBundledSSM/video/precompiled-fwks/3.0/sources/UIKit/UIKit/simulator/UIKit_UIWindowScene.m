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
	class_addProtocol([UIWindowSceneDestructionRequestOptions class], @protocol(UIWindowSceneDestructionRequestOptionsInstanceExports));
	class_addProtocol([UIWindowSceneDestructionRequestOptions class], @protocol(UIWindowSceneDestructionRequestOptionsClassExports));
	class_addProtocol([UIWindowScene class], @protocol(UIWindowSceneInstanceExports));
	class_addProtocol([UIWindowScene class], @protocol(UIWindowSceneClassExports));
	class_addProtocol([UISceneSizeRestrictions class], @protocol(UISceneSizeRestrictionsInstanceExports));
	class_addProtocol([UISceneSizeRestrictions class], @protocol(UISceneSizeRestrictionsClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIWindowSceneDismissalAnimationStandard"] = @1L;
	context[@"UIWindowSceneDismissalAnimationCommit"] = @2L;
	context[@"UIWindowSceneDismissalAnimationDecline"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIWindowSceneSessionRoleExternalDisplay;
	if (p != NULL) context[@"UIWindowSceneSessionRoleExternalDisplay"] = UIWindowSceneSessionRoleExternalDisplay;
	p = (void*) &UIWindowSceneSessionRoleApplication;
	if (p != NULL) context[@"UIWindowSceneSessionRoleApplication"] = UIWindowSceneSessionRoleApplication;
}
void UIKit_UIWindowSceneProtocols()
{
	(void)@protocol(UIWindowSceneDelegate);
}
void load_UIKit_UIWindowScene_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
