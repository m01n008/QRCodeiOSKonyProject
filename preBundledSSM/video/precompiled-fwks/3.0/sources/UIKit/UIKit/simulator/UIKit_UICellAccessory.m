#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICellAccessoryOutlineDisclosure (Exports)
-(JSValue *) getJsActionHandler
{
	return [JSValue valueWithObject: self.actionHandler inContext: [JSContext currentContext]];
}
-(void) setJsActionHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.actionHandler = value_;
}
@end
@implementation UICellAccessoryDelete (Exports)
-(JSValue *) getJsActionHandler
{
	return [JSValue valueWithObject: self.actionHandler inContext: [JSContext currentContext]];
}
-(void) setJsActionHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.actionHandler = value_;
}
@end
@implementation UICellAccessoryCustomView (Exports)
-(id) jsinitWithCustomView: (UIView *) customView placement: (UICellAccessoryPlacement) placement 
{
	id resultVal__;
	resultVal__ = [[self initWithCustomView: customView placement: placement ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsPosition
{
	return [JSValue valueWithObject: self.position inContext: [JSContext currentContext]];
}
-(void) setJsPosition: (JSValue *) value
{
	NSUInteger (^ value_)(NSArray  * ) = nil;
	if (!value.isUndefined) {
		value_ = ^NSUInteger(NSArray * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toDouble];
		};
	}
	self.position = value_;
}
@end
@implementation UICellAccessory (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation UICellAccessoryInsert (Exports)
-(JSValue *) getJsActionHandler
{
	return [JSValue valueWithObject: self.actionHandler inContext: [JSContext currentContext]];
}
-(void) setJsActionHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.actionHandler = value_;
}
@end
@implementation UICellAccessoryLabel (Exports)
-(id) jsinitWithText: (NSString *) text 
{
	id resultVal__;
	resultVal__ = [[self initWithText: text ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UICellAccessoryOutlineDisclosure class], @protocol(UICellAccessoryOutlineDisclosureInstanceExports));
	class_addProtocol([UICellAccessoryOutlineDisclosure class], @protocol(UICellAccessoryOutlineDisclosureClassExports));
	class_addProtocol([UICellAccessoryCheckmark class], @protocol(UICellAccessoryCheckmarkInstanceExports));
	class_addProtocol([UICellAccessoryCheckmark class], @protocol(UICellAccessoryCheckmarkClassExports));
	class_addProtocol([UICellAccessoryDelete class], @protocol(UICellAccessoryDeleteInstanceExports));
	class_addProtocol([UICellAccessoryDelete class], @protocol(UICellAccessoryDeleteClassExports));
	class_addProtocol([UICellAccessoryDisclosureIndicator class], @protocol(UICellAccessoryDisclosureIndicatorInstanceExports));
	class_addProtocol([UICellAccessoryDisclosureIndicator class], @protocol(UICellAccessoryDisclosureIndicatorClassExports));
	class_addProtocol([UICellAccessoryMultiselect class], @protocol(UICellAccessoryMultiselectInstanceExports));
	class_addProtocol([UICellAccessoryMultiselect class], @protocol(UICellAccessoryMultiselectClassExports));
	class_addProtocol([UICellAccessoryReorder class], @protocol(UICellAccessoryReorderInstanceExports));
	class_addProtocol([UICellAccessoryReorder class], @protocol(UICellAccessoryReorderClassExports));
	class_addProtocol([UICellAccessoryCustomView class], @protocol(UICellAccessoryCustomViewInstanceExports));
	class_addProtocol([UICellAccessoryCustomView class], @protocol(UICellAccessoryCustomViewClassExports));
	class_addProtocol([UICellAccessory class], @protocol(UICellAccessoryInstanceExports));
	class_addProtocol([UICellAccessory class], @protocol(UICellAccessoryClassExports));
	class_addProtocol([UICellAccessoryInsert class], @protocol(UICellAccessoryInsertInstanceExports));
	class_addProtocol([UICellAccessoryInsert class], @protocol(UICellAccessoryInsertClassExports));
	class_addProtocol([UICellAccessoryLabel class], @protocol(UICellAccessoryLabelInstanceExports));
	class_addProtocol([UICellAccessoryLabel class], @protocol(UICellAccessoryLabelClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UICellAccessoryDisplayedAlways"] = @0L;
	context[@"UICellAccessoryDisplayedWhenEditing"] = @1L;
	context[@"UICellAccessoryDisplayedWhenNotEditing"] = @2L;

	context[@"UICellAccessoryOutlineDisclosureStyleAutomatic"] = @0L;
	context[@"UICellAccessoryOutlineDisclosureStyleHeader"] = @1L;
	context[@"UICellAccessoryOutlineDisclosureStyleCell"] = @2L;

	context[@"UICellAccessoryPlacementLeading"] = @0L;
	context[@"UICellAccessoryPlacementTrailing"] = @1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UICellAccessoryStandardDimension;
	if (p != NULL) context[@"UICellAccessoryStandardDimension"] = @(UICellAccessoryStandardDimension);
}
void load_UIKit_UICellAccessory_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
