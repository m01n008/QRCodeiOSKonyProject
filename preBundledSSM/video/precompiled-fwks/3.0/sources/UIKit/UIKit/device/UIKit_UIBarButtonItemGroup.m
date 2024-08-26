#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIBarButtonItemGroup (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinitWithBarButtonItems: (NSArray *) barButtonItems representativeItem: (UIBarButtonItem *) representativeItem 
{
	id resultVal__;
	resultVal__ = [[self initWithBarButtonItems: barButtonItems representativeItem: representativeItem ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIBarButtonItemGroup class], @protocol(UIBarButtonItemGroupInstanceExports));
	class_addProtocol([UIBarButtonItemGroup class], @protocol(UIBarButtonItemGroupClassExports));
	class_addProtocol([UIBarButtonItem class], @protocol(UIBarButtonItemUIBarButtonItemGroupCategoryInstanceExports));
	class_addProtocol([UIBarButtonItem class], @protocol(UIBarButtonItemUIBarButtonItemGroupCategoryClassExports));
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
void load_UIKit_UIBarButtonItemGroup_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
