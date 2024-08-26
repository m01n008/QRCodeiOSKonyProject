#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIListContentImageProperties (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsTintColorTransformer
{
	return [JSValue valueWithObject: self.tintColorTransformer inContext: [JSContext currentContext]];
}
-(void) setJsTintColorTransformer: (JSValue *) value
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
	self.tintColorTransformer = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([UIListContentImageProperties class], @protocol(UIListContentImagePropertiesInstanceExports));
	class_addProtocol([UIListContentImageProperties class], @protocol(UIListContentImagePropertiesClassExports));
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
	p = (void*) &UIListContentImageStandardDimension;
	if (p != NULL) context[@"UIListContentImageStandardDimension"] = @(UIListContentImageStandardDimension);
}
void load_UIKit_UIListContentImageProperties_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
