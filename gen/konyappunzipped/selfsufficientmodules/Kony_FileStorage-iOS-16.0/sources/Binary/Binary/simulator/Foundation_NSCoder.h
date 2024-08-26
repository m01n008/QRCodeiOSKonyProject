#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCoder_symbols(JSContext*);
@protocol NSCoderInstanceExports<JSExport>
-(void) encodeDataObject: (NSData *) data ;
-(NSData *) decodeDataObject;
-(NSInteger) versionForClassName: (NSString *) className ;
@end
@protocol NSCoderClassExports<JSExport>
@end
@protocol NSCoderNSExtendedCoderCategoryInstanceExports<JSExport>
@property (readonly) unsigned int systemVersion;
@property (readonly) BOOL allowsKeyedCoding;
@property (readonly) BOOL requiresSecureCoding;
@property (readonly,copy) NSSet * allowedClasses;
@property (readonly) NSDecodingFailurePolicy decodingFailurePolicy;
@property (readonly,copy) NSError * error;
-(void) encodeObject: (id) object ;
-(void) encodeRootObject: (id) rootObject ;
-(void) encodeBycopyObject: (id) anObject ;
-(void) encodeByrefObject: (id) anObject ;
-(void) encodeConditionalObject: (id) object ;
-(id) decodeObject;
JSExportAs(decodeTopLevelObjectAndReturnError,
-(id) jsdecodeTopLevelObjectAndReturnError: (JSValue *) error );
-(void) encodeObject: (id) object forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object forKey: (NSString *) key ;
-(void) encodeBool: (BOOL) value forKey: (NSString *) key ;
-(void) encodeInt: (int) value forKey: (NSString *) key ;
-(void) encodeInt32: (int32_t) value forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) value forKey: (NSString *) key ;
-(void) encodeFloat: (float) value forKey: (NSString *) key ;
-(void) encodeDouble: (double) value forKey: (NSString *) key ;
-(BOOL) containsValueForKey: (NSString *) key ;
-(id) decodeObjectForKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectForKeyError,
-(id) jsdecodeTopLevelObjectForKey: (NSString *) key error: (JSValue *) error );
-(BOOL) decodeBoolForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(float) decodeFloatForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
-(void) encodeInteger: (NSInteger) value forKey: (NSString *) key ;
-(NSInteger) decodeIntegerForKey: (NSString *) key ;
JSExportAs(decodeObjectOfClassForKey,
-(id) jsdecodeObjectOfClass: (JSValue *) aClass forKey: (NSString *) key );
JSExportAs(decodeTopLevelObjectOfClassForKeyError,
-(id) jsdecodeTopLevelObjectOfClass: (JSValue *) aClass forKey: (NSString *) key error: (JSValue *) error );
JSExportAs(decodeArrayOfObjectsOfClassForKey,
-(NSArray *) jsdecodeArrayOfObjectsOfClass: (JSValue *) cls forKey: (NSString *) key );
JSExportAs(decodeDictionaryWithKeysOfClassObjectsOfClassForKey,
-(NSDictionary *) jsdecodeDictionaryWithKeysOfClass: (JSValue *) keyCls objectsOfClass: (JSValue *) objectCls forKey: (NSString *) key );
-(id) decodeObjectOfClasses: (NSSet *) classes forKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectOfClassesForKeyError,
-(id) jsdecodeTopLevelObjectOfClasses: (NSSet *) classes forKey: (NSString *) key error: (JSValue *) error );
-(NSArray *) decodeArrayOfObjectsOfClasses: (NSSet *) classes forKey: (NSString *) key ;
-(NSDictionary *) decodeDictionaryWithKeysOfClasses: (NSSet *) keyClasses objectsOfClasses: (NSSet *) objectClasses forKey: (NSString *) key ;
-(id) decodePropertyListForKey: (NSString *) key ;
-(void) failWithError: (NSError *) error ;
@end
@protocol NSCoderNSExtendedCoderCategoryClassExports<JSExport>
@end
@protocol NSCoderNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSCoderNSDeprecatedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop