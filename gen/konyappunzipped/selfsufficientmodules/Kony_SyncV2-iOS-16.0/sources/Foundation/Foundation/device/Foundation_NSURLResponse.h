#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLResponse_symbols(JSContext*);
@protocol NSURLResponseInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSURL * URL;
@property (readonly,copy) NSString * MIMEType;
@property (readonly) long long expectedContentLength;
@property (readonly,copy) NSString * textEncodingName;
@property (readonly,copy) NSString * suggestedFilename;
JSExportAs(initWithURLMIMETypeExpectedContentLengthTextEncodingName,
-(id) jsinitWithURL: (NSURL *) URL MIMEType: (NSString *) MIMEType expectedContentLength: (NSInteger) length textEncodingName: (NSString *) name );
@end
@protocol NSURLResponseClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
@protocol NSHTTPURLResponseInstanceExports<JSExport>
@property (readonly) NSInteger statusCode;
@property (readonly,copy) NSDictionary * allHeaderFields;
JSExportAs(initWithURLStatusCodeHTTPVersionHeaderFields,
-(id) jsinitWithURL: (NSURL *) url statusCode: (NSInteger) statusCode HTTPVersion: (NSString *) HTTPVersion headerFields: (NSDictionary *) headerFields );
-(NSString *) valueForHTTPHeaderField: (NSString *) field ;
@end
@protocol NSHTTPURLResponseClassExports<JSExport>
+(NSString *) localizedStringForStatusCode: (NSInteger) statusCode ;
@end
#pragma clang diagnostic pop