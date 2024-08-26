#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIButton (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIButton class], @protocol(UIButtonUIButtonDeprecatedCategoryInstanceExports));
	class_addProtocol([UIButton class], @protocol(UIButtonUIButtonDeprecatedCategoryClassExports));
	class_addProtocol([UIButton class], @protocol(UIButtonInstanceExports));
	class_addProtocol([UIButton class], @protocol(UIButtonClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIButtonTypeCustom"] = @0;
	context[@"UIButtonTypeSystem"] = @1;
	context[@"UIButtonTypeDetailDisclosure"] = @2;
	context[@"UIButtonTypeInfoLight"] = @3;
	context[@"UIButtonTypeInfoDark"] = @4;
	context[@"UIButtonTypeContactAdd"] = @5;
	context[@"UIButtonTypeRoundedRect"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIButton_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
