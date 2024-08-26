#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSData_symbols(JSContext*);
@protocol NSDataInstanceExports<JSExport, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly) NSUInteger length;
@end
@protocol NSDataClassExports<JSExport, NSCopyingClassExports_, NSMutableCopyingClassExports_, NSSecureCodingClassExports_>
@end
@protocol NSDataNSExtendedDataCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * description;
-(BOOL) isEqualToData: (NSData *) other ;
-(NSData *) subdataWithRange: (NSRange) range ;
-(BOOL) writeToFile: (NSString *) path atomically: (BOOL) useAuxiliaryFile ;
-(BOOL) writeToURL: (NSURL *) url atomically: (BOOL) atomically ;
JSExportAs(writeToFileOptionsError,
-(BOOL) jswriteToFile: (NSString *) path options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr );
JSExportAs(writeToURLOptionsError,
-(BOOL) jswriteToURL: (NSURL *) url options: (NSDataWritingOptions) writeOptionsMask error: (JSValue *) errorPtr );
-(NSRange) rangeOfData: (NSData *) dataToFind options: (NSDataSearchOptions) mask range: (NSRange) searchRange ;
@end
@protocol NSDataNSExtendedDataCategoryClassExports<JSExport>
@end
@protocol NSDataNSDataCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfFileOptionsError,
-(id) jsinitWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(initWithContentsOfURLOptionsError,
-(id) jsinitWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(initWithContentsOfFile,
-(id) jsinitWithContentsOfFile: (NSString *) path );
JSExportAs(initWithContentsOfURL,
-(id) jsinitWithContentsOfURL: (NSURL *) url );
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
@end
@protocol NSDataNSDataCreationCategoryClassExports<JSExport>
+(id) data;
JSExportAs(dataWithContentsOfFileOptionsError,
+(id) jsdataWithContentsOfFile: (NSString *) path options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
JSExportAs(dataWithContentsOfURLOptionsError,
+(id) jsdataWithContentsOfURL: (NSURL *) url options: (NSDataReadingOptions) readOptionsMask error: (JSValue *) errorPtr );
+(id) dataWithContentsOfFile: (NSString *) path ;
+(id) dataWithContentsOfURL: (NSURL *) url ;
+(id) dataWithData: (NSData *) data ;
@end
@protocol NSDataNSDataBase64EncodingCategoryInstanceExports<JSExport>
JSExportAs(initWithBase64EncodedStringOptions,
-(id) jsinitWithBase64EncodedString: (NSString *) base64String options: (NSDataBase64DecodingOptions) options );
-(NSString *) base64EncodedStringWithOptions: (NSDataBase64EncodingOptions) options ;
JSExportAs(initWithBase64EncodedDataOptions,
-(id) jsinitWithBase64EncodedData: (NSData *) base64Data options: (NSDataBase64DecodingOptions) options );
-(NSData *) base64EncodedDataWithOptions: (NSDataBase64EncodingOptions) options ;
@end
@protocol NSDataNSDataBase64EncodingCategoryClassExports<JSExport>
@end
@protocol NSDataNSDataCompressionCategoryInstanceExports<JSExport>
JSExportAs(decompressedDataUsingAlgorithmError,
-(id) jsdecompressedDataUsingAlgorithm: (NSDataCompressionAlgorithm) algorithm error: (JSValue *) error );
JSExportAs(compressedDataUsingAlgorithmError,
-(id) jscompressedDataUsingAlgorithm: (NSDataCompressionAlgorithm) algorithm error: (JSValue *) error );
@end
@protocol NSDataNSDataCompressionCategoryClassExports<JSExport>
@end
@protocol NSDataNSDeprecatedCategoryInstanceExports<JSExport>
JSExportAs(initWithContentsOfMappedFile,
-(id) jsinitWithContentsOfMappedFile: (NSString *) path );
JSExportAs(initWithBase64Encoding,
-(id) jsinitWithBase64Encoding: (NSString *) base64String );
-(NSString *) base64Encoding;
@end
@protocol NSDataNSDeprecatedCategoryClassExports<JSExport>
+(id) dataWithContentsOfMappedFile: (NSString *) path ;
@end
@protocol NSMutableDataInstanceExports<JSExport>
@property () NSUInteger length;
@end
@protocol NSMutableDataClassExports<JSExport>
@end
@protocol NSMutableDataNSExtendedMutableDataCategoryInstanceExports<JSExport>
-(void) appendData: (NSData *) other ;
-(void) increaseLengthBy: (NSUInteger) extraLength ;
-(void) resetBytesInRange: (NSRange) range ;
-(void) setData: (NSData *) data ;
@end
@protocol NSMutableDataNSExtendedMutableDataCategoryClassExports<JSExport>
@end
@protocol NSMutableDataNSMutableDataCreationCategoryInstanceExports<JSExport>
JSExportAs(initWithCapacity,
-(id) jsinitWithCapacity: (NSUInteger) capacity );
JSExportAs(initWithLength,
-(id) jsinitWithLength: (NSUInteger) length );
@end
@protocol NSMutableDataNSMutableDataCreationCategoryClassExports<JSExport>
+(id) dataWithCapacity: (NSUInteger) aNumItems ;
+(id) dataWithLength: (NSUInteger) length ;
@end
@protocol NSMutableDataNSMutableDataCompressionCategoryInstanceExports<JSExport>
JSExportAs(decompressUsingAlgorithmError,
-(BOOL) jsdecompressUsingAlgorithm: (NSDataCompressionAlgorithm) algorithm error: (JSValue *) error );
JSExportAs(compressUsingAlgorithmError,
-(BOOL) jscompressUsingAlgorithm: (NSDataCompressionAlgorithm) algorithm error: (JSValue *) error );
@end
@protocol NSMutableDataNSMutableDataCompressionCategoryClassExports<JSExport>
@end
@protocol NSPurgeableDataInstanceExports<JSExport, NSDiscardableContentInstanceExports_>
@end
@protocol NSPurgeableDataClassExports<JSExport, NSDiscardableContentClassExports_>
@end
#pragma clang diagnostic pop