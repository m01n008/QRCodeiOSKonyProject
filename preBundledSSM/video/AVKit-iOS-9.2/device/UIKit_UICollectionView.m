#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICollectionView (Exports)
-(void) jsperformBatchUpdates: (JSValue *) updates completion: (JSValue *) completion 
{
	void (^ updates_)(void) = nil;
	if (!updates.isUndefined) {
		updates_ = ^void() {
			JSContext* __jsContext = updates.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, updates, self, parameters);
		};
	}
	void (^ completion_)(BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self performBatchUpdates: updates_ completion: completion_ ];
}
-(void) jssetCollectionViewLayout: (UICollectionViewLayout *) layout animated: (BOOL) animated completion: (JSValue *) completion 
{
	void (^ completion_)(BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self setCollectionViewLayout: layout animated: animated completion: completion_ ];
}
-(void) jsregisterClass: (JSValue *) cellClass forCellWithReuseIdentifier: (NSString *) identifier 
{
	Class cellClass_ = objc_getClass([[cellClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self registerClass: cellClass_ forCellWithReuseIdentifier: identifier ];
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
-(void) jsregisterClass: (JSValue *) viewClass forSupplementaryViewOfKind: (NSString *) elementKind withReuseIdentifier: (NSString *) identifier 
{
	Class viewClass_ = objc_getClass([[viewClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	[self registerClass: viewClass_ forSupplementaryViewOfKind: elementKind withReuseIdentifier: identifier ];
}
-(UICollectionViewTransitionLayout *) jsstartInteractiveTransitionToCollectionViewLayout: (UICollectionViewLayout *) layout completion: (JSValue *) completion 
{
	void (^ completion_)(BOOL, BOOL) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void(BOOL arg0, BOOL arg1) {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: [JSValue valueWithObject: @(arg0) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	UICollectionViewTransitionLayout * resultVal__;
	resultVal__ = [self startInteractiveTransitionToCollectionViewLayout: layout completion: completion_ ];
	return resultVal__;
}
-(id) jsinitWithFrame: (CGRect) frame collectionViewLayout: (UICollectionViewLayout *) layout 
{
	id resultVal__;
	resultVal__ = [[self initWithFrame: frame collectionViewLayout: layout ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UICollectionViewFocusUpdateContext class], @protocol(UICollectionViewFocusUpdateContextInstanceExports));
	class_addProtocol([UICollectionViewFocusUpdateContext class], @protocol(UICollectionViewFocusUpdateContextClassExports));
	class_addProtocol([UICollectionView class], @protocol(UICollectionViewInstanceExports));
	class_addProtocol([UICollectionView class], @protocol(UICollectionViewClassExports));
	class_addProtocol([NSIndexPath class], @protocol(NSIndexPathUICollectionViewAdditionsCategoryInstanceExports));
	class_addProtocol([NSIndexPath class], @protocol(NSIndexPathUICollectionViewAdditionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UICollectionViewScrollPositionNone"] = @0U;
	context[@"UICollectionViewScrollPositionTop"] = @1U;
	context[@"UICollectionViewScrollPositionCenteredVertically"] = @2U;
	context[@"UICollectionViewScrollPositionBottom"] = @4U;
	context[@"UICollectionViewScrollPositionLeft"] = @8U;
	context[@"UICollectionViewScrollPositionCenteredHorizontally"] = @16U;
	context[@"UICollectionViewScrollPositionRight"] = @32U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void UIKit_UICollectionViewProtocols()
{
	(void)@protocol(UICollectionViewDelegate);
	(void)@protocol(UICollectionViewDataSource);
}
void load_UIKit_UICollectionView_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
