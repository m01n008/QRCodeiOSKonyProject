#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UITabBarItemAppearance (Exports)
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
-(id) jsinitWithStyle: (UITabBarItemAppearanceStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithStyle: style ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UITabBarItemStateAppearance class], @protocol(UITabBarItemStateAppearanceInstanceExports));
	class_addProtocol([UITabBarItemStateAppearance class], @protocol(UITabBarItemStateAppearanceClassExports));
	class_addProtocol([UITabBarAppearance class], @protocol(UITabBarAppearanceInstanceExports));
	class_addProtocol([UITabBarAppearance class], @protocol(UITabBarAppearanceClassExports));
	class_addProtocol([UITabBarItemAppearance class], @protocol(UITabBarItemAppearanceInstanceExports));
	class_addProtocol([UITabBarItemAppearance class], @protocol(UITabBarItemAppearanceClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UITabBarItemAppearanceStyleStacked"] = @0;
	context[@"UITabBarItemAppearanceStyleInline"] = @1;
	context[@"UITabBarItemAppearanceStyleCompactInline"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UITabBarAppearance_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
