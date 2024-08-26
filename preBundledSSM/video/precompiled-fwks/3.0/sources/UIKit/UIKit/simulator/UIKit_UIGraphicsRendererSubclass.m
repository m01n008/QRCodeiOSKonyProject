#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIGraphicsRenderer (UIGraphicsRendererUIGraphicsRendererProtectedCategoryExports)
-(BOOL) jsrunDrawingActions: (JSValue *) drawingActions completionActions: (JSValue *) completionActions error: (JSValue *) error 
{
	void (^ drawingActions_)(__kindof UIGraphicsRendererContext * ) = nil;
	if (!drawingActions.isUndefined) {
		drawingActions_ = ^void(__kindof UIGraphicsRendererContext * arg0) {
			JSContext* __jsContext = drawingActions.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, drawingActions, self, parameters);
		};
	}
	void (^ completionActions_)(__kindof UIGraphicsRendererContext * ) = nil;
	if (!completionActions.isUndefined) {
		completionActions_ = ^void(__kindof UIGraphicsRendererContext * arg0) {
			JSContext* __jsContext = completionActions.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionActions, self, parameters);
		};
	}
	NSError* error_ = nil;
	BOOL resultVal__;
	resultVal__ = [self runDrawingActions: drawingActions_ completionActions: completionActions_ error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIGraphicsRenderer class], @protocol(UIGraphicsRendererUIGraphicsRendererProtectedCategoryInstanceExports));
	class_addProtocol([UIGraphicsRenderer class], @protocol(UIGraphicsRendererUIGraphicsRendererProtectedCategoryClassExports));
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
void load_UIKit_UIGraphicsRendererSubclass_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
