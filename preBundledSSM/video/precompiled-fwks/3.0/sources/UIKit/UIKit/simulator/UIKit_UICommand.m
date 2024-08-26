#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICommandAlternate (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(id) jsalternateWithTitle: (NSString *) title action: (NSString *) action modifierFlags: (UIKeyModifierFlags) modifierFlags 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self alternateWithTitle: title action: action_ modifierFlags: modifierFlags ];
	return resultVal__;
}
-(NSString *) getJsAction
{
	return NSStringFromSelector(self.action);
}
@end
@implementation UICommand (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action propertyList: (id) propertyList 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self commandWithTitle: title image: image action: action_ propertyList: propertyList ];
	return resultVal__;
}
+(id) jscommandWithTitle: (NSString *) title image: (UIImage *) image action: (NSString *) action propertyList: (id) propertyList alternates: (NSArray *) alternates 
{
	SEL action_ = NSSelectorFromString(action);
	id resultVal__;
	resultVal__ = [self commandWithTitle: title image: image action: action_ propertyList: propertyList alternates: alternates ];
	return resultVal__;
}
-(NSString *) getJsAction
{
	return NSStringFromSelector(self.action);
}
@end
static void addProtocols()
{
	class_addProtocol([UICommandAlternate class], @protocol(UICommandAlternateInstanceExports));
	class_addProtocol([UICommandAlternate class], @protocol(UICommandAlternateClassExports));
	class_addProtocol([UICommand class], @protocol(UICommandInstanceExports));
	class_addProtocol([UICommand class], @protocol(UICommandClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIKeyModifierAlphaShift"] = @65536L;
	context[@"UIKeyModifierShift"] = @131072L;
	context[@"UIKeyModifierControl"] = @262144L;
	context[@"UIKeyModifierAlternate"] = @524288L;
	context[@"UIKeyModifierCommand"] = @1048576L;
	context[@"UIKeyModifierNumericPad"] = @2097152L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UICommandTagShare;
	if (p != NULL) context[@"UICommandTagShare"] = UICommandTagShare;
}
void load_UIKit_UICommand_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
