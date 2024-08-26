#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSMapTable_symbols(JSContext*);
@protocol NSMapTableInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly,copy) NSPointerFunctions * keyPointerFunctions;
@property (readonly,copy) NSPointerFunctions * valuePointerFunctions;
@property (readonly) NSUInteger count;
JSExportAs(initWithKeyOptionsValueOptionsCapacity,
-(id) jsinitWithKeyOptions: (NSPointerFunctionsOptions) keyOptions valueOptions: (NSPointerFunctionsOptions) valueOptions capacity: (NSUInteger) initialCapacity );
JSExportAs(initWithKeyPointerFunctionsValuePointerFunctionsCapacity,
-(id) jsinitWithKeyPointerFunctions: (NSPointerFunctions *) keyFunctions valuePointerFunctions: (NSPointerFunctions *) valueFunctions capacity: (NSUInteger) initialCapacity );
-(id) objectForKey: (id) aKey ;
-(void) removeObjectForKey: (id) aKey ;
-(void) setObject: (id) anObject forKey: (id) aKey ;
-(NSEnumerator *) keyEnumerator;
-(NSEnumerator *) objectEnumerator;
-(void) removeAllObjects;
-(NSDictionary *) dictionaryRepresentation;
@end
@protocol NSMapTableClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
+(NSMapTable *) mapTableWithKeyOptions: (NSPointerFunctionsOptions) keyOptions valueOptions: (NSPointerFunctionsOptions) valueOptions ;
+(NSMapTable *) strongToStrongObjectsMapTable;
+(NSMapTable *) weakToStrongObjectsMapTable;
+(NSMapTable *) strongToWeakObjectsMapTable;
+(NSMapTable *) weakToWeakObjectsMapTable;
@end
#pragma clang diagnostic pop