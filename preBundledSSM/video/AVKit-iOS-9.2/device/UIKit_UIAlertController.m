#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIAlertAction (Exports)
+(id) jsactionWithTitle: (NSString *) title style: (UIAlertActionStyle) style handler: (JSValue *) handler 
{
	void (^ handler_)(UIAlertAction * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(UIAlertAction * arg0) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self actionWithTitle: title style: style handler: handler_ ];
	return resultVal__;
}
@end
@implementation UIAlertController (Exports)
-(void) jsaddTextFieldWithConfigurationHandler: (JSValue *) configurationHandler 
{
	void (^ configurationHandler_)(UITextField * ) = nil;
	if (!configurationHandler.isUndefined) {
		configurationHandler_ = ^void(UITextField * arg0) {
			JSContext* __jsContext = configurationHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, configurationHandler, self, parameters);
		};
	}
	[self addTextFieldWithConfigurationHandler: configurationHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([UIAlertAction class], @protocol(UIAlertActionInstanceExports));
	class_addProtocol([UIAlertAction class], @protocol(UIAlertActionClassExports));
	class_addProtocol([UIAlertController class], @protocol(UIAlertControllerInstanceExports));
	class_addProtocol([UIAlertController class], @protocol(UIAlertControllerClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIAlertActionStyleDefault"] = @0;
	context[@"UIAlertActionStyleCancel"] = @1;
	context[@"UIAlertActionStyleDestructive"] = @2;

	context[@"UIAlertControllerStyleActionSheet"] = @0;
	context[@"UIAlertControllerStyleAlert"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIAlertController_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
