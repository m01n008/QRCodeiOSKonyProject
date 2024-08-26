#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIStoryboard (Exports)
-(__kindof UIViewController *) jsinstantiateInitialViewControllerWithCreator: (JSValue *) block 
{
	__kindof UIViewController *  (^ block_)(NSCoder * ) = nil;
	if (!block.isUndefined) {
		block_ = ^__kindof UIViewController *(NSCoder * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, block, self, parameters);
			return [result toObject];
		};
	}
	__kindof UIViewController * resultVal__;
	resultVal__ = [self instantiateInitialViewControllerWithCreator: block_ ];
	return resultVal__;
}
-(__kindof UIViewController *) jsinstantiateViewControllerWithIdentifier: (NSString *) identifier creator: (JSValue *) block 
{
	__kindof UIViewController *  (^ block_)(NSCoder * ) = nil;
	if (!block.isUndefined) {
		block_ = ^__kindof UIViewController *(NSCoder * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, block, self, parameters);
			return [result toObject];
		};
	}
	__kindof UIViewController * resultVal__;
	resultVal__ = [self instantiateViewControllerWithIdentifier: identifier creator: block_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIStoryboard class], @protocol(UIStoryboardInstanceExports));
	class_addProtocol([UIStoryboard class], @protocol(UIStoryboardClassExports));
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
void load_UIKit_UIStoryboard_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
