#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSCoder_symbols(JSContext*);
@protocol NSCoderNSExtendedCoderCategoryInstanceExports<JSExport>
@property (readonly) BOOL requiresSecureCoding;
@property (readonly,copy) NSSet * allowedClasses;
@property (readonly) unsigned int systemVersion;
@property (readonly) BOOL allowsKeyedCoding;
JSExportAs(decodeObjectOfClassForKey,
-(id) jsdecodeObjectOfClass: (JSValue *) aClass forKey: (NSString *) key );
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
-(void) encodeBool: (BOOL) boolv forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object ;
-(void) failWithError: (NSError *) error ;
-(void) encodeFloat: (float) realv forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) intv forKey: (NSString *) key ;
-(void) encodeInt32: (int32_t) intv forKey: (NSString *) key ;
-(void) encodeInteger: (NSInteger) intv forKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectForKeyError,
-(id) jsdecodeTopLevelObjectForKey: (NSString *) key error: (JSValue *) error );
-(void) encodeBycopyObject: (id) anObject ;
-(void) encodeByrefObject: (id) anObject ;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(void) encodeObject: (id) object ;
JSExportAs(decodeTopLevelObjectOfClassForKeyError,
-(id) jsdecodeTopLevelObjectOfClass: (JSValue *) aClass forKey: (NSString *) key error: (JSValue *) error );
-(BOOL) containsValueForKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectAndReturnError,
-(id) jsdecodeTopLevelObjectAndReturnError: (JSValue *) error );
-(float) decodeFloatForKey: (NSString *) key ;
-(id) decodeObjectForKey: (NSString *) key ;
-(void) encodeRootObject: (id) rootObject ;
-(BOOL) decodeBoolForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(void) encodeDouble: (double) realv forKey: (NSString *) key ;
-(id) decodeObjectOfClasses: (NSSet *) classes forKey: (NSString *) key ;
-(void) encodeInt: (int) intv forKey: (NSString *) key ;
JSExportAs(decodeTopLevelObjectOfClassesForKeyError,
-(id) jsdecodeTopLevelObjectOfClasses: (NSSet *) classes forKey: (NSString *) key error: (JSValue *) error );
-(void) encodeObject: (id) objv forKey: (NSString *) key ;
-(id) decodeObject;
-(id) decodePropertyListForKey: (NSString *) key ;
-(NSInteger) decodeIntegerForKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) objv forKey: (NSString *) key ;
@end
@protocol NSCoderNSExtendedCoderCategoryClassExports<JSExport>
@end
@protocol NSCoderInstanceExports<JSExport>
-(void) encodeDataObject: (NSData *) data ;
-(NSData *) decodeDataObject;
-(NSInteger) versionForClassName: (NSString *) className ;
@end
@protocol NSCoderClassExports<JSExport>
@end
#pragma clang diagnostic pop