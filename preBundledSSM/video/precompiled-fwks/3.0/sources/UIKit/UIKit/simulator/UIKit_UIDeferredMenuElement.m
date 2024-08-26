#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIDeferredMenuElement (Exports)
+(id) jselementWithProvider: (JSValue *) elementProvider 
{
	void (^ elementProvider_)(void (^ elementProvider_ )(NSArray  * )) = nil;
	if (!elementProvider.isUndefined) {
		elementProvider_ = ^void(void (^ arg0)(NSArray * _Nonnull)) {
			JSContext* __jsContext = elementProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, elementProvider, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self elementWithProvider: elementProvider_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIDeferredMenuElement class], @protocol(UIDeferredMenuElementInstanceExports));
	class_addProtocol([UIDeferredMenuElement class], @protocol(UIDeferredMenuElementClassExports));
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
void load_UIKit_UIDeferredMenuElement_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
