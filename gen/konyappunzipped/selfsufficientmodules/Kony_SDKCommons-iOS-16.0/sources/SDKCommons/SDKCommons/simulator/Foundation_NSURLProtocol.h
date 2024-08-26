#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLProtocol_symbols(JSContext*);
@protocol NSURLProtocolInstanceExports<JSExport>
@property (readonly,retain) id client;
@property (readonly,copy) NSURLRequest * request;
@property (readonly,copy) NSCachedURLResponse * cachedResponse;
JSExportAs(initWithRequestCachedResponseClient,
-(id) jsinitWithRequest: (NSURLRequest *) request cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client );
-(void) startLoading;
-(void) stopLoading;
@end
@protocol NSURLProtocolClassExports<JSExport>
+(BOOL) canInitWithRequest: (NSURLRequest *) request ;
+(NSURLRequest *) canonicalRequestForRequest: (NSURLRequest *) request ;
+(BOOL) requestIsCacheEquivalent: (NSURLRequest *) a toRequest: (NSURLRequest *) b ;
+(id) propertyForKey: (NSString *) key inRequest: (NSURLRequest *) request ;
+(void) setProperty: (id) value forKey: (NSString *) key inRequest: (NSMutableURLRequest *) request ;
+(void) removePropertyForKey: (NSString *) key inRequest: (NSMutableURLRequest *) request ;
JSExportAs(registerClass,
+(BOOL) jsregisterClass: (JSValue *) protocolClass );
JSExportAs(unregisterClass,
+(void) jsunregisterClass: (JSValue *) protocolClass );
@end
@protocol NSURLProtocolNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
@property (readonly,copy) NSURLSessionTask * task;
JSExportAs(initWithTaskCachedResponseClient,
-(id) jsinitWithTask: (NSURLSessionTask *) task cachedResponse: (NSCachedURLResponse *) cachedResponse client: (id) client );
@end
@protocol NSURLProtocolNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
+(BOOL) canInitWithTask: (NSURLSessionTask *) task ;
@end
@protocol NSURLProtocolClientInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) URLProtocol: (NSURLProtocol *) protocol wasRedirectedToRequest: (NSURLRequest *) request redirectResponse: (NSURLResponse *) redirectResponse ;
-(void) URLProtocol: (NSURLProtocol *) protocol cachedResponseIsValid: (NSCachedURLResponse *) cachedResponse ;
-(void) URLProtocol: (NSURLProtocol *) protocol didReceiveResponse: (NSURLResponse *) response cacheStoragePolicy: (NSURLCacheStoragePolicy) policy ;
-(void) URLProtocol: (NSURLProtocol *) protocol didLoadData: (NSData *) data ;
-(void) URLProtocolDidFinishLoading: (NSURLProtocol *) protocol ;
-(void) URLProtocol: (NSURLProtocol *) protocol didFailWithError: (NSError *) error ;
-(void) URLProtocol: (NSURLProtocol *) protocol didReceiveAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
-(void) URLProtocol: (NSURLProtocol *) protocol didCancelAuthenticationChallenge: (NSURLAuthenticationChallenge *) challenge ;
@end
@protocol NSURLProtocolClientClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop