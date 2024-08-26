#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UICollectionViewDiffableDataSourceSectionSnapshotHandlers (Exports)
-(JSValue *) getJsWillExpandItemHandler
{
	return [JSValue valueWithObject: self.willExpandItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsWillExpandItemHandler: (JSValue *) value
{
	void (^ value_)(id ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(id arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.willExpandItemHandler = value_;
}
-(JSValue *) getJsSnapshotForExpandingParentItemHandler
{
	return [JSValue valueWithObject: self.snapshotForExpandingParentItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsSnapshotForExpandingParentItemHandler: (JSValue *) value
{
	NSDiffableDataSourceSectionSnapshot  *  (^ value_)(id , NSDiffableDataSourceSectionSnapshot  * ) = nil;
	if (!value.isUndefined) {
		value_ = ^NSDiffableDataSourceSectionSnapshot *(id arg0, NSDiffableDataSourceSectionSnapshot * arg1) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.snapshotForExpandingParentItemHandler = value_;
}
-(JSValue *) getJsShouldCollapseItemHandler
{
	return [JSValue valueWithObject: self.shouldCollapseItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsShouldCollapseItemHandler: (JSValue *) value
{
	BOOL (^ value_)(id ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(id arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.shouldCollapseItemHandler = value_;
}
-(JSValue *) getJsWillCollapseItemHandler
{
	return [JSValue valueWithObject: self.willCollapseItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsWillCollapseItemHandler: (JSValue *) value
{
	void (^ value_)(id ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(id arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.willCollapseItemHandler = value_;
}
-(JSValue *) getJsShouldExpandItemHandler
{
	return [JSValue valueWithObject: self.shouldExpandItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsShouldExpandItemHandler: (JSValue *) value
{
	BOOL (^ value_)(id ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(id arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.shouldExpandItemHandler = value_;
}
@end
@implementation UICollectionViewDiffableDataSource (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsinitWithCollectionView: (UICollectionView *) collectionView cellProvider: (JSValue *) cellProvider 
{
	UICollectionViewCell *  (^ cellProvider_)(UICollectionView * , NSIndexPath * , id ) = nil;
	if (!cellProvider.isUndefined) {
		cellProvider_ = ^UICollectionViewCell *(UICollectionView * arg0, NSIndexPath * arg1, id arg2) {
			JSContext* __jsContext = cellProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cellProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithCollectionView: collectionView cellProvider: cellProvider_ ] autorelease];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsapplySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences completion: (JSValue *) completion 
{
	void (^ completion_)(void) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void() {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self applySnapshot: snapshot animatingDifferences: animatingDifferences completion: completion_ ];
}
-(JSValue *) getJsSupplementaryViewProvider
{
	return [JSValue valueWithObject: self.supplementaryViewProvider inContext: [JSContext currentContext]];
}
-(void) setJsSupplementaryViewProvider: (JSValue *) value
{
	UICollectionReusableView *  (^ value_)(UICollectionView * , NSString * , NSIndexPath * ) = nil;
	if (!value.isUndefined) {
		value_ = ^UICollectionReusableView *(UICollectionView * arg0, NSString * arg1, NSIndexPath * arg2) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toObject];
		};
	}
	self.supplementaryViewProvider = value_;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation UICollectionViewDiffableDataSourceReorderingHandlers (Exports)
-(JSValue *) getJsWillReorderHandler
{
	return [JSValue valueWithObject: self.willReorderHandler inContext: [JSContext currentContext]];
}
-(void) setJsWillReorderHandler: (JSValue *) value
{
	void (^ value_)(NSDiffableDataSourceTransaction  * ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSDiffableDataSourceTransaction * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.willReorderHandler = value_;
}
-(JSValue *) getJsCanReorderItemHandler
{
	return [JSValue valueWithObject: self.canReorderItemHandler inContext: [JSContext currentContext]];
}
-(void) setJsCanReorderItemHandler: (JSValue *) value
{
	BOOL (^ value_)(id ) = nil;
	if (!value.isUndefined) {
		value_ = ^BOOL(id arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, value, self, parameters);
			return [result toInt32];
		};
	}
	self.canReorderItemHandler = value_;
}
-(JSValue *) getJsDidReorderHandler
{
	return [JSValue valueWithObject: self.didReorderHandler inContext: [JSContext currentContext]];
}
-(void) setJsDidReorderHandler: (JSValue *) value
{
	void (^ value_)(NSDiffableDataSourceTransaction  * ) = nil;
	if (!value.isUndefined) {
		value_ = ^void(NSDiffableDataSourceTransaction * arg0) {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.didReorderHandler = value_;
}
@end
@implementation UITableViewDiffableDataSource (Exports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsinitWithTableView: (UITableView *) tableView cellProvider: (JSValue *) cellProvider 
{
	UITableViewCell *  (^ cellProvider_)(UITableView * , NSIndexPath * , id ) = nil;
	if (!cellProvider.isUndefined) {
		cellProvider_ = ^UITableViewCell *(UITableView * arg0, NSIndexPath * arg1, id arg2) {
			JSContext* __jsContext = cellProvider.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cellProvider, self, parameters);
			return [result toObject];
		};
	}
	id resultVal__;
	resultVal__ = [[self initWithTableView: tableView cellProvider: cellProvider_ ] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(void) jsapplySnapshot: (NSDiffableDataSourceSnapshot *) snapshot animatingDifferences: (BOOL) animatingDifferences completion: (JSValue *) completion 
{
	void (^ completion_)(void) = nil;
	if (!completion.isUndefined) {
		completion_ = ^void() {
			JSContext* __jsContext = completion.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completion, self, parameters);
		};
	}
	[self applySnapshot: snapshot animatingDifferences: animatingDifferences completion: completion_ ];
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSDiffableDataSourceSectionTransaction class], @protocol(NSDiffableDataSourceSectionTransactionInstanceExports));
	class_addProtocol([NSDiffableDataSourceSectionTransaction class], @protocol(NSDiffableDataSourceSectionTransactionClassExports));
	class_addProtocol([UICollectionViewDiffableDataSourceSectionSnapshotHandlers class], @protocol(UICollectionViewDiffableDataSourceSectionSnapshotHandlersInstanceExports));
	class_addProtocol([UICollectionViewDiffableDataSourceSectionSnapshotHandlers class], @protocol(UICollectionViewDiffableDataSourceSectionSnapshotHandlersClassExports));
	class_addProtocol([UICollectionViewDiffableDataSource class], @protocol(UICollectionViewDiffableDataSourceInstanceExports));
	class_addProtocol([UICollectionViewDiffableDataSource class], @protocol(UICollectionViewDiffableDataSourceClassExports));
	class_addProtocol([UICollectionViewDiffableDataSourceReorderingHandlers class], @protocol(UICollectionViewDiffableDataSourceReorderingHandlersInstanceExports));
	class_addProtocol([UICollectionViewDiffableDataSourceReorderingHandlers class], @protocol(UICollectionViewDiffableDataSourceReorderingHandlersClassExports));
	class_addProtocol([UITableViewDiffableDataSource class], @protocol(UITableViewDiffableDataSourceInstanceExports));
	class_addProtocol([UITableViewDiffableDataSource class], @protocol(UITableViewDiffableDataSourceClassExports));
	class_addProtocol([NSDiffableDataSourceSnapshot class], @protocol(NSDiffableDataSourceSnapshotInstanceExports));
	class_addProtocol([NSDiffableDataSourceSnapshot class], @protocol(NSDiffableDataSourceSnapshotClassExports));
	class_addProtocol([NSDiffableDataSourceTransaction class], @protocol(NSDiffableDataSourceTransactionInstanceExports));
	class_addProtocol([NSDiffableDataSourceTransaction class], @protocol(NSDiffableDataSourceTransactionClassExports));
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
void load_UIKit_UIDiffableDataSource_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
