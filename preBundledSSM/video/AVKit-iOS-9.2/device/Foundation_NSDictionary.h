#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSDictionary_symbols(JSContext*);
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
@protocol NSMutableDictionaryInstanceExports<JSExport>
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) numItems );
-(void) setObject: (id) anObject forKey: (id) aKey ;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
@end
@protocol NSMutableDictionaryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryInstanceExports<JSExport>
-(void) setDictionary: (NSDictionary *) otherDictionary ;
-(void) addEntriesFromDictionary: (NSDictionary *) otherDictionary ;
-(void) removeAllObjects;
-(void) removeObjectsForKeys: (NSArray *) keyArray ;
-(void) setObject: (id) obj forKeyedSubscript: (id) key ;
@end
@protocol NSMutableDictionaryNSExtendedMutableDictionaryCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfURL,
-(NSDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithObjectsAndKeys,
-(id) jsinitWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
JSExportAs(initWithDictionaryCopyItems,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary copyItems: (BOOL) flag );
JSExportAs(initWithDictionary,
-(id) jsinitWithDictionary: (NSDictionary *) otherDictionary );
JSExportAs(initWithObjectsForKeys,
-(id) jsinitWithObjects: (NSArray *) objects forKeys: (NSArray *) keys );
JSExportAs(initWithContentsOfFile,
-(NSDictionary *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSDictionaryNSDictionaryCreationCategoryClassExports<JSExport>
+(id) dictionaryWithDictionary: (NSDictionary *) dict ;
+(NSDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
+(id) dictionary;
+(id) dictionaryWithObjects: (NSArray *) objects forKeys: (NSArray *) keys ;
JSExportAs(dictionaryWithObjectsAndKeys,
+(id) jsdictionaryWithObjectsAndKeys: (id) firstObject arguments: (NSArray *) args );
+(id) dictionaryWithObject: (id) object forKey: (id) key ;
+(NSDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfURL,
-(NSMutableDictionary *) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithContentsOfFile,
-(NSMutableDictionary *) jsinitWithContentsOfFile: (NSString *) path );
@end
@protocol NSMutableDictionaryNSMutableDictionaryCreationCategoryClassExports<JSExport>
+(NSMutableDictionary *) dictionaryWithContentsOfURL: (NSURL *) url ;
+(id) dictionaryWithCapacity: (NSUInteger) numItems ;
+(NSMutableDictionary *) dictionaryWithContentsOfFile: (NSString *) path ;
@end
@protocol NSDictionaryNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSDictionaryNSDeprecatedCategoryClassExports<JSExport>
@end
@protocol NSDictionaryInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_, NSFastEnumerationInstanceExports_>
@property (readonly) NSUInteger count;
-(NSEnumerator *) keyEnumerator;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(id) jsinit;
@end
@protocol NSDictionaryClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_, NSFastEnumerationClassExports_>
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryInstanceExports<JSExport>
@property (readonly,copy) NSArray * allValues;
@property (readonly,copy) NSString * description;
@property (readonly,copy) NSArray * allKeys;
@property (readonly,copy) NSString * descriptionInStringsFileFormat;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
-(NSEnumerator *) objectEnumerator;
-(NSString *) descriptionWithLocale: (id) locale ;
-(NSArray *) allKeysForObject: (id) anObject ;
JSExportAs(keysSortedByValueUsingComparator,
-(NSArray *) jskeysSortedByValueUsingComparator: (JSValue *) cmptr );
JSExportAs(keysSortedByValueUsingSelector,
-(NSArray *) jskeysSortedByValueUsingSelector: (NSString *) comparator );
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(NSString *) descriptionWithLocale: (id) locale indent: (NSUInteger) level ;
JSExportAs(keysSortedByValueWithOptionsUsingComparator,
-(NSArray *) jskeysSortedByValueWithOptions: (NSSortOptions) opts usingComparator: (JSValue *) cmptr );
-(NSArray *) objectsForKeys: (NSArray *) keys notFoundMarker: (id) marker ;
-(BOOL) isEqualToDictionary: (NSDictionary *) otherDictionary ;
@end
@protocol NSDictionaryNSExtendedDictionaryCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop