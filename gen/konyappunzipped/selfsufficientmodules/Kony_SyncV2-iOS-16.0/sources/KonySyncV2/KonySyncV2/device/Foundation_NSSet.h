#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSSet_symbols(JSContext*);
@protocol NSSetInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) member: (id) object ;
-(NSEnumerator *) objectEnumerator;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSSetClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSSetNSExtendedSetCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allObjects;
@property (readonly,copy) NSString * description;
-(id) anyObject;
-(BOOL) containsObject: (id) anObject ;
-(NSString *) descriptionWithLocale: (id) locale ;
-(BOOL) intersectsSet: (NSSet *) otherSet ;
-(BOOL) isEqualToSet: (NSSet *) otherSet ;
-(BOOL) isSubsetOfSet: (NSSet *) otherSet ;
JSExportAs(makeObjectsPerformSelector,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector );
JSExportAs(makeObjectsPerformSelectorWithObject,
-(void) jsmakeObjectsPerformSelector: (NSString *) aSelector withObject: (id) argument );
-(NSSet *) setByAddingObject: (id) anObject ;
-(NSSet *) setByAddingObjectsFromSet: (NSSet *) other ;
-(NSSet *) setByAddingObjectsFromArray: (NSArray *) other ;
JSExportAs(enumerateObjectsUsingBlock,
-(void) jsenumerateObjectsUsingBlock: (JSValue *) block );
JSExportAs(enumerateObjectsWithOptionsUsingBlock,
-(void) jsenumerateObjectsWithOptions: (NSEnumerationOptions) opts usingBlock: (JSValue *) block );
JSExportAs(objectsPassingTest,
-(NSSet *) jsobjectsPassingTest: (JSValue *) predicate );
JSExportAs(objectsWithOptionsPassingTest,
-(NSSet *) jsobjectsWithOptions: (NSEnumerationOptions) opts passingTest: (JSValue *) predicate );
@end
@protocol NSSetNSExtendedSetCategoryClassExports<JSExport>
@end
@protocol NSSetNSSetCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObjects,
-(id) jsinitWithObjects: (id) firstObj arguments: (NSArray *) args );
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
JSExportAs(initWithSetCopyItems,
-(id) jsinitWithSet: (NSSet *) set copyItems: (BOOL) flag );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
@end
@protocol NSSetNSSetCreationCategoryClassExports<JSExport>
+(id) set;
+(id) setWithObject: (id) object ;
JSExportAs(setWithObjects,
+(id) jssetWithObjects: (id) firstObj arguments: (NSArray *) args );
+(id) setWithSet: (NSSet *) set ;
+(id) setWithArray: (NSArray *) array ;
@end
@protocol NSMutableSetInstanceExports<JSExport>
-(void) addObject: (id) object ;
-(void) removeObject: (id) object ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
@end
@protocol NSMutableSetClassExports<JSExport>
@end
@protocol NSMutableSetNSExtendedMutableSetCategoryInstanceExports<JSExport>
-(void) addObjectsFromArray: (NSArray *) array ;
-(void) intersectSet: (NSSet *) otherSet ;
-(void) minusSet: (NSSet *) otherSet ;
-(void) removeAllObjects;
-(void) unionSet: (NSSet *) otherSet ;
-(void) setSet: (NSSet *) otherSet ;
@end
@protocol NSMutableSetNSExtendedMutableSetCategoryClassExports<JSExport>
@end
@protocol NSMutableSetNSMutableSetCreationCategoryInstanceExports<JSExport>
@end
@protocol NSMutableSetNSMutableSetCreationCategoryClassExports<JSExport>
+(id) setWithCapacity: (NSUInteger) numItems ;
@end
@protocol NSCountedSetInstanceExports<JSExport>
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
JSExportAs(initWithArray,
-(id) jsinitWithArray: (NSArray *) array );
JSExportAs(initWithSet,
-(id) jsinitWithSet: (NSSet *) set );
-(NSUInteger) countForObject: (id) object ;
-(NSEnumerator *) objectEnumerator;
-(void) addObject: (id) object ;
-(void) removeObject: (id) object ;
@end
@protocol NSCountedSetClassExports<JSExport>
@end
#pragma clang diagnostic pop