#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UISceneSession (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation UISceneConfiguration (Exports)
-(id) jsinitWithName: (NSString *) name sessionRole: (UISceneSessionRole) sessionRole 
{
	id resultVal__;
	resultVal__ = [[self initWithName: name sessionRole: sessionRole ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsSceneClass
{
	return [JSValue valueWithObject: self.sceneClass inContext: [JSContext currentContext]];
}
-(void) setJsSceneClass: (JSValue *) value
{
	self.sceneClass = objc_getClass([[value[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
}
-(JSValue *) getJsDelegateClass
{
	return [JSValue valueWithObject: self.delegateClass inContext: [JSContext currentContext]];
}
-(void) setJsDelegateClass: (JSValue *) value
{
	self.delegateClass = objc_getClass([[value[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
}
@end
static void addProtocols()
{
	class_addProtocol([UISceneSession class], @protocol(UISceneSessionInstanceExports));
	class_addProtocol([UISceneSession class], @protocol(UISceneSessionClassExports));
	class_addProtocol([UISceneConfiguration class], @protocol(UISceneConfigurationInstanceExports));
	class_addProtocol([UISceneConfiguration class], @protocol(UISceneConfigurationClassExports));
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
void load_UIKit_UISceneSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
