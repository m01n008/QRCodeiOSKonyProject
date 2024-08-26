#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLRequest_symbols(JSContext*);
@protocol NSURLRequestInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_, NSMutableCopyingInstanceExports_>
@property (readonly,copy) NSURL * URL;
@property (readonly) NSURLRequestCachePolicy cachePolicy;
@property (readonly) NSTimeInterval timeoutInterval;
@property (readonly,copy) NSURL * mainDocumentURL;
@property (readonly) NSURLRequestNetworkServiceType networkServiceType;
@property (readonly) BOOL allowsCellularAccess;
@property (readonly) BOOL allowsExpensiveNetworkAccess;
@property (readonly) BOOL allowsConstrainedNetworkAccess;
@property (readonly) BOOL assumesHTTP3Capable;
@property (readonly) NSURLRequestAttribution attribution;
JSExportAs(initWithURL,
-(id) jsinitWithURL: (NSURL *) URL );
JSExportAs(initWithURLCachePolicyTimeoutInterval,
-(id) jsinitWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval );
@end
@protocol NSURLRequestClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_, NSMutableCopyingClassExports_>
+(id) requestWithURL: (NSURL *) URL ;
+(id) requestWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval ;
+(BOOL) supportsSecureCoding;
@end
@protocol NSMutableURLRequestInstanceExports<JSExport>
@property (copy) NSURL * URL;
@property () NSURLRequestCachePolicy cachePolicy;
@property () NSTimeInterval timeoutInterval;
@property (copy) NSURL * mainDocumentURL;
@property () NSURLRequestNetworkServiceType networkServiceType;
@property () BOOL allowsCellularAccess;
@property () BOOL allowsExpensiveNetworkAccess;
@property () BOOL allowsConstrainedNetworkAccess;
@property () BOOL assumesHTTP3Capable;
@property () BOOL requiresDNSSECValidation;
@property () NSURLRequestAttribution attribution;
@end
@protocol NSMutableURLRequestClassExports<JSExport>
@end
@protocol NSURLRequestNSHTTPURLRequestCategoryInstanceExports<JSExport>
@property (readonly,copy) NSString * HTTPMethod;
@property (readonly,copy) NSDictionary * allHTTPHeaderFields;
@property (readonly,copy) NSData * HTTPBody;
@property (readonly,retain) NSInputStream * HTTPBodyStream;
@property (readonly) BOOL HTTPShouldHandleCookies;
@property (readonly) BOOL HTTPShouldUsePipelining;
-(NSString *) valueForHTTPHeaderField: (NSString *) field ;
@end
@protocol NSURLRequestNSHTTPURLRequestCategoryClassExports<JSExport>
@end
@protocol NSMutableURLRequestNSMutableHTTPURLRequestCategoryInstanceExports<JSExport>
@property (copy) NSString * HTTPMethod;
@property (copy) NSDictionary * allHTTPHeaderFields;
@property (copy) NSData * HTTPBody;
@property (retain) NSInputStream * HTTPBodyStream;
@property () BOOL HTTPShouldHandleCookies;
@property () BOOL HTTPShouldUsePipelining;
-(void) setValue: (NSString *) value forHTTPHeaderField: (NSString *) field ;
-(void) addValue: (NSString *) value forHTTPHeaderField: (NSString *) field ;
@end
@protocol NSMutableURLRequestNSMutableHTTPURLRequestCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop