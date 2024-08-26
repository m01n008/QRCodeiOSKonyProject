#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIResponder (Exports)
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
-(void) jsupdateTextAttributesWithConversionHandler: (JSValue *) conversionHandler 
{
	NSDictionary  *  (^ conversionHandler_)(NSDictionary  * ) = nil;
	if (!conversionHandler.isUndefined) {
		conversionHandler_ = ^NSDictionary *(NSDictionary * arg0) {
			JSContext* __jsContext = conversionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, conversionHandler, self, parameters);
			return [result toObject];
		};
	}
	[self updateTextAttributesWithConversionHandler: conversionHandler_ ];
}
-(BOOL) jscanPerformAction: (NSString *) action withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	BOOL resultVal__;
	resultVal__ = [self canPerformAction: action_ withSender: sender ];
	return resultVal__;
}
-(id) jstargetForAction: (NSString *) action withSender: (id) sender 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self targetForAction: action_ withSender: sender ];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UIResponder (UIResponderActivityContinuationCategoryExports)
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
@implementation UIResponder (UIResponderUIPasteConfigurationSupportingCategoryExports)
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
static void addProtocols()
{
	class_addProtocol([UIResponder class], @protocol(UIResponderInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderActivityContinuationCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderActivityContinuationCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderKeyCommandsCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderKeyCommandsCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIPasteConfigurationSupportingCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIPasteConfigurationSupportingCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderInputViewAdditionsCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderInputViewAdditionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIEditingInteractionConfigurationNone"] = @0;
	context[@"UIEditingInteractionConfigurationDefault"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIKeyInputUpArrow;
	if (p != NULL) context[@"UIKeyInputUpArrow"] = UIKeyInputUpArrow;
	p = (void*) &UIKeyInputF12;
	if (p != NULL) context[@"UIKeyInputF12"] = UIKeyInputF12;
	p = (void*) &UIKeyInputF11;
	if (p != NULL) context[@"UIKeyInputF11"] = UIKeyInputF11;
	p = (void*) &UIKeyInputF10;
	if (p != NULL) context[@"UIKeyInputF10"] = UIKeyInputF10;
	p = (void*) &UIKeyInputF8;
	if (p != NULL) context[@"UIKeyInputF8"] = UIKeyInputF8;
	p = (void*) &UIKeyInputPageUp;
	if (p != NULL) context[@"UIKeyInputPageUp"] = UIKeyInputPageUp;
	p = (void*) &UIKeyInputF5;
	if (p != NULL) context[@"UIKeyInputF5"] = UIKeyInputF5;
	p = (void*) &UIKeyInputEnd;
	if (p != NULL) context[@"UIKeyInputEnd"] = UIKeyInputEnd;
	p = (void*) &UIKeyInputRightArrow;
	if (p != NULL) context[@"UIKeyInputRightArrow"] = UIKeyInputRightArrow;
	p = (void*) &UIKeyInputF3;
	if (p != NULL) context[@"UIKeyInputF3"] = UIKeyInputF3;
	p = (void*) &UIKeyInputLeftArrow;
	if (p != NULL) context[@"UIKeyInputLeftArrow"] = UIKeyInputLeftArrow;
	p = (void*) &UIKeyInputDownArrow;
	if (p != NULL) context[@"UIKeyInputDownArrow"] = UIKeyInputDownArrow;
	p = (void*) &UIKeyInputHome;
	if (p != NULL) context[@"UIKeyInputHome"] = UIKeyInputHome;
	p = (void*) &UIKeyInputPageDown;
	if (p != NULL) context[@"UIKeyInputPageDown"] = UIKeyInputPageDown;
	p = (void*) &UIKeyInputF7;
	if (p != NULL) context[@"UIKeyInputF7"] = UIKeyInputF7;
	p = (void*) &UIKeyInputF6;
	if (p != NULL) context[@"UIKeyInputF6"] = UIKeyInputF6;
	p = (void*) &UIKeyInputF4;
	if (p != NULL) context[@"UIKeyInputF4"] = UIKeyInputF4;
	p = (void*) &UIKeyInputF2;
	if (p != NULL) context[@"UIKeyInputF2"] = UIKeyInputF2;
	p = (void*) &UIKeyInputF1;
	if (p != NULL) context[@"UIKeyInputF1"] = UIKeyInputF1;
	p = (void*) &UIKeyInputF9;
	if (p != NULL) context[@"UIKeyInputF9"] = UIKeyInputF9;
	p = (void*) &UIKeyInputEscape;
	if (p != NULL) context[@"UIKeyInputEscape"] = UIKeyInputEscape;
}
void UIKit_UIResponderProtocols()
{
	(void)@protocol(UIResponderStandardEditActions);
}
void load_UIKit_UIResponder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
