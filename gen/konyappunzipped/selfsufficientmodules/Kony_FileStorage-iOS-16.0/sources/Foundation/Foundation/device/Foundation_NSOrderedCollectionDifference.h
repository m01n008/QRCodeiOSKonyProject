#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSOrderedCollectionDifference_symbols(JSContext*);
@protocol NSOrderedCollectionDifferenceInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
@property (readonly,strong) NSArray * insertions;
@property (readonly,strong) NSArray * removals;
@property (readonly,assign) BOOL hasChanges;
JSExportAs(initWithChanges,
-(id) jsinitWithChanges: (NSArray *) changes );
JSExportAs(initWithInsertIndexesInsertedObjectsRemoveIndexesRemovedObjectsAdditionalChanges,
-(id) jsinitWithInsertIndexes: (NSIndexSet *) inserts insertedObjects: (NSArray *) insertedObjects removeIndexes: (NSIndexSet *) removes removedObjects: (NSArray *) removedObjects additionalChanges: (NSArray *) changes );
JSExportAs(initWithInsertIndexesInsertedObjectsRemoveIndexesRemovedObjects,
-(id) jsinitWithInsertIndexes: (NSIndexSet *) inserts insertedObjects: (NSArray *) insertedObjects removeIndexes: (NSIndexSet *) removes removedObjects: (NSArray *) removedObjects );
JSExportAs(differenceByTransformingChangesWithBlock,
-(NSOrderedCollectionDifference *) jsdifferenceByTransformingChangesWithBlock: (JSValue *) block );
-(id) inverseDifference;
@end
@protocol NSOrderedCollectionDifferenceClassExports<JSExport, NSFastEnumerationClassExports_>
@end
#pragma clang diagnostic pop