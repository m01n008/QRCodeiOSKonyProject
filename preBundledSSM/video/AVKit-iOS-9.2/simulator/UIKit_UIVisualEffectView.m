#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIVisualEffectView (Exports)
-(id) jsinitWithEffect: (UIVisualEffect *) effect 
{
	id resultVal__;
	resultVal__ = [[self initWithEffect: effect ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation UIVisualEffect (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIVisualEffectView class], @protocol(UIVisualEffectViewInstanceExports));
	class_addProtocol([UIVisualEffectView class], @protocol(UIVisualEffectViewClassExports));
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectInstanceExports));
	class_addProtocol([UIVibrancyEffect class], @protocol(UIVibrancyEffectClassExports));
	class_addProtocol([UIVisualEffect class], @protocol(UIVisualEffectInstanceExports));
	class_addProtocol([UIVisualEffect class], @protocol(UIVisualEffectClassExports));
	class_addProtocol([UIBlurEffect class], @protocol(UIBlurEffectInstanceExports));
	class_addProtocol([UIBlurEffect class], @protocol(UIBlurEffectClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIBlurEffectStyleExtraLight"] = @0;
	context[@"UIBlurEffectStyleLight"] = @1;
	context[@"UIBlurEffectStyleDark"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIVisualEffectView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
