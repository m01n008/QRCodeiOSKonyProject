#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIImpactFeedbackGenerator (Exports)
-(id) jsinitWithStyle: (UIImpactFeedbackStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithStyle: style ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIImpactFeedbackGenerator class], @protocol(UIImpactFeedbackGeneratorInstanceExports));
	class_addProtocol([UIImpactFeedbackGenerator class], @protocol(UIImpactFeedbackGeneratorClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIImpactFeedbackStyleLight"] = @0L;
	context[@"UIImpactFeedbackStyleMedium"] = @1L;
	context[@"UIImpactFeedbackStyleHeavy"] = @2L;
	context[@"UIImpactFeedbackStyleSoft"] = @3L;
	context[@"UIImpactFeedbackStyleRigid"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIImpactFeedbackGenerator_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
