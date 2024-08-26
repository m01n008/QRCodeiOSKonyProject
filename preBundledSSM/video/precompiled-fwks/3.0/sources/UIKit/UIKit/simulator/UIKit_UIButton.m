#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIButton (UIButtonSpringLoadingCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIButton (Exports)
-(id) jsinitWithFrame: (CGRect) frame primaryAction: (UIAction *) primaryAction 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame primaryAction: primaryAction ] autorelease];
	return resultVal__;
}
-(id) jsinitWithFrame: (CGRect) frame 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(id) jssystemButtonWithImage: (UIImage *) image target: (id) target action: (NSString *) action 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self systemButtonWithImage: image target: target action: action_ ];
	return resultVal__;
}
-(JSValue *) getJsPointerStyleProvider
{
	return [JSValue valueWithObject: self.pointerStyleProvider inContext: [JSContext currentContext]];
}
-(void) setJsPointerStyleProvider: (JSValue *) value
{
	UIPointerStyle *  (^ value_)(UIButton * , UIPointerEffect * , UIPointerShape * ) = nil;
	if (!value.isUndefined) {
		value_ = ^UIPointerStyle *(UIButton * arg0, UIPointerEffect * arg1, UIPointerShape * arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.pointerStyleProvider = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([UIButton class], @protocol(UIButtonUIButtonDeprecatedCategoryInstanceExports));
	class_addProtocol([UIButton class], @protocol(UIButtonUIButtonDeprecatedCategoryClassExports));
	class_addProtocol([UIButton class], @protocol(UIButtonSpringLoadingCategoryInstanceExports));
	class_addProtocol([UIButton class], @protocol(UIButtonSpringLoadingCategoryClassExports));
	class_addProtocol([UIButton class], @protocol(UIButtonInstanceExports));
	class_addProtocol([UIButton class], @protocol(UIButtonClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIButtonTypeCustom"] = @0L;
	context[@"UIButtonTypeSystem"] = @1L;
	context[@"UIButtonTypeDetailDisclosure"] = @2L;
	context[@"UIButtonTypeInfoLight"] = @3L;
	context[@"UIButtonTypeInfoDark"] = @4L;
	context[@"UIButtonTypeContactAdd"] = @5L;
	context[@"UIButtonTypeClose"] = @7L;
	context[@"UIButtonTypeRoundedRect"] = @1L;

	context[@"UIButtonRoleNormal"] = @0L;
	context[@"UIButtonRolePrimary"] = @1L;
	context[@"UIButtonRoleCancel"] = @2L;
	context[@"UIButtonRoleDestructive"] = @3L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIButton_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
