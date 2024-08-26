#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIScrollView (Exports)
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
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
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
static void addProtocols()
{
	class_addProtocol([UIScrollView class], @protocol(UIScrollViewInstanceExports));
	class_addProtocol([UIScrollView class], @protocol(UIScrollViewClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIScrollViewIndicatorStyleDefault"] = @0;
	context[@"UIScrollViewIndicatorStyleBlack"] = @1;
	context[@"UIScrollViewIndicatorStyleWhite"] = @2;

	context[@"UIScrollViewKeyboardDismissModeNone"] = @0;
	context[@"UIScrollViewKeyboardDismissModeOnDrag"] = @1;
	context[@"UIScrollViewKeyboardDismissModeInteractive"] = @2;

	context[@"UIScrollViewIndexDisplayModeAutomatic"] = @0;
	context[@"UIScrollViewIndexDisplayModeAlwaysHidden"] = @1;

	context[@"UIScrollViewContentInsetAdjustmentAutomatic"] = @0;
	context[@"UIScrollViewContentInsetAdjustmentScrollableAxes"] = @1;
	context[@"UIScrollViewContentInsetAdjustmentNever"] = @2;
	context[@"UIScrollViewContentInsetAdjustmentAlways"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIScrollViewDecelerationRateFast;
	if (p != NULL) context[@"UIScrollViewDecelerationRateFast"] = @(UIScrollViewDecelerationRateFast);
	p = (void*) &UIScrollViewDecelerationRateNormal;
	if (p != NULL) context[@"UIScrollViewDecelerationRateNormal"] = @(UIScrollViewDecelerationRateNormal);
}
void UIKit_UIScrollViewProtocols()
{
	(void)@protocol(UIScrollViewDelegate);
}
void load_UIKit_UIScrollView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
