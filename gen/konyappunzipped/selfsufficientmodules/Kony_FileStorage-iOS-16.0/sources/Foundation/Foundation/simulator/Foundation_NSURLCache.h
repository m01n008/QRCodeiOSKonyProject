#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLCache_symbols(JSContext*);
@protocol NSCachedURLResponseInstanceExports<JSExport, NSSecureCodingInstanceExports_, NSCopyingInstanceExports_>
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSData * data;
@property (readonly,copy) NSDictionary * userInfo;
@property (readonly) NSURLCacheStoragePolicy storagePolicy;
JSExportAs(initWithResponseData,
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data );
JSExportAs(initWithResponseDataUserInfoStoragePolicy,
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data userInfo: (NSDictionary *) userInfo storagePolicy: (NSURLCacheStoragePolicy) storagePolicy );
@end
@protocol NSCachedURLResponseClassExports<JSExport, NSSecureCodingClassExports_, NSCopyingClassExports_>
@end
@protocol NSURLCacheInstanceExports<JSExport>
@property () NSUInteger memoryCapacity;
@property () NSUInteger diskCapacity;
@property (readonly) NSUInteger currentMemoryUsage;
@property (readonly) NSUInteger currentDiskUsage;
JSExportAs(initWithMemoryCapacityDiskCapacityDiskPath,
-(id) jsinitWithMemoryCapacity: (NSUInteger) memoryCapacity diskCapacity: (NSUInteger) diskCapacity diskPath: (NSString *) path );
JSExportAs(initWithMemoryCapacityDiskCapacityDirectoryURL,
-(id) jsinitWithMemoryCapacity: (NSUInteger) memoryCapacity diskCapacity: (NSUInteger) diskCapacity directoryURL: (NSURL *) directoryURL );
-(NSCachedURLResponse *) cachedResponseForRequest: (NSURLRequest *) request ;
-(void) storeCachedResponse: (NSCachedURLResponse *) cachedResponse forRequest: (NSURLRequest *) request ;
-(void) removeCachedResponseForRequest: (NSURLRequest *) request ;
-(void) removeAllCachedResponses;
-(void) removeCachedResponsesSinceDate: (NSDate *) date ;
@end
@protocol NSURLCacheClassExports<JSExport>
+(NSURLCache *) sharedURLCache;
+(void) setSharedURLCache: (NSURLCache *) sharedURLCache ;
@end
@protocol NSURLCacheNSURLSessionTaskAdditionsCategoryInstanceExports<JSExport>
-(void) storeCachedResponse: (NSCachedURLResponse *) cachedResponse forDataTask: (NSURLSessionDataTask *) dataTask ;
JSExportAs(getCachedResponseForDataTaskCompletionHandler,
-(void) jsgetCachedResponseForDataTask: (NSURLSessionDataTask *) dataTask completionHandler: (JSValue *) completionHandler );
-(void) removeCachedResponseForDataTask: (NSURLSessionDataTask *) dataTask ;
@end
@protocol NSURLCacheNSURLSessionTaskAdditionsCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop