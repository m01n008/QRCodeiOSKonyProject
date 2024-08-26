#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UITableViewRowAction (Exports)
+(id) jsrowActionWithStyle: (UITableViewRowActionStyle) style title: (NSString *) title handler: (JSValue *) handler 
{
	void (^ handler_)(UITableViewRowAction * , NSIndexPath * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(UITableViewRowAction * arg0, NSIndexPath * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self rowActionWithStyle: style title: title handler: handler_ ];
	return resultVal__;
}
@end
@implementation UITableView (Exports)
-(void) jsregisterClass: (JSValue *) aClass forHeaderFooterViewReuseIdentifier: (NSString *) identifier 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self registerClass: aClass_ forHeaderFooterViewReuseIdentifier: identifier ];
}
-(void) jsregisterClass: (JSValue *) cellClass forCellReuseIdentifier: (NSString *) identifier 
{
	Class cellClass_ = objc_getClass([[cellClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self registerClass: cellClass_ forCellReuseIdentifier: identifier ];
}
-(id) jsinitWithFrame: (CGRect) frame style: (UITableViewStyle) style 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame style: style ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UITableViewFocusUpdateContext class], @protocol(UITableViewFocusUpdateContextInstanceExports));
	class_addProtocol([UITableViewFocusUpdateContext class], @protocol(UITableViewFocusUpdateContextClassExports));
	class_addProtocol([UITableViewRowAction class], @protocol(UITableViewRowActionInstanceExports));
	class_addProtocol([UITableViewRowAction class], @protocol(UITableViewRowActionClassExports));
	class_addProtocol([NSIndexPath class], @protocol(NSIndexPathUITableViewCategoryInstanceExports));
	class_addProtocol([NSIndexPath class], @protocol(NSIndexPathUITableViewCategoryClassExports));
	class_addProtocol([UITableView class], @protocol(UITableViewInstanceExports));
	class_addProtocol([UITableView class], @protocol(UITableViewClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UITableViewStylePlain"] = @0;
	context[@"UITableViewStyleGrouped"] = @1;

	context[@"UITableViewScrollPositionNone"] = @0;
	context[@"UITableViewScrollPositionTop"] = @1;
	context[@"UITableViewScrollPositionMiddle"] = @2;
	context[@"UITableViewScrollPositionBottom"] = @3;

	context[@"UITableViewRowAnimationFade"] = @0;
	context[@"UITableViewRowAnimationRight"] = @1;
	context[@"UITableViewRowAnimationLeft"] = @2;
	context[@"UITableViewRowAnimationTop"] = @3;
	context[@"UITableViewRowAnimationBottom"] = @4;
	context[@"UITableViewRowAnimationNone"] = @5;
	context[@"UITableViewRowAnimationMiddle"] = @6;
	context[@"UITableViewRowAnimationAutomatic"] = @100;

	context[@"UITableViewRowActionStyleDefault"] = @0;
	context[@"UITableViewRowActionStyleDestructive"] = @0;
	context[@"UITableViewRowActionStyleNormal"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UITableViewAutomaticDimension;
	if (p != NULL) context[@"UITableViewAutomaticDimension"] = @(UITableViewAutomaticDimension);
	p = (void*) &UITableViewSelectionDidChangeNotification;
	if (p != NULL) context[@"UITableViewSelectionDidChangeNotification"] = UITableViewSelectionDidChangeNotification;
	p = (void*) &UITableViewIndexSearch;
	if (p != NULL) context[@"UITableViewIndexSearch"] = UITableViewIndexSearch;
}
void UIKit_UITableViewProtocols()
{
	(void)@protocol(UITableViewDelegate);
	(void)@protocol(UITableViewDataSource);
}
void load_UIKit_UITableView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
