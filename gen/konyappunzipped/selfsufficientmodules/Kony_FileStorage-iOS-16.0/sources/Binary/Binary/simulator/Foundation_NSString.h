#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSString_symbols(JSContext*);
@protocol NSStringInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger length;
-(unichar) characterAtIndex: (NSUInteger) index ;
-(id) jsinit;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
@end
@protocol NSStringClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSStringNSStringExtensionMethodsCategoryInstanceExports<JSExport>
@property (readonly) double doubleValue;
@property (readonly) float floatValue;
@property (readonly) int intValue;
@property (readonly) NSInteger integerValue;
@property (readonly) long long longLongValue;
@property (readonly) BOOL boolValue;
@property (readonly,copy) NSString * uppercaseString;
@property (readonly,copy) NSString * lowercaseString;
@property (readonly,copy) NSString * capitalizedString;
@property (readonly,copy) NSString * localizedUppercaseString;
@property (readonly,copy) NSString * localizedLowercaseString;
@property (readonly,copy) NSString * localizedCapitalizedString;
@property (readonly) NSStringEncoding fastestEncoding;
@property (readonly) NSStringEncoding smallestEncoding;
@property (readonly,copy) NSString * decomposedStringWithCanonicalMapping;
@property (readonly,copy) NSString * precomposedStringWithCanonicalMapping;
@property (readonly,copy) NSString * decomposedStringWithCompatibilityMapping;
@property (readonly,copy) NSString * precomposedStringWithCompatibilityMapping;
@property (readonly,copy) NSString * description;
@property (readonly) NSUInteger hash;
-(NSString *) substringFromIndex: (NSUInteger) from ;
-(NSString *) substringToIndex: (NSUInteger) to ;
-(NSString *) substringWithRange: (NSRange) range ;
-(NSComparisonResult) compare: (NSString *) string ;
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask ;
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToCompare ;
-(NSComparisonResult) compare: (NSString *) string options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToCompare locale: (id) locale ;
-(NSComparisonResult) caseInsensitiveCompare: (NSString *) string ;
-(NSComparisonResult) localizedCompare: (NSString *) string ;
-(NSComparisonResult) localizedCaseInsensitiveCompare: (NSString *) string ;
-(NSComparisonResult) localizedStandardCompare: (NSString *) string ;
-(BOOL) isEqualToString: (NSString *) aString ;
-(BOOL) hasPrefix: (NSString *) str ;
-(BOOL) hasSuffix: (NSString *) str ;
-(NSString *) commonPrefixWithString: (NSString *) str options: (NSStringCompareOptions) mask ;
-(BOOL) containsString: (NSString *) str ;
-(BOOL) localizedCaseInsensitiveContainsString: (NSString *) str ;
-(BOOL) localizedStandardContainsString: (NSString *) str ;
-(NSRange) localizedStandardRangeOfString: (NSString *) str ;
-(NSRange) rangeOfString: (NSString *) searchString ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch ;
-(NSRange) rangeOfString: (NSString *) searchString options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch locale: (NSLocale *) locale ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet options: (NSStringCompareOptions) mask ;
-(NSRange) rangeOfCharacterFromSet: (NSCharacterSet *) searchSet options: (NSStringCompareOptions) mask range: (NSRange) rangeOfReceiverToSearch ;
-(NSRange) rangeOfComposedCharacterSequenceAtIndex: (NSUInteger) index ;
-(NSRange) rangeOfComposedCharacterSequencesForRange: (NSRange) range ;
-(NSString *) stringByAppendingString: (NSString *) aString ;
JSExportAs(stringByAppendingFormat,
-(NSString *) jsstringByAppendingFormat: (NSString *) format arguments: (NSArray *) args );
-(NSString *) uppercaseStringWithLocale: (NSLocale *) locale ;
-(NSString *) lowercaseStringWithLocale: (NSLocale *) locale ;
-(NSString *) capitalizedStringWithLocale: (NSLocale *) locale ;
-(NSRange) lineRangeForRange: (NSRange) range ;
-(NSRange) paragraphRangeForRange: (NSRange) range ;
-(NSData *) dataUsingEncoding: (NSStringEncoding) encoding allowLossyConversion: (BOOL) lossy ;
-(NSData *) dataUsingEncoding: (NSStringEncoding) encoding ;
-(BOOL) canBeConvertedToEncoding: (NSStringEncoding) encoding ;
-(NSUInteger) maximumLengthOfBytesUsingEncoding: (NSStringEncoding) enc ;
-(NSUInteger) lengthOfBytesUsingEncoding: (NSStringEncoding) enc ;
-(NSArray *) componentsSeparatedByString: (NSString *) separator ;
-(NSArray *) componentsSeparatedByCharactersInSet: (NSCharacterSet *) separator ;
-(NSString *) stringByTrimmingCharactersInSet: (NSCharacterSet *) set ;
-(NSString *) stringByPaddingToLength: (NSUInteger) newLength withString: (NSString *) padString startingAtIndex: (NSUInteger) padIndex ;
-(NSString *) stringByFoldingWithOptions: (NSStringCompareOptions) options locale: (NSLocale *) locale ;
-(NSString *) stringByReplacingOccurrencesOfString: (NSString *) target withString: (NSString *) replacement options: (NSStringCompareOptions) options range: (NSRange) searchRange ;
-(NSString *) stringByReplacingOccurrencesOfString: (NSString *) target withString: (NSString *) replacement ;
-(NSString *) stringByReplacingCharactersInRange: (NSRange) range withString: (NSString *) replacement ;
-(NSString *) stringByApplyingTransform: (NSStringTransform) transform reverse: (BOOL) reverse ;
JSExportAs(writeToURLAtomicallyEncodingError,
-(BOOL) jswriteToURL: (NSURL *) url atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(writeToFileAtomicallyEncodingError,
-(BOOL) jswriteToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) aString );
JSExportAs(initWithFormat,
-(id) jsinitWithFormat: (NSString *) format arguments: (NSArray *) args );
JSExportAs(initWithFormatLocale,
-(id) jsinitWithFormat: (NSString *) format locale: (id) locale arguments: (NSArray *) args );
JSExportAs(initWithValidatedFormatValidFormatSpecifiersError,
-(id) jsinitWithValidatedFormat: (NSString *) format validFormatSpecifiers: (NSString *) validFormatSpecifiers error: (JSValue *) error arguments: (NSArray *) args );
JSExportAs(initWithValidatedFormatValidFormatSpecifiersLocaleError,
-(id) jsinitWithValidatedFormat: (NSString *) format validFormatSpecifiers: (NSString *) validFormatSpecifiers locale: (id) locale error: (JSValue *) error arguments: (NSArray *) args );
JSExportAs(initWithDataEncoding,
-(id) jsinitWithData: (NSData *) data encoding: (NSStringEncoding) encoding );
JSExportAs(initWithContentsOfURLEncodingError,
-(id) jsinitWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(initWithContentsOfFileEncodingError,
-(id) jsinitWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error );
@end
@protocol NSStringNSStringExtensionMethodsCategoryClassExports<JSExport>
+(NSString *) localizedNameOfStringEncoding: (NSStringEncoding) encoding ;
+(id) string;
+(id) stringWithString: (NSString *) string ;
JSExportAs(stringWithFormat,
+(id) jsstringWithFormat: (NSString *) format arguments: (NSArray *) args );
JSExportAs(localizedStringWithFormat,
+(id) jslocalizedStringWithFormat: (NSString *) format arguments: (NSArray *) args );
JSExportAs(stringWithValidatedFormatValidFormatSpecifiersError,
+(id) jsstringWithValidatedFormat: (NSString *) format validFormatSpecifiers: (NSString *) validFormatSpecifiers error: (JSValue *) error arguments: (NSArray *) args );
JSExportAs(localizedStringWithValidatedFormatValidFormatSpecifiersError,
+(id) jslocalizedStringWithValidatedFormat: (NSString *) format validFormatSpecifiers: (NSString *) validFormatSpecifiers error: (JSValue *) error arguments: (NSArray *) args );
JSExportAs(stringWithContentsOfURLEncodingError,
+(id) jsstringWithContentsOfURL: (NSURL *) url encoding: (NSStringEncoding) enc error: (JSValue *) error );
JSExportAs(stringWithContentsOfFileEncodingError,
+(id) jsstringWithContentsOfFile: (NSString *) path encoding: (NSStringEncoding) enc error: (JSValue *) error );
+(NSStringEncoding) defaultCStringEncoding;
@end
@protocol NSStringNSStringEncodingDetectionCategoryInstanceExports<JSExport>
@end
@protocol NSStringNSStringEncodingDetectionCategoryClassExports<JSExport>
@end
@protocol NSStringNSItemProviderCategoryInstanceExports<JSExport, NSItemProviderReadingInstanceExports_, NSItemProviderWritingInstanceExports_>
@end
@protocol NSStringNSItemProviderCategoryClassExports<JSExport, NSItemProviderReadingClassExports_, NSItemProviderWritingClassExports_>
@end
@protocol NSMutableStringInstanceExports<JSExport>
-(void) replaceCharactersInRange: (NSRange) range withString: (NSString *) aString ;
@end
@protocol NSMutableStringClassExports<JSExport>
@end
@protocol NSMutableStringNSMutableStringExtensionMethodsCategoryInstanceExports<JSExport>
-(void) insertString: (NSString *) aString atIndex: (NSUInteger) loc ;
-(void) deleteCharactersInRange: (NSRange) range ;
-(void) appendString: (NSString *) aString ;
JSExportAs(appendFormat,
-(void) jsappendFormat: (NSString *) format arguments: (NSArray *) args );
-(void) setString: (NSString *) aString ;
-(NSUInteger) replaceOccurrencesOfString: (NSString *) target withString: (NSString *) replacement options: (NSStringCompareOptions) options range: (NSRange) searchRange ;
JSExportAs(initWithCapacity,
-(NSMutableString *) jsinitWithCapacity: (NSUInteger) capacity );
@end
@protocol NSMutableStringNSMutableStringExtensionMethodsCategoryClassExports<JSExport>
+(NSMutableString *) stringWithCapacity: (NSUInteger) capacity ;
@end
@protocol NSStringNSExtendedStringPropertyListParsingCategoryInstanceExports<JSExport>
-(id) propertyList;
-(NSDictionary *) propertyListFromStringsFileFormat;
@end
@protocol NSStringNSExtendedStringPropertyListParsingCategoryClassExports<JSExport>
@end
@protocol NSStringNSStringDeprecatedCategoryInstanceExports<JSExport>
-(NSUInteger) cStringLength;
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(initWithContentsOfFile,
-(id) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
@end
@protocol NSStringNSStringDeprecatedCategoryClassExports<JSExport>
+(id) stringWithContentsOfFile: (NSString *) path ;
+(id) stringWithContentsOfURL: (NSURL *) url ;
@end
@protocol NSSimpleCStringInstanceExports<JSExport>
@end
@protocol NSSimpleCStringClassExports<JSExport>
@end
@protocol NSConstantStringInstanceExports<JSExport>
@end
@protocol NSConstantStringClassExports<JSExport>
@end
#pragma clang diagnostic pop