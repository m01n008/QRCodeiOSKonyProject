#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICollectionLayoutListConfiguration (Exports)
-(id) jsinitWithAppearance: (UICollectionLayoutListAppearance) appearance 
{
	id resultVal__;
	resultVal__ = [[self initWithAppearance: appearance ] autorelease];
	return resultVal__;
}
-(JSValue *) getJsTrailingSwipeActionsConfigurationProvider
{
	return [JSValue valueWithObject: self.trailingSwipeActionsConfigurationProvider inContext: [JSContext currentContext]];
}
-(void) setJsTrailingSwipeActionsConfigurationProvider: (JSValue *) value
{
	UISwipeActionsConfiguration *  (^ value_)(NSIndexPath * ) = nil;
	if (!value.isUndefined) {
		value_ = ^UISwipeActionsConfiguration *(NSIndexPath * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.trailingSwipeActionsConfigurationProvider = value_;
}
-(JSValue *) getJsLeadingSwipeActionsConfigurationProvider
{
	return [JSValue valueWithObject: self.leadingSwipeActionsConfigurationProvider inContext: [JSContext currentContext]];
}
-(void) setJsLeadingSwipeActionsConfigurationProvider: (JSValue *) value
{
	UISwipeActionsConfiguration *  (^ value_)(NSIndexPath * ) = nil;
	if (!value.isUndefined) {
		value_ = ^UISwipeActionsConfiguration *(NSIndexPath * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.leadingSwipeActionsConfigurationProvider = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([NSCollectionLayoutSection class], @protocol(NSCollectionLayoutSectionUICollectionLayoutListSectionCategoryInstanceExports));
	class_addProtocol([NSCollectionLayoutSection class], @protocol(NSCollectionLayoutSectionUICollectionLayoutListSectionCategoryClassExports));
	class_addProtocol([UICollectionViewCompositionalLayout class], @protocol(UICollectionViewCompositionalLayoutUICollectionLayoutListSectionCategoryInstanceExports));
	class_addProtocol([UICollectionViewCompositionalLayout class], @protocol(UICollectionViewCompositionalLayoutUICollectionLayoutListSectionCategoryClassExports));
	class_addProtocol([UICollectionLayoutListConfiguration class], @protocol(UICollectionLayoutListConfigurationInstanceExports));
	class_addProtocol([UICollectionLayoutListConfiguration class], @protocol(UICollectionLayoutListConfigurationClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UICollectionLayoutListAppearancePlain"] = @0;
	context[@"UICollectionLayoutListAppearanceGrouped"] = @1;
	context[@"UICollectionLayoutListAppearanceInsetGrouped"] = @2;
	context[@"UICollectionLayoutListAppearanceSidebar"] = @3;
	context[@"UICollectionLayoutListAppearanceSidebarPlain"] = @4;

	context[@"UICollectionLayoutListHeaderModeNone"] = @0;
	context[@"UICollectionLayoutListHeaderModeSupplementary"] = @1;
	context[@"UICollectionLayoutListHeaderModeFirstItemInSection"] = @2;

	context[@"UICollectionLayoutListFooterModeNone"] = @0;
	context[@"UICollectionLayoutListFooterModeSupplementary"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UICollectionLayoutList_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
