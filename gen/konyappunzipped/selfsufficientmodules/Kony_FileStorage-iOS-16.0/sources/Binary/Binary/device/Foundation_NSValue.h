#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSValue_symbols(JSContext*);
@protocol NSValueInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSValueClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSValueNSValueCreationCategoryInstanceExports<JSExport>
@end
@protocol NSValueNSValueCreationCategoryClassExports<JSExport>
@end
@protocol NSValueNSValueExtensionMethodsCategoryInstanceExports<JSExport>
@property (readonly) id nonretainedObjectValue;
-(BOOL) isEqualToValue: (NSValue *) value ;
@end
@protocol NSValueNSValueExtensionMethodsCategoryClassExports<JSExport>
+(NSValue *) valueWithNonretainedObject: (id) anObject ;
@end
@protocol NSNumberInstanceExports<JSExport>
@property (readonly) char charValue;
@property (readonly) unsigned char unsignedCharValue;
@property (readonly) short shortValue;
@property (readonly) unsigned short unsignedShortValue;
@property (readonly) int intValue;
@property (readonly) unsigned int unsignedIntValue;
@property (readonly) long longValue;
@property (readonly) unsigned long unsignedLongValue;
@property (readonly) long long longLongValue;
@property (readonly) unsigned long long unsignedLongLongValue;
@property (readonly) float floatValue;
@property (readonly) double doubleValue;
@property (readonly) BOOL boolValue;
@property (readonly) NSInteger integerValue;
@property (readonly) NSUInteger unsignedIntegerValue;
@property (readonly,copy) NSString * stringValue;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithChar,
-(NSNumber *) jsinitWithChar: (char) value );
JSExportAs(initWithUnsignedChar,
-(NSNumber *) jsinitWithUnsignedChar: (unsigned char) value );
JSExportAs(initWithShort,
-(NSNumber *) jsinitWithShort: (short) value );
JSExportAs(initWithUnsignedShort,
-(NSNumber *) jsinitWithUnsignedShort: (unsigned short) value );
JSExportAs(initWithInt,
-(NSNumber *) jsinitWithInt: (int) value );
JSExportAs(initWithUnsignedInt,
-(NSNumber *) jsinitWithUnsignedInt: (unsigned int) value );
JSExportAs(initWithLong,
-(NSNumber *) jsinitWithLong: (long) value );
JSExportAs(initWithUnsignedLong,
-(NSNumber *) jsinitWithUnsignedLong: (unsigned long) value );
JSExportAs(initWithLongLong,
-(NSNumber *) jsinitWithLongLong: (long long) value );
JSExportAs(initWithUnsignedLongLong,
-(NSNumber *) jsinitWithUnsignedLongLong: (unsigned long long) value );
JSExportAs(initWithFloat,
-(NSNumber *) jsinitWithFloat: (float) value );
JSExportAs(initWithDouble,
-(NSNumber *) jsinitWithDouble: (double) value );
JSExportAs(initWithBool,
-(NSNumber *) jsinitWithBool: (BOOL) value );
JSExportAs(initWithInteger,
-(NSNumber *) jsinitWithInteger: (NSInteger) value );
JSExportAs(initWithUnsignedInteger,
-(NSNumber *) jsinitWithUnsignedInteger: (NSUInteger) value );
-(NSComparisonResult) compare: (NSNumber *) otherNumber ;
-(BOOL) isEqualToNumber: (NSNumber *) number ;
-(NSString *) descriptionWithLocale: (id) locale ;
@end
@protocol NSNumberClassExports<JSExport>
@end
@protocol NSNumberNSNumberCreationCategoryInstanceExports<JSExport>
@end
@protocol NSNumberNSNumberCreationCategoryClassExports<JSExport>
+(NSNumber *) numberWithChar: (char) value ;
+(NSNumber *) numberWithUnsignedChar: (unsigned char) value ;
+(NSNumber *) numberWithShort: (short) value ;
+(NSNumber *) numberWithUnsignedShort: (unsigned short) value ;
+(NSNumber *) numberWithInt: (int) value ;
+(NSNumber *) numberWithUnsignedInt: (unsigned int) value ;
+(NSNumber *) numberWithLong: (long) value ;
+(NSNumber *) numberWithUnsignedLong: (unsigned long) value ;
+(NSNumber *) numberWithLongLong: (long long) value ;
+(NSNumber *) numberWithUnsignedLongLong: (unsigned long long) value ;
+(NSNumber *) numberWithFloat: (float) value ;
+(NSNumber *) numberWithDouble: (double) value ;
+(NSNumber *) numberWithBool: (BOOL) value ;
+(NSNumber *) numberWithInteger: (NSInteger) value ;
+(NSNumber *) numberWithUnsignedInteger: (NSUInteger) value ;
@end
@protocol NSValueNSDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSValueNSDeprecatedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop