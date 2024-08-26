#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
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
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action input: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags propertyList: (id) propertyList 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self commandWithTitle: title image: image action: action_ input: input modifierFlags: modifierFlags propertyList: propertyList ];
	return resultVal__;
}
+(id) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self keyCommandWithInput: input modifierFlags: modifierFlags action: action_ ];
	return resultVal__;
}
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action input: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags propertyList: (id) propertyList alternates: (NSArray *) alternates 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self commandWithTitle: title image: image action: action_ input: input modifierFlags: modifierFlags propertyList: propertyList alternates: alternates ];
	return resultVal__;
}
+(id) jskeyCommandWithInput: (NSString *) input modifierFlags: (UIKeyModifierFlags) modifierFlags action: (NSString *) action discoverabilityTitle: (NSString *) discoverabilityTitle 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self keyCommandWithInput: input modifierFlags: modifierFlags action: action_ discoverabilityTitle: discoverabilityTitle ];
	return resultVal__;
}
-(NSString *) getJsAction
{
	return NSStringFromSelector(self.action);
}
@end
static void addProtocols()
{
	class_addProtocol([UIKeyCommand class], @protocol(UIKeyCommandInstanceExports));
	class_addProtocol([UIKeyCommand class], @protocol(UIKeyCommandClassExports));
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
void load_UIKit_UIKeyCommand_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
