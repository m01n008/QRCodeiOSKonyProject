#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIBarButtonItemAppearance (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jscopy
{
	id resultVal__;
	resultVal__ = [[self copy] autorelease];
	return resultVal__;
}
-(id) jsinitWithStyle: (UIBarButtonItemStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithStyle: style ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIBarButtonItemAppearance class], @protocol(UIBarButtonItemAppearanceInstanceExports));
	class_addProtocol([UIBarButtonItemAppearance class], @protocol(UIBarButtonItemAppearanceClassExports));
	class_addProtocol([UIBarButtonItemStateAppearance class], @protocol(UIBarButtonItemStateAppearanceInstanceExports));
	class_addProtocol([UIBarButtonItemStateAppearance class], @protocol(UIBarButtonItemStateAppearanceClassExports));
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
void load_UIKit_UIBarButtonItemAppearance_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
