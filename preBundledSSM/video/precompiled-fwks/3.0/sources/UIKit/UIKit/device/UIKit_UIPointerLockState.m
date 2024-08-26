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
	class_addProtocol([UIScene class], @protocol(UIScenePointerLockStateCategoryInstanceExports));
	class_addProtocol([UIScene class], @protocol(UIScenePointerLockStateCategoryClassExports));
	class_addProtocol([UIPointerLockState class], @protocol(UIPointerLockStateInstanceExports));
	class_addProtocol([UIPointerLockState class], @protocol(UIPointerLockStateClassExports));
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
	p = (void*) &UIPointerLockStateSceneUserInfoKey;
	if (p != NULL) context[@"UIPointerLockStateSceneUserInfoKey"] = UIPointerLockStateSceneUserInfoKey;
	p = (void*) &UIPointerLockStateDidChangeNotification;
	if (p != NULL) context[@"UIPointerLockStateDidChangeNotification"] = UIPointerLockStateDidChangeNotification;
}
void load_UIKit_UIPointerLockState_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
