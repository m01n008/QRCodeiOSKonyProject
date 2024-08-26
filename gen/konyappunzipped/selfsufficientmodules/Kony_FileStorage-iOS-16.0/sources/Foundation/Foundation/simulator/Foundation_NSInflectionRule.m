#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSInflectionRule (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSInflectionRuleExplicit (Exports)
-(id) jsinitWithMorphology: (NSMorphology *) morphology 
{
	id resultVal__;
	resultVal__ = [[self initWithMorphology: morphology ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSInflectionRule class], @protocol(NSInflectionRuleInstanceExports));
	class_addProtocol([NSInflectionRule class], @protocol(NSInflectionRuleClassExports));
	class_addProtocol([NSInflectionRuleExplicit class], @protocol(NSInflectionRuleExplicitInstanceExports));
	class_addProtocol([NSInflectionRuleExplicit class], @protocol(NSInflectionRuleExplicitClassExports));
	class_addProtocol([NSInflectionRule class], @protocol(NSInflectionRuleNSInflectionAvailabilityCategoryInstanceExports));
	class_addProtocol([NSInflectionRule class], @protocol(NSInflectionRuleNSInflectionAvailabilityCategoryClassExports));
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
void load_Foundation_NSInflectionRule_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
