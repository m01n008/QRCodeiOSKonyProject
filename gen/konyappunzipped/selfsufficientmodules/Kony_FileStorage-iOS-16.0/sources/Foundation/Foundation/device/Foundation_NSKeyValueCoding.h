#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyValueCoding_symbols(JSContext*);
@protocol NSObjectNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
-(void) setValue: (id) value forKey: (NSString *) key ;
-(NSMutableArray *) mutableArrayValueForKey: (NSString *) key ;
-(NSMutableOrderedSet *) mutableOrderedSetValueForKey: (NSString *) key ;
-(NSMutableSet *) mutableSetValueForKey: (NSString *) key ;
-(id) valueForKeyPath: (NSString *) keyPath ;
-(void) setValue: (id) value forKeyPath: (NSString *) keyPath ;
-(NSMutableArray *) mutableArrayValueForKeyPath: (NSString *) keyPath ;
-(NSMutableOrderedSet *) mutableOrderedSetValueForKeyPath: (NSString *) keyPath ;
-(NSMutableSet *) mutableSetValueForKeyPath: (NSString *) keyPath ;
-(id) valueForUndefinedKey: (NSString *) key ;
-(void) setValue: (id) value forUndefinedKey: (NSString *) key ;
-(void) setNilValueForKey: (NSString *) key ;
-(NSDictionary *) dictionaryWithValuesForKeys: (NSArray *) keys ;
-(void) setValuesForKeysWithDictionary: (NSDictionary *) keyedValues ;
@end
@protocol NSObjectNSKeyValueCodingCategoryClassExports<JSExport>
+(BOOL) accessInstanceVariablesDirectly;
@end
@protocol NSArrayNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
-(void) setValue: (id) value forKey: (NSString *) key ;
@end
@protocol NSArrayNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSDictionaryNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
@end
@protocol NSDictionaryNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSMutableDictionaryNSKeyValueCodingCategoryInstanceExports<JSExport>
-(void) setValue: (id) value forKey: (NSString *) key ;
@end
@protocol NSMutableDictionaryNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSOrderedSetNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
-(void) setValue: (id) value forKey: (NSString *) key ;
@end
@protocol NSOrderedSetNSKeyValueCodingCategoryClassExports<JSExport>
@end
@protocol NSSetNSKeyValueCodingCategoryInstanceExports<JSExport>
-(id) valueForKey: (NSString *) key ;
-(void) setValue: (id) value forKey: (NSString *) key ;
@end
@protocol NSSetNSKeyValueCodingCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop