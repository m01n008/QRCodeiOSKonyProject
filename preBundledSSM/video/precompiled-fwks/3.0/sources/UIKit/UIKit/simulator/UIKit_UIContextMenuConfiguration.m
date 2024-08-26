#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIContextMenuConfiguration (Exports)
+(id) jsconfigurationWithIdentifier: (id) identifier previewProvider: (JSValue *) previewProvider actionProvider: (JSValue *) actionProvider 
{
	UIViewController *  (^ previewProvider_)(void) = nil;
	if (!previewProvider.isUndefined) {
		previewProvider_ = ^UIViewController *() {
			JSContext* __jsContext = previewProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			JSValue* result = callJSFunction(__jsContext, previewProvider, self, parameters);
			return [result toObject];
		};
	}
	UIMenu *  (^ actionProvider_)(NSArray  * ) = nil;
	if (!actionProvider.isUndefined) {
		actionProvider_ = ^UIMenu *(NSArray * arg0) {
			JSContext* __jsContext = actionProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, actionProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [self configurationWithIdentifier: identifier previewProvider: previewProvider_ actionProvider: actionProvider_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIContextMenuConfiguration class], @protocol(UIContextMenuConfigurationInstanceExports));
	class_addProtocol([UIContextMenuConfiguration class], @protocol(UIContextMenuConfigurationClassExports));
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
void load_UIKit_UIContextMenuConfiguration_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
