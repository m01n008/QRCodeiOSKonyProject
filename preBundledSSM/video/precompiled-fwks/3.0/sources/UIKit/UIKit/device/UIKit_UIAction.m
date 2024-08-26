#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIAction (Exports)
+(id) jsactionWithTitle: (NSString *) title image: (UIImage *) image identifier: (UIActionIdentifier) identifier handler: (JSValue *) handler 
{
	void (^ handler_)(__kindof UIAction * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(__kindof UIAction * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self actionWithTitle: title image: image identifier: identifier handler: handler_ ];
	return resultVal__;
}
+(id) jsactionWithHandler: (JSValue *) handler 
{
	void (^ handler_)(__kindof UIAction * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(__kindof UIAction * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self actionWithHandler: handler_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIAction class], @protocol(UIActionInstanceExports));
	class_addProtocol([UIAction class], @protocol(UIActionClassExports));
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
void load_UIKit_UIAction_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
