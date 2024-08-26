#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIAccessibilityCustomAction (Exports)
-(id) jsinitWithName: (NSString *) name image: (UIImage *) image target: (id) target selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithName: name image: image target: target selector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) name target: (id) target selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithName: name target: target selector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName image: (UIImage *) image actionHandler: (JSValue *) actionHandler 
{
	BOOL (^ actionHandler_)(UIAccessibilityCustomAction * ) = nil;
	if (!actionHandler.isUndefined) {
		actionHandler_ = ^BOOL(UIAccessibilityCustomAction * arg0) {
			JSContext* __jsContext = actionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, actionHandler, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithAttributedName: attributedName image: image actionHandler: actionHandler_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) name image: (UIImage *) image actionHandler: (JSValue *) actionHandler 
{
	BOOL (^ actionHandler_)(UIAccessibilityCustomAction * ) = nil;
	if (!actionHandler.isUndefined) {
		actionHandler_ = ^BOOL(UIAccessibilityCustomAction * arg0) {
			JSContext* __jsContext = actionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, actionHandler, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithName: name image: image actionHandler: actionHandler_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName actionHandler: (JSValue *) actionHandler 
{
	BOOL (^ actionHandler_)(UIAccessibilityCustomAction * ) = nil;
	if (!actionHandler.isUndefined) {
		actionHandler_ = ^BOOL(UIAccessibilityCustomAction * arg0) {
			JSContext* __jsContext = actionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, actionHandler, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithAttributedName: attributedName actionHandler: actionHandler_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName image: (UIImage *) image target: (id) target selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithAttributedName: attributedName image: image target: target selector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithAttributedName: (NSAttributedString *) attributedName target: (id) target selector: (NSString *) selector 
{
	SEL selector_ = NSSelectorFromString(selector);
	id resultVal__;
	resultVal__ = [[self initWithAttributedName: attributedName target: target selector: selector_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) name actionHandler: (JSValue *) actionHandler 
{
	BOOL (^ actionHandler_)(UIAccessibilityCustomAction * ) = nil;
	if (!actionHandler.isUndefined) {
		actionHandler_ = ^BOOL(UIAccessibilityCustomAction * arg0) {
			JSContext* __jsContext = actionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, actionHandler, self, parameters);
			return [result toInt32];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithName: name actionHandler: actionHandler_ ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsActionHandler
{
	return [JSValue valueWithObject: self.actionHandler inContext: [JSContext currentContext]];
}
-(void) setJsActionHandler: (JSValue *) value
{
	BOOL (^ value_)(UIAccessibilityCustomAction * ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(UIAccessibilityCustomAction * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.actionHandler = value_;
}
-(NSString *) getJsSelector
{
	return NSStringFromSelector(self.selector);
}
-(void) setJsSelector: (NSString *) value
{
	self.selector = NSSelectorFromString(value);
}
@end
static void addProtocols()
{
	class_addProtocol([UIAccessibilityCustomAction class], @protocol(UIAccessibilityCustomActionInstanceExports));
	class_addProtocol([UIAccessibilityCustomAction class], @protocol(UIAccessibilityCustomActionClassExports));
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
void load_UIKit_UIAccessibilityCustomAction_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
