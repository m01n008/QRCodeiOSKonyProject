#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIBezierPath (Exports)
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
@end
static void addProtocols()
{
	class_addProtocol([UIBezierPath class], @protocol(UIBezierPathInstanceExports));
	class_addProtocol([UIBezierPath class], @protocol(UIBezierPathClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIRectCornerTopLeft"] = @1U;
	context[@"UIRectCornerTopRight"] = @2U;
	context[@"UIRectCornerBottomLeft"] = @4U;
	context[@"UIRectCornerBottomRight"] = @8U;
	context[@"UIRectCornerAllCorners"] = @-1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIBezierPath_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
