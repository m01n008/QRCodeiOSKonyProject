#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSOrderedCollectionDifference (Exports)
-(id) jsinitWithChanges: (NSArray *) changes 
{
	id resultVal__;
	resultVal__ = [[self initWithChanges: changes ] autorelease];
	return resultVal__;
}
-(id) jsinitWithInsertIndexes: (NSIndexSet *) inserts insertedObjects: (NSArray *) insertedObjects removeIndexes: (NSIndexSet *) removes removedObjects: (NSArray *) removedObjects additionalChanges: (NSArray *) changes 
{
	id resultVal__;
	resultVal__ = [[self initWithInsertIndexes: inserts insertedObjects: insertedObjects removeIndexes: removes removedObjects: removedObjects additionalChanges: changes ] autorelease];
	return resultVal__;
}
-(NSOrderedCollectionDifference *) jsdifferenceByTransformingChangesWithBlock: (JSValue *) block 
{
	NSOrderedCollectionChange  *  (^ block_)(NSOrderedCollectionChange  * ) = nil;
	if (!block.isUndefined) {
		block_ = ^NSOrderedCollectionChange *(NSOrderedCollectionChange * arg0) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, block, self, parameters);
			return [result toObject];
		};
	}
	NSOrderedCollectionDifference * resultVal__;
	resultVal__ = [self differenceByTransformingChangesWithBlock: block_ ];
	return resultVal__;
}
-(id) jsinitWithInsertIndexes: (NSIndexSet *) inserts insertedObjects: (NSArray *) insertedObjects removeIndexes: (NSIndexSet *) removes removedObjects: (NSArray *) removedObjects 
{
	id resultVal__;
	resultVal__ = [[self initWithInsertIndexes: inserts insertedObjects: insertedObjects removeIndexes: removes removedObjects: removedObjects ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSOrderedCollectionDifference class], @protocol(NSOrderedCollectionDifferenceInstanceExports));
	class_addProtocol([NSOrderedCollectionDifference class], @protocol(NSOrderedCollectionDifferenceClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSOrderedCollectionDifferenceCalculationOmitInsertedObjects"] = @1U;
	context[@"NSOrderedCollectionDifferenceCalculationOmitRemovedObjects"] = @2U;
	context[@"NSOrderedCollectionDifferenceCalculationInferMoves"] = @4U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSOrderedCollectionDifference_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
