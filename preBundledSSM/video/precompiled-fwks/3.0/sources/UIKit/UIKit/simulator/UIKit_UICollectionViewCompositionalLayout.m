#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSCollectionLayoutSection (Exports)
-(JSValue *) getJsVisibleItemsInvalidationHandler
{
	return [JSValue valueWithObject: self.visibleItemsInvalidationHandler inContext: [JSContext currentContext]];
}
-(void) setJsVisibleItemsInvalidationHandler: (JSValue *) value
{
	void (^ value_)(NSArray  * , CGPoint, id  ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSArray * arg0, CGPoint arg1, id arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithPoint: arg1 inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.visibleItemsInvalidationHandler = value_;
}
@end
@implementation NSCollectionLayoutGroup (Exports)
+(id) jscustomGroupWithLayoutSize: (NSCollectionLayoutSize *) layoutSize itemProvider: (JSValue *) itemProvider 
{
	NSArray  *  (^ itemProvider_)(id  ) = nil;
	if (!itemProvider.isUndefined) {
		itemProvider_ = ^NSArray *(id arg0) {
			JSContext* __jsContext = itemProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, itemProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [self customGroupWithLayoutSize: layoutSize itemProvider: itemProvider_ ];
	return resultVal__;
}
@end
@implementation UICollectionViewCompositionalLayout (Exports)
-(id) jsinitWithSectionProvider: (JSValue *) sectionProvider configuration: (UICollectionViewCompositionalLayoutConfiguration *) configuration 
{
	NSCollectionLayoutSection *  (^ sectionProvider_)(NSInteger, id  ) = nil;
	if (!sectionProvider.isUndefined) {
		sectionProvider_ = ^NSCollectionLayoutSection *(NSInteger arg0, id arg1) {
			JSContext* __jsContext = sectionProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, sectionProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithSectionProvider: sectionProvider_ configuration: configuration ] autorelease];
	return resultVal__;
}
-(id) jsinitWithSection: (NSCollectionLayoutSection *) section configuration: (UICollectionViewCompositionalLayoutConfiguration *) configuration 
{
	id resultVal__;
	resultVal__ = [[self initWithSection: section configuration: configuration ] autorelease];
	return resultVal__;
}
-(id) jsinitWithSectionProvider: (JSValue *) sectionProvider 
{
	NSCollectionLayoutSection *  (^ sectionProvider_)(NSInteger, id  ) = nil;
	if (!sectionProvider.isUndefined) {
		sectionProvider_ = ^NSCollectionLayoutSection *(NSInteger arg0, id arg1) {
			JSContext* __jsContext = sectionProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, sectionProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithSectionProvider: sectionProvider_ ] autorelease];
	return resultVal__;
}
-(id) jsinitWithSection: (NSCollectionLayoutSection *) section 
{
	id resultVal__;
	resultVal__ = [[self initWithSection: section ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSCollectionLayoutDecorationItem class], @protocol(NSCollectionLayoutDecorationItemInstanceExports));
	class_addProtocol([NSCollectionLayoutDecorationItem class], @protocol(NSCollectionLayoutDecorationItemClassExports));
	class_addProtocol([NSCollectionLayoutSection class], @protocol(NSCollectionLayoutSectionInstanceExports));
	class_addProtocol([NSCollectionLayoutSection class], @protocol(NSCollectionLayoutSectionClassExports));
	class_addProtocol([NSCollectionLayoutAnchor class], @protocol(NSCollectionLayoutAnchorInstanceExports));
	class_addProtocol([NSCollectionLayoutAnchor class], @protocol(NSCollectionLayoutAnchorClassExports));
	class_addProtocol([UICollectionViewCompositionalLayoutConfiguration class], @protocol(UICollectionViewCompositionalLayoutConfigurationInstanceExports));
	class_addProtocol([UICollectionViewCompositionalLayoutConfiguration class], @protocol(UICollectionViewCompositionalLayoutConfigurationClassExports));
	class_addProtocol([NSCollectionLayoutItem class], @protocol(NSCollectionLayoutItemInstanceExports));
	class_addProtocol([NSCollectionLayoutItem class], @protocol(NSCollectionLayoutItemClassExports));
	class_addProtocol([NSCollectionLayoutSpacing class], @protocol(NSCollectionLayoutSpacingInstanceExports));
	class_addProtocol([NSCollectionLayoutSpacing class], @protocol(NSCollectionLayoutSpacingClassExports));
	class_addProtocol([NSCollectionLayoutDimension class], @protocol(NSCollectionLayoutDimensionInstanceExports));
	class_addProtocol([NSCollectionLayoutDimension class], @protocol(NSCollectionLayoutDimensionClassExports));
	class_addProtocol([NSCollectionLayoutEdgeSpacing class], @protocol(NSCollectionLayoutEdgeSpacingInstanceExports));
	class_addProtocol([NSCollectionLayoutEdgeSpacing class], @protocol(NSCollectionLayoutEdgeSpacingClassExports));
	class_addProtocol([NSCollectionLayoutBoundarySupplementaryItem class], @protocol(NSCollectionLayoutBoundarySupplementaryItemInstanceExports));
	class_addProtocol([NSCollectionLayoutBoundarySupplementaryItem class], @protocol(NSCollectionLayoutBoundarySupplementaryItemClassExports));
	class_addProtocol([NSCollectionLayoutGroupCustomItem class], @protocol(NSCollectionLayoutGroupCustomItemInstanceExports));
	class_addProtocol([NSCollectionLayoutGroupCustomItem class], @protocol(NSCollectionLayoutGroupCustomItemClassExports));
	class_addProtocol([NSCollectionLayoutGroup class], @protocol(NSCollectionLayoutGroupInstanceExports));
	class_addProtocol([NSCollectionLayoutGroup class], @protocol(NSCollectionLayoutGroupClassExports));
	class_addProtocol([UICollectionViewCompositionalLayout class], @protocol(UICollectionViewCompositionalLayoutInstanceExports));
	class_addProtocol([UICollectionViewCompositionalLayout class], @protocol(UICollectionViewCompositionalLayoutClassExports));
	class_addProtocol([NSCollectionLayoutSupplementaryItem class], @protocol(NSCollectionLayoutSupplementaryItemInstanceExports));
	class_addProtocol([NSCollectionLayoutSupplementaryItem class], @protocol(NSCollectionLayoutSupplementaryItemClassExports));
	class_addProtocol([NSCollectionLayoutSize class], @protocol(NSCollectionLayoutSizeInstanceExports));
	class_addProtocol([NSCollectionLayoutSize class], @protocol(NSCollectionLayoutSizeClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIContentInsetsReferenceAutomatic"] = @0L;
	context[@"UIContentInsetsReferenceNone"] = @1L;
	context[@"UIContentInsetsReferenceSafeArea"] = @2L;
	context[@"UIContentInsetsReferenceLayoutMargins"] = @3L;
	context[@"UIContentInsetsReferenceReadableContent"] = @4L;

	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorNone"] = @0L;
	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorContinuous"] = @1L;
	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorContinuousGroupLeadingBoundary"] = @2L;
	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorPaging"] = @3L;
	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorGroupPaging"] = @4L;
	context[@"UICollectionLayoutSectionOrthogonalScrollingBehaviorGroupPagingCentered"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UICollectionViewCompositionalLayoutProtocols()
{
	(void)@protocol(NSCollectionLayoutContainer);
	(void)@protocol(NSCollectionLayoutVisibleItem);
	(void)@protocol(NSCollectionLayoutEnvironment);
}
void load_UIKit_UICollectionViewCompositionalLayout_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
