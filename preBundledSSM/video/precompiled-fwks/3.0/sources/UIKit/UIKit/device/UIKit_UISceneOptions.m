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
	class_addProtocol([UISceneOpenExternalURLOptions class], @protocol(UISceneOpenExternalURLOptionsInstanceExports));
	class_addProtocol([UISceneOpenExternalURLOptions class], @protocol(UISceneOpenExternalURLOptionsClassExports));
	class_addProtocol([UISceneOpenURLOptions class], @protocol(UISceneOpenURLOptionsInstanceExports));
	class_addProtocol([UISceneOpenURLOptions class], @protocol(UISceneOpenURLOptionsClassExports));
	class_addProtocol([UISceneDestructionRequestOptions class], @protocol(UISceneDestructionRequestOptionsInstanceExports));
	class_addProtocol([UISceneDestructionRequestOptions class], @protocol(UISceneDestructionRequestOptionsClassExports));
	class_addProtocol([UISceneConnectionOptions class], @protocol(UISceneConnectionOptionsInstanceExports));
	class_addProtocol([UISceneConnectionOptions class], @protocol(UISceneConnectionOptionsClassExports));
	class_addProtocol([UISceneActivationRequestOptions class], @protocol(UISceneActivationRequestOptionsInstanceExports));
	class_addProtocol([UISceneActivationRequestOptions class], @protocol(UISceneActivationRequestOptionsClassExports));
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
void load_UIKit_UISceneOptions_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
