#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVTextStyleRule (Exports)
-(id) jsinitWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes textSelector: (NSString *) textSelector 
{
	id resultVal__;
	resultVal__ = [[self initWithTextMarkupAttributes: textMarkupAttributes textSelector: textSelector ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTextMarkupAttributes: (NSDictionary *) textMarkupAttributes 
{
	id resultVal__;
	resultVal__ = [[self initWithTextMarkupAttributes: textMarkupAttributes ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVTextStyleRule class], @protocol(AVTextStyleRuleInstanceExports));
	class_addProtocol([AVTextStyleRule class], @protocol(AVTextStyleRuleClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVTextStyleRule_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
