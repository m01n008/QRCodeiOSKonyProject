#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAssetResourceLoader_symbols(JSContext*);
@protocol AVAssetResourceLoaderAVAssetResourceLoaderContentKeySupportCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL preloadsEligibleContentKeys;
@end
@protocol AVAssetResourceLoaderAVAssetResourceLoaderContentKeySupportCategoryClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingRequestorInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL providesExpiredSessionReports;
@end
@protocol AVAssetResourceLoadingRequestorClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingDataRequestInstanceExports<JSExport>
@property (readonly,nonatomic) NSInteger requestedLength;
@property (readonly,nonatomic) long long currentOffset;
@property (readonly,nonatomic) BOOL requestsAllDataToEndOfResource;
@property (readonly,nonatomic) long long requestedOffset;
-(void) respondWithData: (NSData *) data ;
@end
@protocol AVAssetResourceLoadingDataRequestClassExports<JSExport>
@end
@protocol AVAssetResourceLoaderInstanceExports<JSExport>
@property (readonly,nonatomic,weak) id delegate;
@end
@protocol AVAssetResourceLoaderClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestDeprecatedCategoryInstanceExports<JSExport>
-(void) finishLoadingWithResponse: (NSURLResponse *) response data: (NSData *) data redirect: (NSURLRequest *) redirect ;
@end
@protocol AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestDeprecatedCategoryClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingRequestInstanceExports<JSExport>
@property (copy,nonatomic) NSURLRequest * redirect;
@property (readonly,nonatomic) AVAssetResourceLoadingRequestor * requestor;
@property (readonly,nonatomic) NSURLRequest * request;
@property (readonly,nonatomic) AVAssetResourceLoadingDataRequest * dataRequest;
@property (getter=isFinished,readonly,nonatomic) BOOL finished;
@property (getter=isCancelled,readonly,nonatomic) BOOL cancelled;
@property (copy,nonatomic) NSURLResponse * response;
@property (readonly,nonatomic) AVAssetResourceLoadingContentInformationRequest * contentInformationRequest;
-(void) finishLoadingWithError: (NSError *) error ;
-(void) finishLoading;
@end
@protocol AVAssetResourceLoadingRequestClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingContentInformationRequestInstanceExports<JSExport>
@property (nonatomic) long long contentLength;
@property (getter=isByteRangeAccessSupported,nonatomic) BOOL byteRangeAccessSupported;
@property (copy,nonatomic) NSString * contentType;
@property (readonly,nonatomic) NSArray * allowedContentTypes;
@property (copy,nonatomic) NSDate * renewalDate;
@end
@protocol AVAssetResourceLoadingContentInformationRequestClassExports<JSExport>
@end
@protocol AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestContentKeyRequestSupportCategoryInstanceExports<JSExport>
JSExportAs(streamingContentKeyRequestDataForAppContentIdentifierOptionsError,
-(NSData *) jsstreamingContentKeyRequestDataForApp: (NSData *) appIdentifier contentIdentifier: (NSData *) contentIdentifier options: (NSDictionary *) options error: (JSValue *) outError );
JSExportAs(persistentContentKeyFromKeyVendorResponseOptionsError,
-(NSData *) jspersistentContentKeyFromKeyVendorResponse: (NSData *) keyVendorResponse options: (NSDictionary *) options error: (JSValue *) outError );
@end
@protocol AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestContentKeyRequestSupportCategoryClassExports<JSExport>
@end
@protocol AVAssetResourceRenewalRequestInstanceExports<JSExport>
@end
@protocol AVAssetResourceRenewalRequestClassExports<JSExport>
@end
@protocol AVAssetResourceLoaderDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) resourceLoader: (AVAssetResourceLoader *) resourceLoader didCancelAuthenticationChallenge: (NSURLAuthenticationChallenge *) authenticationChallenge ;
-(BOOL) resourceLoader: (AVAssetResourceLoader *) resourceLoader shouldWaitForLoadingOfRequestedResource: (AVAssetResourceLoadingRequest *) loadingRequest ;
-(BOOL) resourceLoader: (AVAssetResourceLoader *) resourceLoader shouldWaitForResponseToAuthenticationChallenge: (NSURLAuthenticationChallenge *) authenticationChallenge ;
-(void) resourceLoader: (AVAssetResourceLoader *) resourceLoader didCancelLoadingRequest: (AVAssetResourceLoadingRequest *) loadingRequest ;
-(BOOL) resourceLoader: (AVAssetResourceLoader *) resourceLoader shouldWaitForRenewalOfRequestedResource: (AVAssetResourceRenewalRequest *) renewalRequest ;
@end
@protocol AVAssetResourceLoaderDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop