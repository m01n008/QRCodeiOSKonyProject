#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UISnapBehavior (Exports)
-(id) jsinitWithItem: (id) item snapToPoint: (CGPoint) point 
{
	id resultVal__;
	resultVal__ = [[self initWithItem: item snapToPoint: point ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UISnapBehavior class], @protocol(UISnapBehaviorInstanceExports));
	class_addProtocol([UISnapBehavior class], @protocol(UISnapBehaviorClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UISnapBehavior_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
