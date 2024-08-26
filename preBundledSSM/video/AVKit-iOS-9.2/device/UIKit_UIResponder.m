#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIKeyCommand (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
+(UIKeyCommand *) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action 
{
	SEL action_ = NSSelectorFromString(action);
	UIKeyCommand * resultVal__;
	resultVal__ = [self keyCommandWithInput: input modifierFlags: modifierFlags action: action_ ];
	return resultVal__;
}
+(UIKeyCommand *) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action discoverabilityTitle: (NSString *) discoverabilityTitle 
{
	SEL action_ = NSSelectorFromString(action);
	UIKeyCommand * resultVal__;
	resultVal__ = [self keyCommandWithInput: input modifierFlags: modifierFlags action: action_ discoverabilityTitle: discoverabilityTitle ];
	return resultVal__;
}
@end
@implementation UIResponder (Exports)
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
@end
static void addProtocols()
{
	class_addProtocol([UIKeyCommand class], @protocol(UIKeyCommandInstanceExports));
	class_addProtocol([UIKeyCommand class], @protocol(UIKeyCommandClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderActivityContinuationCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderActivityContinuationCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIResponderStandardEditActionsCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIResponderStandardEditActionsCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderKeyCommandsCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderKeyCommandsCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderInputViewAdditionsCategoryInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderUIResponderInputViewAdditionsCategoryClassExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderInstanceExports));
	class_addProtocol([UIResponder class], @protocol(UIResponderClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIKeyModifierAlphaShift"] = @65536;
	context[@"UIKeyModifierShift"] = @131072;
	context[@"UIKeyModifierControl"] = @262144;
	context[@"UIKeyModifierAlternate"] = @524288;
	context[@"UIKeyModifierCommand"] = @1048576;
	context[@"UIKeyModifierNumericPad"] = @2097152;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIKeyInputUpArrow;
	if (p != NULL) context[@"UIKeyInputUpArrow"] = UIKeyInputUpArrow;
	p = (void*) &UIKeyInputDownArrow;
	if (p != NULL) context[@"UIKeyInputDownArrow"] = UIKeyInputDownArrow;
	p = (void*) &UIKeyInputRightArrow;
	if (p != NULL) context[@"UIKeyInputRightArrow"] = UIKeyInputRightArrow;
	p = (void*) &UIKeyInputLeftArrow;
	if (p != NULL) context[@"UIKeyInputLeftArrow"] = UIKeyInputLeftArrow;
	p = (void*) &UIKeyInputEscape;
	if (p != NULL) context[@"UIKeyInputEscape"] = UIKeyInputEscape;
}
void load_UIKit_UIResponder_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
