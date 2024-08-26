#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSKeyedArchiver_symbols(JSContext*);
@protocol NSKeyedUnarchiverInstanceExports<JSExport>
@property (readwrite) BOOL requiresSecureCoding;
@property (readwrite) NSDecodingFailurePolicy decodingFailurePolicy;
@property (assign) id delegate;
-(void) finishDecoding;
JSExportAs(initForReadingWithData,
-(id) jsinitForReadingWithData: (NSData *) data );
-(int64_t) decodeInt64ForKey: (NSString *) key ;
-(BOOL) decodeBoolForKey: (NSString *) key ;
JSExportAs(setClassForClassName,
-(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
JSExportAs(initForReadingFromDataError,
-(id) jsinitForReadingFromData: (NSData *) data error: (JSValue *) error );
-(id) decodeObjectForKey: (NSString *) key ;
-(int) decodeIntForKey: (NSString *) key ;
-(double) decodeDoubleForKey: (NSString *) key ;
-(id) jsinit;
-(int32_t) decodeInt32ForKey: (NSString *) key ;
-(id) classForClassName: (NSString *) codedName ;
-(BOOL) containsValueForKey: (NSString *) key ;
-(float) decodeFloatForKey: (NSString *) key ;
@end
@protocol NSKeyedUnarchiverClassExports<JSExport>
JSExportAs(setClassForClassName,
+(void) jssetClass: (JSValue *) cls forClassName: (NSString *) codedName );
JSExportAs(unarchivedDictionaryWithKeysOfClassesObjectsOfClassesFromDataError,
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClasses: (NSSet *) keyClasses objectsOfClasses: (NSSet *) valueClasses fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchiveTopLevelObjectWithDataError,
+(id) jsunarchiveTopLevelObjectWithData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedObjectOfClassFromDataError,
+(id) jsunarchivedObjectOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error );
+(id) unarchiveObjectWithData: (NSData *) data ;
JSExportAs(unarchivedDictionaryWithKeysOfClassObjectsOfClassFromDataError,
+(NSDictionary *) jsunarchivedDictionaryWithKeysOfClass: (JSValue *) keyCls objectsOfClass: (JSValue *) valueCls fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedObjectOfClassesFromDataError,
+(id) jsunarchivedObjectOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error );
JSExportAs(unarchivedArrayOfObjectsOfClassesFromDataError,
+(NSArray *) jsunarchivedArrayOfObjectsOfClasses: (NSSet *) classes fromData: (NSData *) data error: (JSValue *) error );
+(id) classForClassName: (NSString *) codedName ;
JSExportAs(unarchivedArrayOfObjectsOfClassFromDataError,
+(NSArray *) jsunarchivedArrayOfObjectsOfClass: (JSValue *) cls fromData: (NSData *) data error: (JSValue *) error );
+(id) unarchiveObjectWithFile: (NSString *) path ;
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@end
@protocol NSObjectNSKeyedUnarchiverObjectSubstitutionCategoryClassExports<JSExport>
+(id) classForKeyedUnarchiver;
@end
@protocol NSKeyedArchiverInstanceExports<JSExport>
@property (readwrite) BOOL requiresSecureCoding;
@property () NSPropertyListFormat outputFormat;
@property (assign) id delegate;
@property (readonly,strong) NSData * encodedData;
JSExportAs(initRequiringSecureCoding,
-(id) jsinitRequiringSecureCoding: (BOOL) requiresSecureCoding );
JSExportAs(classNameForClass,
-(NSString *) jsclassNameForClass: (JSValue *) cls );
-(void) encodeBool: (BOOL) value forKey: (NSString *) key ;
JSExportAs(setClassNameForClass,
-(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
-(void) encodeInt32: (int32_t) value forKey: (NSString *) key ;
-(void) encodeInt64: (int64_t) value forKey: (NSString *) key ;
-(void) encodeFloat: (float) value forKey: (NSString *) key ;
-(id) jsinit;
-(void) finishEncoding;
-(void) encodeDouble: (double) value forKey: (NSString *) key ;
-(void) encodeInt: (int) value forKey: (NSString *) key ;
JSExportAs(initForWritingWithMutableData,
-(id) jsinitForWritingWithMutableData: (NSMutableData *) data );
-(void) encodeObject: (id) object forKey: (NSString *) key ;
-(void) encodeConditionalObject: (id) object forKey: (NSString *) key ;
@end
@protocol NSKeyedArchiverClassExports<JSExport>
JSExportAs(archivedDataWithRootObjectRequiringSecureCodingError,
+(NSData *) jsarchivedDataWithRootObject: (id) object requiringSecureCoding: (BOOL) requiresSecureCoding error: (JSValue *) error );
JSExportAs(setClassNameForClass,
+(void) jssetClassName: (NSString *) codedName forClass: (JSValue *) cls );
+(NSData *) archivedDataWithRootObject: (id) rootObject ;
+(BOOL) archiveRootObject: (id) rootObject toFile: (NSString *) path ;
JSExportAs(classNameForClass,
+(NSString *) jsclassNameForClass: (JSValue *) cls );
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryInstanceExports<JSExport>
@property (readonly,getter=getJsClassForKeyedArchiver) JSValue* jsclassForKeyedArchiver;
-(id) replacementObjectForKeyedArchiver: (NSKeyedArchiver *) archiver ;
@end
@protocol NSObjectNSKeyedArchiverObjectSubstitutionCategoryClassExports<JSExport>
+(NSArray *) classFallbacksForKeyedArchiver;
@end
@protocol NSKeyedArchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) archiver: (NSKeyedArchiver *) archiver didEncodeObject: (id) object ;
-(void) archiver: (NSKeyedArchiver *) archiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) archiverDidFinish: (NSKeyedArchiver *) archiver ;
-(void) archiverWillFinish: (NSKeyedArchiver *) archiver ;
-(id) archiver: (NSKeyedArchiver *) archiver willEncodeObject: (id) object ;
@end
@protocol NSKeyedArchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSKeyedUnarchiverDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver didDecodeObject: (id) object ;
-(void) unarchiver: (NSKeyedUnarchiver *) unarchiver willReplaceObject: (id) object withObject: (id) newObject ;
-(void) unarchiverDidFinish: (NSKeyedUnarchiver *) unarchiver ;
-(id) unarchiver: (NSKeyedUnarchiver *) unarchiver cannotDecodeObjectOfClassName: (NSString *) name originalClasses: (NSArray *) classNames ;
-(void) unarchiverWillFinish: (NSKeyedUnarchiver *) unarchiver ;
@end
@protocol NSKeyedUnarchiverDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop