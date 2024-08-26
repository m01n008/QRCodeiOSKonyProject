#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyedArchiver_symbols(JSContext*);
@protocol NSKeyedArchiverInstanceExports<JSExport>
@property (assign) id delegate;
@property () NSPropertyListFormat outputFormat;
@property (readonly,strong) NSData * encodedData;
@property (readwrite) BOOL requiresSecureCoding;
JSExportAs(initRequiringSecureCoding,
-(id) jsinitRequiringSecureCoding: (BOOL) requiresSecureCoding );
-(id) jsinit;
JSExportAs(initForWritingWithMutableData,
-(id) jsinitForWritingWithMutableData: (NSMutableData *) data );
-(void) finishEncoding;
JSExportAs(setClassNameForClass,
-(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
JSExportAs(classNameForClass,
-(NSString *) jsclassNameForClass: (JSValue *) cls );
-(void) encodeObject: (id) object forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object forKey: (NSString *) key ;
-(void) encodeBool: (BOOL) value forKey: (NSString *) key ;
-(void) encodeInt: (int) value forKey: (NSString *) key ;
-(void) encodeInt32: (int32_t) value forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) value forKey: (NSString *) key ;
-(void) encodeFloat: (float) value forKey: (NSString *) key ;
-(void) encodeDouble: (double) value forKey: (NSString *) key ;
@end
@protocol NSKeyedArchiverClassExports<JSExport>
JSExportAs(archivedDataWithRootObjectRequiringSecureCodingError,
+(NSData *) jsarchivedDataWithRootObject: (id) object requiringSecureCoding: (BOOL) requiresSecureCoding error: (JSValue *) error );
+(NSData *) archivedDataWithRootObject: (id) rootObject ;
+(BOOL) archiveRootObject: (id) rootObject toFile: (NSString *) path ;
JSExportAs(setClassNameForClass,
+(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
JSExportAs(classNameForClass,
+(NSString *) jsclassNameForClass: (JSValue *) cls );
@end
@protocol NSKeyedUnarchiverInstanceExports<JSExport>
@property (assign) id delegate;
@property (readwrite) BOOL requiresSecureCoding;
@property (readwrite) NSDecodingFailurePolicy decodingFailurePolicy;
JSExportAs(initForReadingFromDataError,
-(id) jsinitForReadingFromData: (NSData *) data error: (JSValue *) error );
-(id) jsinit;
JSExportAs(initForReadingWithData,
-(id) jsinitForReadingWithData: (NSData *) data );
-(void) finishDecoding;
JSExportAs(setClassForClassName,
-(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
-(id) classForClassName: (NSString *) codedName ;
-(BOOL) containsValueForKey: (NSString *) key ;
-(id) decodeObjectForKey: (NSString *) key ;
-(BOOL) decodeBoolForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(float) decodeFloatForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
@end
@protocol NSKeyedUnarchiverClassExports<JSExport>
JSExportAs(unarchivedObjectOfClassFromDataError,
+(id) jsunarchivedObjectOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedArrayOfObjectsOfClassFromDataError,
+(NSArray *) jsunarchivedArrayOfObjectsOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedDictionaryWithKeysOfClassObjectsOfClassFromDataError,
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClass: (JSValue *) keyCls objectsOfClass: (JSValue *) valueCls fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedObjectOfClassesFromDataError,
+(id) jsunarchivedObjectOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedArrayOfObjectsOfClassesFromDataError,
+(NSArray *) jsunarchivedArrayOfObjectsOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedDictionaryWithKeysOfClassesObjectsOfClassesFromDataError,
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClasses: (NSSet *) keyClasses objectsOfClasses: (NSSet *) valueClasses fromData: (NSData *) data error: (JSValue *) error );
+(id) unarchiveObjectWithData: (NSData *) data ;
JSExportAs(unarchiveTopLevelObjectWithDataError,
+(id) jsunarchiveTopLevelObjectWithData: (NSData *) data error: (JSValue *) error );
+(id) unarchiveObjectWithFile: (NSString *) path ;
JSExportAs(setClassForClassName,
+(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
+(id) classForClassName: (NSString *) codedName ;
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@property (readonly,getter=getJsClassForKeyedArchiver) JSValue* jsclassForKeyedArchiver;
-(id) replacementObjectForKeyedArchiver: (NSKeyedArchiver *) archiver ;
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryClassExports<JSExport>
+(NSArray *) classFallbacksForKeyedArchiver;
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryClassExports<JSExport>
+(id) classForKeyedUnarchiver;
@end
@protocol NSKeyedArchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) archiver: (NSKeyedArchiver *) archiver willEncodeObject: (id) object ;
-(void) archiver: (NSKeyedArchiver *) archiver didEncodeObject: (id) object ;
-(void) archiver: (NSKeyedArchiver *) archiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) archiverWillFinish: (NSKeyedArchiver *) archiver ;
-(void) archiverDidFinish: (NSKeyedArchiver *) archiver ;
@end
@protocol NSKeyedArchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSKeyedUnarchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver cannotDecodeObjectOfClassName: (NSString *) name originalClasses: (NSArray *) classNames ;
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver didDecodeObject: (id) object ;
-(void) unarchiver: (NSKeyedUnarchiver *) unarchiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) unarchiverWillFinish: (NSKeyedUnarchiver *) unarchiver ;
-(void) unarchiverDidFinish: (NSKeyedUnarchiver *) unarchiver ;
@end
@protocol NSKeyedUnarchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop