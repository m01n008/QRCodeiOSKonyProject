#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDictionary_symbols(JSContext*);
@protocol NSDictionaryInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(id) objectForKey: (id) aKey ;
-(NSEnumerator *) keyEnumerator;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSDictionaryClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allKeys;
@property (readonly,copy) NSArray * allValues;
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSString * descriptionInStringsFileFormat;
-(NSArray *) allKeysForObject: (id) anObject ;
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
-(BOOL) isEqualToDictionary: (NSDictionary *) otherDictionary ;
-(NSEnumerator *) objectEnumerator;
-(NSArray *) objectsForKeys: (NSArray *) keys notFoundMarker: (id) marker ;
JSExportAs(writeToURLError,
-(BOOL) jswriteToURL: (NSURL *) url error: (JSValue *) error );
JSExportAs(keysSortedByValueUsingSelector,
-(NSArray *) jskeysSortedByValueUsingSelector: (NSString *) comparator );
-(id) objectForKeyedSubscript: (id) key ;
JSExportAs(keysSortedByValueUsingComparator,
-(NSArray *) jskeysSortedByValueUsingComparator: (JSValue *) cmptr );
JSExportAs(keysSortedByValueWithOptionsUsingComparator,
-(NSArray *) jskeysSortedByValueWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSDeprecatedCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFile,
-(NSDictionary *) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
@end
@protocol NSDictionaryNSDeprecatedCategoryClassExports<JSExport>
+(NSDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
+(NSDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSDictionaryNSDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithObjectsAndKeys,
-(id) jsinitWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
JSExportAs(initWithDictionary,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary );
JSExportAs(initWithDictionaryCopyItems,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary copyItems: (BOOL) flag );
JSExportAs(initWithObjectsForKeys,
-(id) jsinitWithObjects: (NSArray *) objects forKeys: (NSArray *) keys );
JSExportAs(initWithContentsOfURLError,
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSDictionaryNSDictionaryCreationCategoryClassExports<JSExport>
+(id) dictionary;
+(id) dictionaryWithObject: (id) object forKey: (id) key ;
JSExportAs(dictionaryWithObjectsAndKeys,
+(id) jsdictionaryWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
+(id) dictionaryWithDictionary: (NSDictionary *) dict ;
+(id) dictionaryWithObjects: (NSArray *) objects forKeys: (NSArray *) keys ;
JSExportAs(dictionaryWithContentsOfURLError,
+(NSDictionary *) jsdictionaryWithContentsOfURL: (NSURL *) url error: (JSValue *) error );
@end
@protocol NSMutableDictionaryInstanceExports<JSExport>
-(void) removeObjectForKey: (id) aKey ;
-(void) setObject: (id) anObject forKey: (id) aKey ;
-(id) jsinit;
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSMutableDictionaryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryInstanceExports<JSExport>
-(void) addEntriesFromDictionary: (NSDictionary *) otherDictionary ;
-(void) removeAllObjects;
-(void) removeObjectsForKeys: (NSArray *) keyArray ;
-(void) setDictionary: (NSDictionary *) otherDictionary ;
-(void) setObject: (id) obj forKeyedSubscript: (id) key ;
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFile,
-(NSMutableDictionary *) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(NSMutableDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
@end
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryClassExports<JSExport>
+(id) dictionaryWithCapacity: (NSUInteger) numItems ;
+(NSMutableDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
+(NSMutableDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSDictionaryNSSharedKeySetDictionaryCategoryInstanceExports<JSExport>
@end
@protocol NSDictionaryNSSharedKeySetDictionaryCategoryClassExports<JSExport>
+(id) sharedKeySetForKeys: (NSArray *) keys ;
@end
@protocol NSMutableDictionaryNSSharedKeySetDictionaryCategoryInstanceExports<JSExport>
@end
@protocol NSMutableDictionaryNSSharedKeySetDictionaryCategoryClassExports<JSExport>
+(NSMutableDictionary *) dictionaryWithSharedKeySet: (id) keyset ;
@end
@protocol NSDictionaryNSGenericFastEnumerationCategoryInstanceExports<JSExport, NSFastEnumerationInstanceExports_>
@end
@protocol NSDictionaryNSGenericFastEnumerationCategoryClassExports<JSExport, NSFastEnumerationClassExports_>
@end
#pragma clang diagnostic pop