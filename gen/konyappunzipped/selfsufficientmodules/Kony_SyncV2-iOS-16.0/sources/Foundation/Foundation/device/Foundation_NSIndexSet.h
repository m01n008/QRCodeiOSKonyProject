#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSIndexSet_symbols(JSContext*);
@protocol NSIndexSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger count;
@property (readonly) NSUInteger firstIndex;
@property (readonly) NSUInteger lastIndex;
JSExportAs(initWithIndexesInRange,
-(id) jsinitWithIndexesInRange: (NSRange) range );
JSExportAs(initWithIndexSet,
-(id) jsinitWithIndexSet: (NSIndexSet *) indexSet );
JSExportAs(initWithIndex,
-(id) jsinitWithIndex: (NSUInteger) value );
-(BOOL) isEqualToIndexSet: (NSIndexSet *) indexSet ;
-(NSUInteger) indexGreaterThanIndex: (NSUInteger) value ;
-(NSUInteger) indexLessThanIndex: (NSUInteger) value ;
-(NSUInteger) indexGreaterThanOrEqualToIndex: (NSUInteger) value ;
-(NSUInteger) indexLessThanOrEqualToIndex: (NSUInteger) value ;
-(NSUInteger) countOfIndexesInRange: (NSRange) range ;
-(BOOL) containsIndex: (NSUInteger) value ;
-(BOOL) containsIndexesInRange: (NSRange) range ;
-(BOOL) containsIndexes: (NSIndexSet *) indexSet ;
-(BOOL) intersectsIndexesInRange: (NSRange) range ;
JSExportAs(enumerateIndexesUsingBlock,
-(void) jsenumerateIndexesUsingBlock: (JSValue *) block );
JSExportAs(enumerateIndexesWithOptionsUsingBlock,
-(void) jsenumerateIndexesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(enumerateIndexesInRangeOptionsUsingBlock,
-(void) jsenumerateIndexesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(indexPassingTest,
-(NSUInteger) jsindexPassingTest: (JSValue *) predicate );
JSExportAs(indexWithOptionsPassingTest,
-(NSUInteger) jsindexWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexInRangeOptionsPassingTest,
-(NSUInteger) jsindexInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexesPassingTest,
-(NSIndexSet *) jsindexesPassingTest: (JSValue *) predicate );
JSExportAs(indexesWithOptionsPassingTest,
-(NSIndexSet *) jsindexesWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(indexesInRangeOptionsPassingTest,
-(NSIndexSet *) jsindexesInRange: (NSRange) range options: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
JSExportAs(enumerateRangesUsingBlock,
-(void) jsenumerateRangesUsingBlock: (JSValue *) block );
JSExportAs(enumerateRangesWithOptionsUsingBlock,
-(void) jsenumerateRangesWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(enumerateRangesInRangeOptionsUsingBlock,
-(void) jsenumerateRangesInRange: (NSRange) range options: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
@end
@protocol NSIndexSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
+(id) indexSet;
+(id) indexSetWithIndex: (NSUInteger) value ;
+(id) indexSetWithIndexesInRange: (NSRange) range ;
@end
@protocol NSMutableIndexSetInstanceExports<JSExport>
-(void) addIndexes: (NSIndexSet *) indexSet ;
-(void) removeIndexes: (NSIndexSet *) indexSet ;
-(void) removeAllIndexes;
-(void) addIndex: (NSUInteger) value ;
-(void) removeIndex: (NSUInteger) value ;
-(void) addIndexesInRange: (NSRange) range ;
-(void) removeIndexesInRange: (NSRange) range ;
-(void) shiftIndexesStartingAtIndex: (NSUInteger) index by: (NSInteger) delta ;
@end
@protocol NSMutableIndexSetClassExports<JSExport>
@end
#pragma clang diagnostic pop