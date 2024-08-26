#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSHashTable_symbols(JSContext*);
@protocol NSHashTableInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly,copy) NSPointerFunctions * pointerFunctions;
@property (readonly) NSUInteger count;
@property (readonly,copy) NSArray * allObjects;
@property (readonly,nonatomic) id anyObject;
@property (readonly,copy) NSSet * setRepresentation;
JSExportAs(initWithOptionsCapacity,
-(id) jsinitWithOptions: (NSPointerFunctionsOptions) options capacity: (NSUInteger) initialCapacity );
JSExportAs(initWithPointerFunctionsCapacity,
-(id) jsinitWithPointerFunctions: (NSPointerFunctions *) functions capacity: (NSUInteger) initialCapacity );
-(id) member: (id) object ;
-(NSEnumerator *) objectEnumerator;
-(void) addObject: (id) object ;
-(void) removeObject: (id) object ;
-(void) removeAllObjects;
-(BOOL) containsObject: (id) anObject ;
-(BOOL) intersectsHashTable: (NSHashTable *) other ;
-(BOOL) isEqualToHashTable: (NSHashTable *) other ;
-(BOOL) isSubsetOfHashTable: (NSHashTable *) other ;
-(void) intersectHashTable: (NSHashTable *) other ;
-(void) unionHashTable: (NSHashTable *) other ;
-(void) minusHashTable: (NSHashTable *) other ;
@end
@protocol NSHashTableClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
+(NSHashTable *) hashTableWithOptions: (NSPointerFunctionsOptions) options ;
+(NSHashTable *) weakObjectsHashTable;
@end
#pragma clang diagnostic pop