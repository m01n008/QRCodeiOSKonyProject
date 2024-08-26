#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLSession_symbols(JSContext*);
@protocol NSURLSessionInstanceExports<JSExport>
@property (readonly,retain) NSOperationQueue * delegateQueue;
@property (readonly,retain) id delegate;
@property (readonly,copy) NSURLSessionConfiguration * configuration;
@property (copy) NSString * sessionDescription;
-(void) finishTasksAndInvalidate;
-(void) invalidateAndCancel;
JSExportAs(resetWithCompletionHandler,
-(void) jsresetWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(flushWithCompletionHandler,
-(void) jsflushWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(getTasksWithCompletionHandler,
-(void) jsgetTasksWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(getAllTasksWithCompletionHandler,
-(void) jsgetAllTasksWithCompletionHandler: (JSValue *) completionHandler );
-(NSURLSessionDataTask *) dataTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionDataTask *) dataTaskWithURL: (NSURL *) url ;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL ;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData ;
-(NSURLSessionUploadTask *) uploadTaskWithStreamedRequest: (NSURLRequest *) request ;
-(NSURLSessionDownloadTask *) downloadTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionDownloadTask *) downloadTaskWithURL: (NSURL *) url ;
-(NSURLSessionDownloadTask *) downloadTaskWithResumeData: (NSData *) resumeData ;
-(NSURLSessionStreamTask *) streamTaskWithHostName: (NSString *) hostname port: (NSInteger) port ;
-(NSURLSessionStreamTask *) streamTaskWithNetService: (NSNetService *) service ;
-(NSURLSessionWebSocketTask *) webSocketTaskWithURL: (NSURL *) url ;
-(NSURLSessionWebSocketTask *) webSocketTaskWithURL: (NSURL *) url protocols: (NSArray *) protocols ;
-(NSURLSessionWebSocketTask *) webSocketTaskWithRequest: (NSURLRequest *) request ;
-(id) jsinit;
@end
@protocol NSURLSessionClassExports<JSExport>
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration ;
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration delegate: (id) delegate delegateQueue: (NSOperationQueue *) queue ;
+(id) jsnew;
+(NSURLSession *) sharedSession;
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryInstanceExports<JSExport>
JSExportAs(dataTaskWithRequestCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(dataTaskWithURLCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromFileCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromDataCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithRequestCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithURLCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithResumeDataCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithResumeData: (NSData *) resumeData completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryClassExports<JSExport>
@end
@protocol NSURLSessionTaskInstanceExports<JSExport, NSCopyingInstanceExports_, NSProgressReportingInstanceExports_>
@property (readonly) NSUInteger taskIdentifier;
@property (readonly,copy) NSURLRequest * originalRequest;
@property (readonly,copy) NSURLRequest * currentRequest;
@property (readonly,copy) NSURLResponse * response;
@property (retain) id delegate;
@property (readonly,strong) NSProgress * progress;
@property (copy) NSDate * earliestBeginDate;
@property () int64_t countOfBytesClientExpectsToSend;
@property () int64_t countOfBytesClientExpectsToReceive;
@property (readonly) int64_t countOfBytesSent;
@property (readonly) int64_t countOfBytesReceived;
@property (readonly) int64_t countOfBytesExpectedToSend;
@property (readonly) int64_t countOfBytesExpectedToReceive;
@property (copy) NSString * taskDescription;
@property (readonly) NSURLSessionTaskState state;
@property (readonly,copy) NSError * error;
@property () float priority;
@property () BOOL prefersIncrementalDelivery;
-(void) cancel;
-(void) suspend;
-(void) resume;
-(id) jsinit;
@end
@protocol NSURLSessionTaskClassExports<JSExport, NSCopyingClassExports_, NSProgressReportingClassExports_>
+(id) jsnew;
@end
@protocol NSURLSessionDataTaskInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol NSURLSessionDataTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionUploadTaskInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol NSURLSessionUploadTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionDownloadTaskInstanceExports<JSExport>
JSExportAs(cancelByProducingResumeData,
-(void) jscancelByProducingResumeData: (JSValue *) completionHandler );
-(id) jsinit;
@end
@protocol NSURLSessionDownloadTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionStreamTaskInstanceExports<JSExport>
JSExportAs(readDataOfMinLengthMaxLengthTimeoutCompletionHandler,
-(void) jsreadDataOfMinLength: (NSUInteger) minBytes maxLength: (NSUInteger) maxBytes timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
JSExportAs(writeDataTimeoutCompletionHandler,
-(void) jswriteData: (NSData *) data timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
-(void) captureStreams;
-(void) closeWrite;
-(void) closeRead;
-(void) startSecureConnection;
-(void) stopSecureConnection;
-(id) jsinit;
@end
@protocol NSURLSessionStreamTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionWebSocketMessageInstanceExports<JSExport>
@property (readonly) NSURLSessionWebSocketMessageType type;
@property (readonly,copy) NSData * data;
@property (readonly,copy) NSString * string;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) string );
@end
@protocol NSURLSessionWebSocketMessageClassExports<JSExport>
@end
@protocol NSURLSessionWebSocketTaskInstanceExports<JSExport>
@property () NSInteger maximumMessageSize;
@property (readonly) NSURLSessionWebSocketCloseCode closeCode;
@property (readonly,copy) NSData * closeReason;
JSExportAs(sendMessageCompletionHandler,
-(void) jssendMessage: (NSURLSessionWebSocketMessage *) message completionHandler: (JSValue *) completionHandler );
JSExportAs(receiveMessageWithCompletionHandler,
-(void) jsreceiveMessageWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(sendPingWithPongReceiveHandler,
-(void) jssendPingWithPongReceiveHandler: (JSValue *) pongReceiveHandler );
-(void) cancelWithCloseCode: (NSURLSessionWebSocketCloseCode) closeCode reason: (NSData *) reason ;
@end
@protocol NSURLSessionWebSocketTaskClassExports<JSExport>
@end
@protocol NSURLSessionConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy) NSString * identifier;
@property () NSURLRequestCachePolicy requestCachePolicy;
@property () NSTimeInterval timeoutIntervalForRequest;
@property () NSTimeInterval timeoutIntervalForResource;
@property () NSURLRequestNetworkServiceType networkServiceType;
@property () BOOL allowsCellularAccess;
@property () BOOL allowsExpensiveNetworkAccess;
@property () BOOL allowsConstrainedNetworkAccess;
@property () BOOL requiresDNSSECValidation;
@property () BOOL waitsForConnectivity;
@property (getter=isDiscretionary) BOOL discretionary;
@property (copy) NSString * sharedContainerIdentifier;
@property () BOOL sessionSendsLaunchEvents;
@property (copy) NSDictionary * connectionProxyDictionary;
@property () SSLProtocol TLSMinimumSupportedProtocol;
@property () SSLProtocol TLSMaximumSupportedProtocol;
@property () tls_protocol_version_t TLSMinimumSupportedProtocolVersion;
@property () tls_protocol_version_t TLSMaximumSupportedProtocolVersion;
@property () BOOL HTTPShouldUsePipelining;
@property () BOOL HTTPShouldSetCookies;
@property () NSHTTPCookieAcceptPolicy HTTPCookieAcceptPolicy;
@property (copy) NSDictionary * HTTPAdditionalHeaders;
@property () NSInteger HTTPMaximumConnectionsPerHost;
@property (retain) NSHTTPCookieStorage * HTTPCookieStorage;
@property (retain) NSURLCredentialStorage * URLCredentialStorage;
@property (retain) NSURLCache * URLCache;
@property () BOOL shouldUseExtendedBackgroundIdleMode;
@property (copy) NSArray * protocolClasses;
@property () NSURLSessionMultipathServiceType multipathServiceType;
-(id) jsinit;
@end
@protocol NSURLSessionConfigurationClassExports<JSExport, NSCopyingClassExports_>
+(NSURLSessionConfiguration *) backgroundSessionConfigurationWithIdentifier: (NSString *) identifier ;
+(id) jsnew;
+(NSURLSessionConfiguration *) defaultSessionConfiguration;
+(NSURLSessionConfiguration *) ephemeralSessionConfiguration;
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryClassExports<JSExport>
+(NSURLSessionConfiguration *) backgroundSessionConfiguration: (NSString *) identifier ;
@end
@protocol NSURLSessionTaskTransactionMetricsInstanceExports<JSExport>
@property (readonly,copy) NSURLRequest * request;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSDate * fetchStartDate;
@property (readonly,copy) NSDate * domainLookupStartDate;
@property (readonly,copy) NSDate * domainLookupEndDate;
@property (readonly,copy) NSDate * connectStartDate;
@property (readonly,copy) NSDate * secureConnectionStartDate;
@property (readonly,copy) NSDate * secureConnectionEndDate;
@property (readonly,copy) NSDate * connectEndDate;
@property (readonly,copy) NSDate * requestStartDate;
@property (readonly,copy) NSDate * requestEndDate;
@property (readonly,copy) NSDate * responseStartDate;
@property (readonly,copy) NSDate * responseEndDate;
@property (readonly,copy) NSString * networkProtocolName;
@property (getter=isProxyConnection,readonly,assign) BOOL proxyConnection;
@property (getter=isReusedConnection,readonly,assign) BOOL reusedConnection;
@property (readonly,assign) NSURLSessionTaskMetricsResourceFetchType resourceFetchType;
@property (readonly) int64_t countOfRequestHeaderBytesSent;
@property (readonly) int64_t countOfRequestBodyBytesSent;
@property (readonly) int64_t countOfRequestBodyBytesBeforeEncoding;
@property (readonly) int64_t countOfResponseHeaderBytesReceived;
@property (readonly) int64_t countOfResponseBodyBytesReceived;
@property (readonly) int64_t countOfResponseBodyBytesAfterDecoding;
@property (readonly,copy) NSString * localAddress;
@property (readonly,copy) NSNumber * localPort;
@property (readonly,copy) NSString * remoteAddress;
@property (readonly,copy) NSNumber * remotePort;
@property (readonly,copy) NSNumber * negotiatedTLSProtocolVersion;
@property (readonly,copy) NSNumber * negotiatedTLSCipherSuite;
@property (getter=isCellular,readonly) BOOL cellular;
@property (getter=isExpensive,readonly) BOOL expensive;
@property (getter=isConstrained,readonly) BOOL constrained;
@property (getter=isMultipath,readonly) BOOL multipath;
@property (readonly) NSURLSessionTaskMetricsDomainResolutionProtocol domainResolutionProtocol;
-(id) jsinit;
@end
@protocol NSURLSessionTaskTransactionMetricsClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionTaskMetricsInstanceExports<JSExport>
@property (readonly,copy) NSArray * transactionMetrics;
@property (readonly,copy) NSDateInterval * taskInterval;
@property (readonly,assign) NSUInteger redirectCount;
-(id) jsinit;
@end
@protocol NSURLSessionTaskMetricsClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) URLSession: (NSURLSession *) session didBecomeInvalidWithError: (NSError *) error ;
JSExportAs(URLSessionDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
-(void) URLSessionDidFinishEventsForBackgroundURLSession: (NSURLSession *) session ;
@end
@protocol NSURLSessionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSURLSessionTaskDelegateInstanceExports_<JSExport, NSURLSessionDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session didCreateTask: (NSURLSessionTask *) task ;
JSExportAs(URLSessionTaskWillBeginDelayedRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willBeginDelayedRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session taskIsWaitingForConnectivity: (NSURLSessionTask *) task ;
JSExportAs(URLSessionTaskWillPerformHTTPRedirectionNewRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willPerformHTTPRedirection: (NSHTTPURLResponse *) response newRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(URLSessionTaskDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
JSExportAs(URLSessionTaskNeedNewBodyStream,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task needNewBodyStream: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didSendBodyData: (int64_t) bytesSent totalBytesSent: (int64_t) totalBytesSent totalBytesExpectedToSend: (int64_t) totalBytesExpectedToSend ;
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didFinishCollectingMetrics: (NSURLSessionTaskMetrics *) metrics ;
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didCompleteWithError: (NSError *) error ;
@end
@protocol NSURLSessionTaskDelegateClassExports_<JSExport, NSURLSessionDelegateClassExports_>
@end
@protocol NSURLSessionDataDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
JSExportAs(URLSessionDataTaskDidReceiveResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveResponse: (NSURLResponse *) response completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeDownloadTask: (NSURLSessionDownloadTask *) downloadTask ;
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveData: (NSData *) data ;
JSExportAs(URLSessionDataTaskWillCacheResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask willCacheResponse: (NSCachedURLResponse *) proposedResponse completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionDataDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDownloadDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didFinishDownloadingToURL: (NSURL *) location ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didWriteData: (int64_t) bytesWritten totalBytesWritten: (int64_t) totalBytesWritten totalBytesExpectedToWrite: (int64_t) totalBytesExpectedToWrite ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didResumeAtOffset: (int64_t) fileOffset expectedTotalBytes: (int64_t) expectedTotalBytes ;
@end
@protocol NSURLSessionDownloadDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionStreamDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session readClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session writeClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session betterRouteDiscoveredForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session streamTask: (NSURLSessionStreamTask *) streamTask didBecomeInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSURLSessionStreamDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionWebSocketDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session webSocketTask: (NSURLSessionWebSocketTask *) webSocketTask didOpenWithProtocol: (NSString *) protocol ;
-(void) URLSession: (NSURLSession *) session webSocketTask: (NSURLSessionWebSocketTask *) webSocketTask didCloseWithCode: (NSURLSessionWebSocketCloseCode) closeCode reason: (NSData *) reason ;
@end
@protocol NSURLSessionWebSocketDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
#pragma clang diagnostic pop