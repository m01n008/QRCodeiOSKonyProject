#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIListContentTextProperties (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsColorTransformer
{
	return [JSValue valueWithObject: self.colorTransformer inContext: [JSContext currentContext]];
}
-(void) setJsColorTransformer: (JSValue *) value
{
	UIColor *  (^ value_)(UIColor * ) = nil;
	if (!value.isUndefined) {
		value_ = ^UIColor *(UIColor * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.colorTransformer = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([UIListContentTextProperties class], @protocol(UIListContentTextPropertiesInstanceExports));
	class_addProtocol([UIListContentTextProperties class], @protocol(UIListContentTextPropertiesClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIListContentTextAlignmentNatural"] = @0;
	context[@"UIListContentTextAlignmentCenter"] = @1;
	context[@"UIListContentTextAlignmentJustified"] = @2;

	context[@"UIListContentTextTransformNone"] = @0;
	context[@"UIListContentTextTransformUppercase"] = @1;
	context[@"UIListContentTextTransformLowercase"] = @2;
	context[@"UIListContentTextTransformCapitalized"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIListContentTextProperties_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
