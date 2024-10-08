#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSMutableArray (NSMutableArrayNSExtendedMutableArrayCategoryExports)
-(void) jssortWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	[self sortWithOptions: opts usingComparator: cmptr_ ];
}
-(void) jssortUsingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	[self sortUsingComparator: cmptr_ ];
}
-(void) jssortUsingSelector: (NSString *) comparator 
{
	SEL comparator_ = NSSelectorFromString(comparator);
	[self sortUsingSelector: comparator_ ];
}
@end
@implementation NSArray (NSArrayNSExtendedArrayCategoryExports)
-(NSIndexSet *) jsindexesOfObjectsPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesOfObjectsPassingTest: predicate_ ];
	return resultVal__;
}
-(NSArray *) jssortedArrayUsingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	NSArray * resultVal__;
	resultVal__ = [self sortedArrayUsingComparator: cmptr_ ];
	return resultVal__;
}
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateObjectsWithOptions: opts usingBlock: block_ ];
}
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block 
{
	void (^ block_)(id , NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateObjectsUsingBlock: block_ ];
}
-(NSIndexSet *) jsindexesOfObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesOfObjectsAtIndexes: s options: opts passingTest: predicate_ ];
	return resultVal__;
}
-(NSUInteger) jsindexOfObjectAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexOfObjectAtIndexes: s options: opts passingTest: predicate_ ];
	return resultVal__;
}
-(NSArray *) jssortedArrayWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr 
{
	NSComparisonResult (^ cmptr_)(id , id ) = nil;
	if (!cmptr.isUndefined) {
		cmptr_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmptr.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmptr, self, parameters);
			return [result toInt32];
		};
	}
	NSArray * resultVal__;
	resultVal__ = [self sortedArrayWithOptions: opts usingComparator: cmptr_ ];
	return resultVal__;
}
-(NSArray *) jssortedArrayUsingSelector: (NSString *) comparator 
{
	SEL comparator_ = NSSelectorFromString(comparator);
	NSArray * resultVal__;
	resultVal__ = [self sortedArrayUsingSelector: comparator_ ];
	return resultVal__;
}
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self makeObjectsPerformSelector: aSelector_ ];
}
-(NSIndexSet *) jsindexesOfObjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSIndexSet * resultVal__;
	resultVal__ = [self indexesOfObjectsWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
-(NSUInteger) jsindexOfObject: (id) obj inSortedRange: (NSRange) r options: (NSBinarySearchingOptions) opts usingComparator: (JSValue *) cmp 
{
	NSComparisonResult (^ cmp_)(id , id ) = nil;
	if (!cmp.isUndefined) {
		cmp_ = ^NSComparisonResult(id arg0, id arg1) {
			JSContext* __jsContext = cmp.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			JSValue* result = callJSFunction(__jsContext, cmp, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexOfObject: obj inSortedRange: r options: opts usingComparator: cmp_ ];
	return resultVal__;
}
-(NSUInteger) jsindexOfObjectPassingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexOfObjectPassingTest: predicate_ ];
	return resultVal__;
}
-(void) jsenumerateObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block 
{
	void (^ block_)(id , NSUInteger, BOOL * ) = nil;
	if (!block.isUndefined) {
		block_ = ^void(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self enumerateObjectsAtIndexes: s options: opts usingBlock: block_ ];
}
-(NSUInteger) jsindexOfObjectWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate 
{
	BOOL (^ predicate_)(id , NSUInteger, BOOL * ) = nil;
	if (!predicate.isUndefined) {
		predicate_ = ^BOOL(id arg0, NSUInteger arg1, BOOL * arg2) {
			JSContext* __jsContext = predicate.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: [JSValue valueWithObject: [BoolPointer boolPointerWithPtr: arg2] inContext: __jsContext]];
			JSValue* result = callJSFunction(__jsContext, predicate, self, parameters);
			return [result toInt32];
		};
	}
	NSUInteger resultVal__;
	resultVal__ = [self indexOfObjectWithOptions: opts passingTest: predicate_ ];
	return resultVal__;
}
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self makeObjectsPerformSelector: aSelector_ withObject: argument ];
}
@end
@implementation NSArray (NSArrayNSArrayCreationCategoryExports)
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [[self initWithObjects: firstObj , nil] autorelease];
	else if ([args count] == 1) resultVal__ = [[self initWithObjects: firstObj , args[0], nil] autorelease];
	else if ([args count] == 2) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], nil] autorelease];
	else if ([args count] == 3) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], nil] autorelease];
	else if ([args count] == 4) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], nil] autorelease];
	else if ([args count] == 5) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], nil] autorelease];
	else if ([args count] == 6) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], nil] autorelease];
	else if ([args count] == 7) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil] autorelease];
	else if ([args count] == 8) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil] autorelease];
	else if ([args count] == 9) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil] autorelease];
	else if ([args count] >= 10) resultVal__ = [[self initWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil] autorelease];
	return resultVal__;
}
-(id) jsinitWithArray: (NSArray *) array copyItems: (BOOL) flag 
{
	id resultVal__;
	resultVal__ = [[self initWithArray: array copyItems: flag ] autorelease];
	return resultVal__;
}
-(NSArray *) jsinitWithContentsOfURL: (NSURL *) url 
{
	NSArray * resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(id) jsinitWithArray: (NSArray *) array 
{
	id resultVal__;
	resultVal__ = [[self initWithArray: array ] autorelease];
	return resultVal__;
}
-(NSArray *) jsinitWithContentsOfFile: (NSString *) path 
{
	NSArray * resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
+(id) jsarrayWithObjects: (id) firstObj arguments: (NSArray *) args 
{
	id resultVal__;
	if ([args count] == 0) resultVal__ = [self arrayWithObjects: firstObj , nil];
	else if ([args count] == 1) resultVal__ = [self arrayWithObjects: firstObj , args[0], nil];
	else if ([args count] == 2) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], nil];
	else if ([args count] == 3) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], nil];
	else if ([args count] == 4) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], nil];
	else if ([args count] == 5) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], nil];
	else if ([args count] == 6) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], nil];
	else if ([args count] == 7) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], nil];
	else if ([args count] == 8) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], nil];
	else if ([args count] == 9) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], nil];
	else if ([args count] >= 10) resultVal__ = [self arrayWithObjects: firstObj , args[0], args[1], args[2], args[3], args[4], args[5], args[6], args[7], args[8], args[9], nil];
	return resultVal__;
}
@end
@implementation NSMutableArray (Exports)
-(id) jsinitWithCapacity: (NSUInteger) numItems 
{
	id resultVal__;
	resultVal__ = [[self initWithCapacity: numItems ] autorelease];
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation NSMutableArray (NSMutableArrayNSMutableArrayCreationCategoryExports)
-(NSMutableArray *) jsinitWithContentsOfURL: (NSURL *) url 
{
	NSMutableArray * resultVal__;
	resultVal__ = [[self initWithContentsOfURL: url ] autorelease];
	return resultVal__;
}
-(NSMutableArray *) jsinitWithContentsOfFile: (NSString *) path 
{
	NSMutableArray * resultVal__;
	resultVal__ = [[self initWithContentsOfFile: path ] autorelease];
	return resultVal__;
}
@end
@implementation NSArray (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
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
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSExtendedMutableArrayCategoryInstanceExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSExtendedMutableArrayCategoryClassExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSDeprecatedCategoryClassExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSExtendedArrayCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSExtendedArrayCategoryClassExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayCreationCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayCreationCategoryClassExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayInstanceExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayClassExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSMutableArrayCreationCategoryInstanceExports));
	class_addProtocol([NSMutableArray class], @protocol(NSMutableArrayNSMutableArrayCreationCategoryClassExports));
	class_addProtocol([NSArray class], @protocol(NSArrayInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSBinarySearchingFirstEqual"] = @256U;
	context[@"NSBinarySearchingLastEqual"] = @512U;
	context[@"NSBinarySearchingInsertionIndex"] = @1024U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSArray_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
