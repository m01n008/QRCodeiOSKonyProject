#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UITextField (UITextFieldAnonCategoryExports)
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
@implementation UITextField (Exports)
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
	class_addProtocol([UIView class], @protocol(UIViewUITextFieldCategoryInstanceExports));
	class_addProtocol([UIView class], @protocol(UIViewUITextFieldCategoryClassExports));
	class_addProtocol([UITextField class], @protocol(UITextFieldAnonCategoryInstanceExports));
	class_addProtocol([UITextField class], @protocol(UITextFieldAnonCategoryClassExports));
	class_addProtocol([UITextField class], @protocol(UITextFieldInstanceExports));
	class_addProtocol([UITextField class], @protocol(UITextFieldClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UITextBorderStyleNone"] = @0;
	context[@"UITextBorderStyleLine"] = @1;
	context[@"UITextBorderStyleBezel"] = @2;
	context[@"UITextBorderStyleRoundedRect"] = @3;

	context[@"UITextFieldViewModeNever"] = @0;
	context[@"UITextFieldViewModeWhileEditing"] = @1;
	context[@"UITextFieldViewModeUnlessEditing"] = @2;
	context[@"UITextFieldViewModeAlways"] = @3;

	context[@"UITextFieldDidEndEditingReasonCommitted"] = @0;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UITextFieldTextDidBeginEditingNotification;
	if (p != NULL) context[@"UITextFieldTextDidBeginEditingNotification"] = UITextFieldTextDidBeginEditingNotification;
	p = (void*) &UITextFieldDidEndEditingReasonKey;
	if (p != NULL) context[@"UITextFieldDidEndEditingReasonKey"] = UITextFieldDidEndEditingReasonKey;
	p = (void*) &UITextFieldTextDidEndEditingNotification;
	if (p != NULL) context[@"UITextFieldTextDidEndEditingNotification"] = UITextFieldTextDidEndEditingNotification;
	p = (void*) &UITextFieldTextDidChangeNotification;
	if (p != NULL) context[@"UITextFieldTextDidChangeNotification"] = UITextFieldTextDidChangeNotification;
}
void UIKit_UITextFieldProtocols()
{
	(void)@protocol(UITextFieldDelegate);
}
void load_UIKit_UITextField_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
