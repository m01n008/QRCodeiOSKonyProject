#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOrderedSet_symbols(JSContext*);
@protocol NSOrderedSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) objectAtIndex: (NSUInteger) idx ;
-(NSUInteger) indexOfObject: (id) object ;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSOrderedSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSOrderedSetNSExtendedOrderedSetCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) id firstObject;
@property (readonly,nonatomic) id lastObject;
@property (readonly,copy) NSOrderedSet * reversedOrderedSet;
@property (readonly,strong) NSArray * array;
@property (readonly,strong) NSSet * set;
@property (readonly,copy) NSString * description;
-(NSArray *) objectsAtIndexes: (NSIndexSet *) indexes ;
-(BOOL) isEqualToOrderedSet: (NSOrderedSet *) other ;
-(BOOL) containsObject: (id) object ;
-(BOOL) intersectsOrderedSet: (NSOrderedSet *) other ;
-(BOOL) intersectsSet: (NSSet *) set ;
-(BOOL) isSubsetOfOrderedSet: (NSOrderedSet *) other ;
-(BOOL) isSubsetOfSet: (NSSet *) set ;
-(id) objectAtIndexedSubscript: (NSUInteger) idx ;
-(NSEnumerator *) objectEnumerator;
-(NSEnumerator *) reverseObjectEnumerator;
JSExportAs(enumerateObjectsUsingBlock,
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block );
JSExportAs(enumerateObjectsWithOptionsUsingBlock,
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(enumerateObjectsAtIndexesOptionsUsingBlock,
-(void) jsenumerateObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(indexOfObjectPassingTest,
-(NSUInteger) jsindexOfObjectPassingTest: (JSValue *) predicate );
JSExportAs(indexOfObjectWithOptionsPassingTest,
-(NSUInteger) jsindexOfObjectWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexOfObjectAtIndexesOptionsPassingTest,
-(NSUInteger) jsindexOfObjectAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexesOfObjectsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsPassingTest: (JSValue *) predicate );
JSExportAs(indexesOfObjectsWithOptionsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexesOfObjectsAtIndexesOptionsPassingTest,
-(NSIndexSet *) jsindexesOfObjectsAtIndexes: (NSIndexSet *) s options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexOfObjectInSortedRangeOptionsUsingComparator,
-(NSUInteger) jsindexOfObject: (id) object inSortedRange: (NSRange) range options: (NSBinarySearchingOptions) opts usingComparator: (JSValue *) cmp );
JSExportAs(sortedArrayUsingComparator,
-(NSArray *) jssortedArrayUsingComparator: (JSValue *) cmptr );
JSExportAs(sortedArrayWithOptionsUsingComparator,
-(NSArray *) jssortedArrayWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
@end
@protocol NSOrderedSetNSExtendedOrderedSetCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSOrderedSetCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObject,
-(id) jsinitWithObject: (id) object );
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithOrderedSet,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set );
JSExportAs(initWithOrderedSetCopyItems,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set copyItems: (BOOL) flag );
JSExportAs(initWithOrderedSetRangeCopyItems,
-(id) jsinitWithOrderedSet: (NSOrderedSet *) set range: (NSRange) range copyItems: (BOOL) flag );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithArrayCopyItems,
-(id) jsinitWithArray: (NSArray *) set copyItems: (BOOL) flag );
JSExportAs(initWithArrayRangeCopyItems,
-(id) jsinitWithArray: (NSArray *) set range: (NSRange) range copyItems: (BOOL) flag );
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
JSExportAs(initWithSetCopyItems,
-(id) jsinitWithSet: (NSSet *) set copyItems: (BOOL) flag );
@end
@protocol NSOrderedSetNSOrderedSetCreationCategoryClassExports<JSExport>
+(id) orderedSet;
+(id) orderedSetWithObject: (id) object ;
JSExportAs(orderedSetWithObjects,
+(id) jsorderedSetWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) orderedSetWithOrderedSet: (NSOrderedSet *) set ;
+(id) orderedSetWithOrderedSet: (NSOrderedSet *) set range: (NSRange) range copyItems: (BOOL) flag ;
+(id) orderedSetWithArray: (NSArray *) array ;
+(id) orderedSetWithArray: (NSArray *) array range: (NSRange) range copyItems: (BOOL) flag ;
+(id) orderedSetWithSet: (NSSet *) set ;
+(id) orderedSetWithSet: (NSSet *) set copyItems: (BOOL) flag ;
@end
@protocol NSOrderedSetNSOrderedSetDiffingCategoryInstanceExports<JSExport>
JSExportAs(differenceFromOrderedSetWithOptionsUsingEquivalenceTest,
-(NSOrderedCollectionDifference *) jsdifferenceFromOrderedSet: (NSOrderedSet *) other withOptions: (NSOrderedCollectionDifferenceCalculationOptions) options usingEquivalenceTest: (JSValue *) block );
-(NSOrderedCollectionDifference *) differenceFromOrderedSet: (NSOrderedSet *) other withOptions: (NSOrderedCollectionDifferenceCalculationOptions) options ;
-(NSOrderedCollectionDifference *) differenceFromOrderedSet: (NSOrderedSet *) other ;
-(NSOrderedSet *) orderedSetByApplyingDifference: (NSOrderedCollectionDifference *) difference ;
@end
@protocol NSOrderedSetNSOrderedSetDiffingCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetInstanceExports<JSExport>
-(void) insertObject: (id) object atIndex: (NSUInteger) idx ;
-(void) removeObjectAtIndex: (NSUInteger) idx ;
-(void) replaceObjectAtIndex: (NSUInteger) idx withObject: (id) object ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
@end
@protocol NSMutableOrderedSetClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSExtendedMutableOrderedSetCategoryInstanceExports<JSExport>
-(void) addObject: (id) object ;
-(void) addObjectsFromArray: (NSArray *) array ;
-(void) exchangeObjectAtIndex: (NSUInteger) idx1 withObjectAtIndex: (NSUInteger) idx2 ;
-(void) moveObjectsAtIndexes: (NSIndexSet *) indexes toIndex: (NSUInteger) idx ;
-(void) insertObjects: (NSArray *) objects atIndexes: (NSIndexSet *) indexes ;
-(void) setObject: (id) obj atIndex: (NSUInteger) idx ;
-(void) setObject: (id) obj atIndexedSubscript: (NSUInteger) idx ;
-(void) replaceObjectsAtIndexes: (NSIndexSet *) indexes withObjects: (NSArray *) objects ;
-(void) removeObjectsInRange: (NSRange) range ;
-(void) removeObjectsAtIndexes: (NSIndexSet *) indexes ;
-(void) removeAllObjects;
-(void) removeObject: (id) object ;
-(void) removeObjectsInArray: (NSArray *) array ;
-(void) intersectOrderedSet: (NSOrderedSet *) other ;
-(void) minusOrderedSet: (NSOrderedSet *) other ;
-(void) unionOrderedSet: (NSOrderedSet *) other ;
-(void) intersectSet: (NSSet *) other ;
-(void) minusSet: (NSSet *) other ;
-(void) unionSet: (NSSet *) other ;
JSExportAs(sortUsingComparator,
-(void) jssortUsingComparator: (JSValue *) cmptr );
JSExportAs(sortWithOptionsUsingComparator,
-(void) jssortWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
JSExportAs(sortRangeOptionsUsingComparator,
-(void) jssortRange: (NSRange) range options: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
@end
@protocol NSMutableOrderedSetNSExtendedMutableOrderedSetCategoryClassExports<JSExport>
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetCreationCategoryInstanceExports<JSExport>
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetCreationCategoryClassExports<JSExport>
+(id) orderedSetWithCapacity: (NSUInteger) numItems ;
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetDiffingCategoryInstanceExports<JSExport>
-(void) applyDifference: (NSOrderedCollectionDifference *) difference ;
@end
@protocol NSMutableOrderedSetNSMutableOrderedSetDiffingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop