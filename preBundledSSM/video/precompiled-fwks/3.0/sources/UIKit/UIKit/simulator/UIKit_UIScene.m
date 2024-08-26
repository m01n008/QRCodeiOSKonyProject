#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIScene (Exports)
-(void) jsopenURL: (NSURL *) url options: (UISceneOpenExternalURLOptions *) options completionHandler: (JSValue *) completion 
{
	void (^ completion_)(BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self openURL: url options: options completionHandler: completion_ ];
}
-(id) jsinitWithSession: (UISceneSession *) session connectionOptions: (UISceneConnectionOptions *) connectionOptions 
{
	id resultVal__;
	resultVal__ = [[self initWithSession: session connectionOptions: connectionOptions ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIScene class], @protocol(UISceneInstanceExports));
	class_addProtocol([UIScene class], @protocol(UISceneClassExports));
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
	p = (void*) &UISceneDidDisconnectNotification;
	if (p != NULL) context[@"UISceneDidDisconnectNotification"] = UISceneDidDisconnectNotification;
	p = (void*) &UISceneWillEnterForegroundNotification;
	if (p != NULL) context[@"UISceneWillEnterForegroundNotification"] = UISceneWillEnterForegroundNotification;
	p = (void*) &UISceneWillDeactivateNotification;
	if (p != NULL) context[@"UISceneWillDeactivateNotification"] = UISceneWillDeactivateNotification;
	p = (void*) &UISceneDidActivateNotification;
	if (p != NULL) context[@"UISceneDidActivateNotification"] = UISceneDidActivateNotification;
	p = (void*) &UISceneDidEnterBackgroundNotification;
	if (p != NULL) context[@"UISceneDidEnterBackgroundNotification"] = UISceneDidEnterBackgroundNotification;
	p = (void*) &UISceneWillConnectNotification;
	if (p != NULL) context[@"UISceneWillConnectNotification"] = UISceneWillConnectNotification;
}
void UIKit_UISceneProtocols()
{
	(void)@protocol(UISceneDelegate);
}
void load_UIKit_UIScene_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
