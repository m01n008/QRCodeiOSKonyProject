#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSArray_symbols(JSContext*);
@protocol NSArrayInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) objectAtIndex: (NSUInteger) index ;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSArrayClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSArrayNSExtendedArrayCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * description;
@property (readonly,nonatomic) id firstObject;
@property (readonly,nonatomic) id lastObject;
@property (readonly,copy) NSData * sortedArrayHint;
-(NSArray *) arrayByAddingObject: (id) anObject ;
-(NSArray *) arrayByAddingObjectsFromArray: (NSArray *) otherArray ;
-(NSString *) componentsJoinedByString: (NSString *) separator ;
-(BOOL) containsObject: (id) anObject ;
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
-(id) firstObjectCommonWithArray: (NSArray *) otherArray ;
-(NSUInteger) indexOfObject: (id) anObject ;
-(NSUInteger) indexOfObject: (id) anObject inRange: (NSRange) range ;
-(NSUInteger) indexOfObjectIdenticalTo: (id) anObject ;
-(NSUInteger) indexOfObjectIdenticalTo: (id) anObject inRange: (NSRange) range ;
-(BOOL) isEqualToArray: (NSArray *) otherArray ;
-(NSEnumerator *) objectEnumerator;
-(NSEnumerator *) reverseObjectEnumerator;
JSExportAs(sortedArrayUsingSelector,
-(NSArray *) jssortedArrayUsingSelector: (NSString *) comparator );
-(NSArray *) subarrayWithRange: (NSRange) range ;
JSExportAs(writeToURLError,
-(BOOL) jswriteToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(makeObjectsPerformSelector,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector );
JSExportAs(makeObjectsPerformSelectorWithObject,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument );
-(NSArray *) objectsAtIndexes: (NSIndexSet *) indexes ;
-(id) objectAtIndexedSubscript: (NSUInteger) idx ;
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
JSExportAs(sortedArrayUsingComparator,
-(NSArray *) jssortedArrayUsingComparator: (JSValue *) cmptr );
JSExportAs(sortedArrayWithOptionsUsingComparator,
-(NSArray *) jssortedArrayWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
JSExportAs(indexOfObjectInSortedRangeOptionsUsingComparator,
-(NSUInteger) jsindexOfObject: (id) obj inSortedRange: (NSRange) r options: (NSBinarySearchingOptions) opts usingComparator: (JSValue *) cmp );
@end
@protocol NSArrayNSExtendedArrayCategoryClassExports<JSExport>
@end
@protocol NSArrayNSArrayCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithArrayCopyItems,
-(id) jsinitWithArray: (NSArray *) array copyItems: (BOOL) flag );
JSExportAs(initWithContentsOfURLError,
-(NSArray *) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSArrayNSArrayCreationCategoryClassExports<JSExport>
+(id) array;
+(id) arrayWithObject: (id) anObject ;
JSExportAs(arrayWithObjects,
+(id) jsarrayWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) arrayWithArray: (NSArray *) array ;
JSExportAs(arrayWithContentsOfURLError,
+(NSArray *) jsarrayWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSArrayNSArrayDiffingCategoryInstanceExports<JSExport>
JSExportAs(differenceFromArrayWithOptionsUsingEquivalenceTest,
-(NSOrderedCollectionDifference *) jsdifferenceFromArray: (NSArray *) other withOptions: (NSOrderedCollectionDifferenceCalculationOptions) options usingEquivalenceTest: (JSValue *) block );
-(NSOrderedCollectionDifference *) differenceFromArray: (NSArray *) other withOptions: (NSOrderedCollectionDifferenceCalculationOptions) options ;
-(NSOrderedCollectionDifference *) differenceFromArray: (NSArray *) other ;
-(NSArray *) arrayByApplyingDifference: (NSOrderedCollectionDifference *) difference ;
@end
@protocol NSArrayNSArrayDiffingCategoryClassExports<JSExport>
@end
@protocol NSArrayNSDeprecatedCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFile,
-(NSArray *) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(NSArray *) jsinitWithContentsOfURL: (NSURL *) url );
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
@end
@protocol NSArrayNSDeprecatedCategoryClassExports<JSExport>
+(NSArray *) arrayWithContentsOfFile: (NSString *) path ;
+(NSArray *) arrayWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSMutableArrayInstanceExports<JSExport>
-(void) addObject: (id) anObject ;
-(void) insertObject: (id) anObject atIndex: (NSUInteger) index ;
-(void) removeLastObject;
-(void) removeObjectAtIndex: (NSUInteger) index ;
-(void) replaceObjectAtIndex: (NSUInteger) index withObject: (id) anObject ;
-(id) jsinit;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSMutableArrayClassExports<JSExport>
@end
@protocol NSMutableArrayNSExtendedMutableArrayCategoryInstanceExports<JSExport>
-(void) addObjectsFromArray: (NSArray *) otherArray ;
-(void) exchangeObjectAtIndex: (NSUInteger) idx1 withObjectAtIndex: (NSUInteger) idx2 ;
-(void) removeAllObjects;
-(void) removeObject: (id) anObject inRange: (NSRange) range ;
-(void) removeObject: (id) anObject ;
-(void) removeObjectIdenticalTo: (id) anObject inRange: (NSRange) range ;
-(void) removeObjectIdenticalTo: (id) anObject ;
-(void) removeObjectsInArray: (NSArray *) otherArray ;
-(void) removeObjectsInRange: (NSRange) range ;
-(void) replaceObjectsInRange: (NSRange) range withObjectsFromArray: (NSArray *) otherArray range: (NSRange) otherRange ;
-(void) replaceObjectsInRange: (NSRange) range withObjectsFromArray: (NSArray *) otherArray ;
-(void) setArray: (NSArray *) otherArray ;
JSExportAs(sortUsingSelector,
-(void) jssortUsingSelector: (NSString *) comparator );
-(void) insertObjects: (NSArray *) objects atIndexes: (NSIndexSet *) indexes ;
-(void) removeObjectsAtIndexes: (NSIndexSet *) indexes ;
-(void) replaceObjectsAtIndexes: (NSIndexSet *) indexes withObjects: (NSArray *) objects ;
-(void) setObject: (id) obj atIndexedSubscript: (NSUInteger) idx ;
JSExportAs(sortUsingComparator,
-(void) jssortUsingComparator: (JSValue *) cmptr );
JSExportAs(sortWithOptionsUsingComparator,
-(void) jssortWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
@end
@protocol NSMutableArrayNSExtendedMutableArrayCategoryClassExports<JSExport>
@end
@protocol NSMutableArrayNSMutableArrayCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFile,
-(NSMutableArray *) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(NSMutableArray *) jsinitWithContentsOfURL: (NSURL *) url );
@end
@protocol NSMutableArrayNSMutableArrayCreationCategoryClassExports<JSExport>
+(id) arrayWithCapacity: (NSUInteger) numItems ;
+(NSMutableArray *) arrayWithContentsOfFile: (NSString *) path ;
+(NSMutableArray *) arrayWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSMutableArrayNSMutableArrayDiffingCategoryInstanceExports<JSExport>
-(void) applyDifference: (NSOrderedCollectionDifference *) difference ;
@end
@protocol NSMutableArrayNSMutableArrayDiffingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop