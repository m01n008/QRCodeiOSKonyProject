#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_Foundation_NSURLSession_symbols(JSContext*);
@protocol NSURLSessionTaskInstanceExports<JSExport, NSCopyingInstanceExports_, NSProgressReportingInstanceExports_>
@property (readonly) int64_t countOfBytesSent;
@property (copy) NSDate * earliestBeginDate;
@property (readonly) int64_t countOfBytesExpectedToReceive;
@property (copy) NSString * taskDescription;
@property (readonly) int64_t countOfBytesExpectedToSend;
@property (readonly) NSURLSessionTaskState state;
@property () float priority;
@property () int64_t countOfBytesClientExpectsToSend;
@property (readonly) NSUInteger taskIdentifier;
@property (readonly) int64_t countOfBytesReceived;
@property (readonly,copy) NSError * error;
@property (readonly,copy) NSURLRequest * currentRequest;
@property (readonly,strong) NSProgress * progress;
@property () int64_t countOfBytesClientExpectsToReceive;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSURLRequest * originalRequest;
-(void) suspend;
-(void) cancel;
-(void) resume;
-(id) jsinit;
@end
@protocol NSURLSessionTaskClassExports<JSExport, NSCopyingClassExports_, NSProgressReportingClassExports_>
+(id) jsnew;
@end
@protocol NSURLSessionWebSocketMessageInstanceExports<JSExport>
@property (readonly,copy) NSData * data;
@property (readonly) NSURLSessionWebSocketMessageType type;
@property (readonly,copy) NSString * string;
JSExportAs(initWithData,
-(id) jsinitWithData: (NSData *) data );
JSExportAs(initWithString,
-(id) jsinitWithString: (NSString *) string );
@end
@protocol NSURLSessionWebSocketMessageClassExports<JSExport>
@end
@protocol NSURLSessionUploadTaskInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol NSURLSessionUploadTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionTaskTransactionMetricsInstanceExports<JSExport>
@property (getter=isMultipath,readonly) BOOL multipath;
@property (readonly,copy) NSNumber * remotePort;
@property (readonly,copy) NSDate * responseStartDate;
@property (readonly,copy) NSNumber * localPort;
@property (readonly,copy) NSDate * connectStartDate;
@property (readonly,copy) NSDate * connectEndDate;
@property (readonly,copy) NSDate * responseEndDate;
@property (readonly,copy) NSString * localAddress;
@property (readonly) int64_t countOfRequestBodyBytesBeforeEncoding;
@property (getter=isExpensive,readonly) BOOL expensive;
@property (getter=isConstrained,readonly) BOOL constrained;
@property (readonly,copy) NSString * remoteAddress;
@property (readonly) int64_t countOfRequestBodyBytesSent;
@property (readonly,copy) NSDate * requestStartDate;
@property (readonly,copy) NSDate * domainLookupStartDate;
@property (readonly) NSURLSessionTaskMetricsDomainResolutionProtocol domainResolutionProtocol;
@property (getter=isReusedConnection,readonly,assign) BOOL reusedConnection;
@property (readonly) int64_t countOfResponseBodyBytesReceived;
@property (readonly) int64_t countOfRequestHeaderBytesSent;
@property (getter=isProxyConnection,readonly,assign) BOOL proxyConnection;
@property (readonly,copy) NSDate * domainLookupEndDate;
@property (readonly,assign) NSURLSessionTaskMetricsResourceFetchType resourceFetchType;
@property (readonly,copy) NSNumber * negotiatedTLSCipherSuite;
@property (getter=isCellular,readonly) BOOL cellular;
@property (readonly,copy) NSDate * secureConnectionEndDate;
@property (readonly) int64_t countOfResponseBodyBytesAfterDecoding;
@property (readonly,copy) NSDate * requestEndDate;
@property (readonly,copy) NSURLRequest * request;
@property (readonly,copy) NSDate * secureConnectionStartDate;
@property (readonly,copy) NSDate * fetchStartDate;
@property (readonly,copy) NSNumber * negotiatedTLSProtocolVersion;
@property (readonly,copy) NSURLResponse * response;
@property (readonly,copy) NSString * networkProtocolName;
@property (readonly) int64_t countOfResponseHeaderBytesReceived;
-(id) jsinit;
@end
@protocol NSURLSessionTaskTransactionMetricsClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryInstanceExports<JSExport>
@end
@protocol NSURLSessionConfigurationNSURLSessionDeprecatedCategoryClassExports<JSExport>
+(NSURLSessionConfiguration *) backgroundSessionConfiguration: (NSString *) identifier ;
@end
@protocol NSURLSessionWebSocketTaskInstanceExports<JSExport>
@property (readonly) NSURLSessionWebSocketCloseCode closeCode;
@property (readonly,copy) NSData * closeReason;
@property () NSInteger maximumMessageSize;
JSExportAs(sendPingWithPongReceiveHandler,
-(void) jssendPingWithPongReceiveHandler: (JSValue *) pongReceiveHandler );
-(void) cancelWithCloseCode: (NSURLSessionWebSocketCloseCode) closeCode reason: (NSData *) reason ;
JSExportAs(receiveMessageWithCompletionHandler,
-(void) jsreceiveMessageWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(sendMessageCompletionHandler,
-(void) jssendMessage: (NSURLSessionWebSocketMessage *) message completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionWebSocketTaskClassExports<JSExport>
@end
@protocol NSURLSessionConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property () NSTimeInterval timeoutIntervalForResource;
@property () BOOL allowsCellularAccess;
@property (retain) NSURLCredentialStorage * URLCredentialStorage;
@property () NSURLSessionMultipathServiceType multipathServiceType;
@property () NSURLRequestCachePolicy requestCachePolicy;
@property () BOOL sessionSendsLaunchEvents;
@property () NSTimeInterval timeoutIntervalForRequest;
@property () NSURLRequestNetworkServiceType networkServiceType;
@property (getter=isDiscretionary) BOOL discretionary;
@property () SSLProtocol TLSMinimumSupportedProtocol;
@property () BOOL HTTPShouldUsePipelining;
@property () BOOL HTTPShouldSetCookies;
@property (copy) NSDictionary * HTTPAdditionalHeaders;
@property () NSInteger HTTPMaximumConnectionsPerHost;
@property () tls_protocol_version_t TLSMaximumSupportedProtocolVersion;
@property () SSLProtocol TLSMaximumSupportedProtocol;
@property () BOOL waitsForConnectivity;
@property () NSHTTPCookieAcceptPolicy HTTPCookieAcceptPolicy;
@property () BOOL allowsConstrainedNetworkAccess;
@property () BOOL shouldUseExtendedBackgroundIdleMode;
@property (copy) NSDictionary * connectionProxyDictionary;
@property (retain) NSHTTPCookieStorage * HTTPCookieStorage;
@property (retain) NSURLCache * URLCache;
@property (copy) NSArray * protocolClasses;
@property (copy) NSString * sharedContainerIdentifier;
@property (readonly,copy) NSString * identifier;
@property () tls_protocol_version_t TLSMinimumSupportedProtocolVersion;
@property () BOOL allowsExpensiveNetworkAccess;
-(id) jsinit;
@end
@protocol NSURLSessionConfigurationClassExports<JSExport, NSCopyingClassExports_>
+(id) jsnew;
+(NSURLSessionConfiguration *) backgroundSessionConfigurationWithIdentifier: (NSString *) identifier ;
+(NSURLSessionConfiguration *) ephemeralSessionConfiguration;
+(NSURLSessionConfiguration *) defaultSessionConfiguration;
@end
@protocol NSURLSessionInstanceExports<JSExport>
@property (copy) NSString * sessionDescription;
@property (readonly,copy) NSURLSessionConfiguration * configuration;
@property (readonly,retain) id delegate;
@property (readonly,retain) NSOperationQueue * delegateQueue;
-(NSURLSessionDataTask *) dataTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionStreamTask *) streamTaskWithNetService: (NSNetService *) service ;
-(NSURLSessionDownloadTask *) downloadTaskWithResumeData: (NSData *) resumeData ;
-(NSURLSessionUploadTask *) uploadTaskWithStreamedRequest: (NSURLRequest *) request ;
JSExportAs(flushWithCompletionHandler,
-(void) jsflushWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(getTasksWithCompletionHandler,
-(void) jsgetTasksWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(getAllTasksWithCompletionHandler,
-(void) jsgetAllTasksWithCompletionHandler: (JSValue *) completionHandler );
-(id) jsinit;
-(void) invalidateAndCancel;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL ;
-(NSURLSessionDownloadTask *) downloadTaskWithURL: (NSURL *) url ;
-(NSURLSessionStreamTask *) streamTaskWithHostName: (NSString *) hostname port: (NSInteger) port ;
JSExportAs(resetWithCompletionHandler,
-(void) jsresetWithCompletionHandler: (JSValue *) completionHandler );
-(NSURLSessionWebSocketTask *) webSocketTaskWithURL: (NSURL *) url protocols: (NSArray *) protocols ;
-(NSURLSessionUploadTask *) uploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData ;
-(void) finishTasksAndInvalidate;
-(NSURLSessionDownloadTask *) downloadTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionDataTask *) dataTaskWithURL: (NSURL *) url ;
-(NSURLSessionWebSocketTask *) webSocketTaskWithRequest: (NSURLRequest *) request ;
-(NSURLSessionWebSocketTask *) webSocketTaskWithURL: (NSURL *) url ;
@end
@protocol NSURLSessionClassExports<JSExport>
+(NSURLSession *) sharedSession;
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration delegate: (id) delegate delegateQueue: (NSOperationQueue *) queue ;
+(NSURLSession *) sessionWithConfiguration: (NSURLSessionConfiguration *) configuration ;
+(id) jsnew;
@end
@protocol NSURLSessionStreamTaskInstanceExports<JSExport>
-(void) closeRead;
-(void) stopSecureConnection;
JSExportAs(writeDataTimeoutCompletionHandler,
-(void) jswriteData: (NSData *) data timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
-(id) jsinit;
-(void) captureStreams;
-(void) closeWrite;
JSExportAs(readDataOfMinLengthMaxLengthTimeoutCompletionHandler,
-(void) jsreadDataOfMinLength: (NSUInteger) minBytes maxLength: (NSUInteger) maxBytes timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler );
-(void) startSecureConnection;
@end
@protocol NSURLSessionStreamTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionTaskMetricsInstanceExports<JSExport>
@property (readonly,assign) NSUInteger redirectCount;
@property (readonly,copy) NSDateInterval * taskInterval;
@property (readonly,copy) NSArray * transactionMetrics;
-(id) jsinit;
@end
@protocol NSURLSessionTaskMetricsClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryInstanceExports<JSExport>
JSExportAs(downloadTaskWithURLCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromFileCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL completionHandler: (JSValue *) completionHandler );
JSExportAs(dataTaskWithRequestCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(uploadTaskWithRequestFromDataCompletionHandler,
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithRequestCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(downloadTaskWithResumeDataCompletionHandler,
-(NSURLSessionDownloadTask *) jsdownloadTaskWithResumeData: (NSData *) resumeData completionHandler: (JSValue *) completionHandler );
JSExportAs(dataTaskWithURLCompletionHandler,
-(NSURLSessionDataTask *) jsdataTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionNSURLSessionAsynchronousConvenienceCategoryClassExports<JSExport>
@end
@protocol NSURLSessionDownloadTaskInstanceExports<JSExport>
-(id) jsinit;
JSExportAs(cancelByProducingResumeData,
-(void) jscancelByProducingResumeData: (JSValue *) completionHandler );
@end
@protocol NSURLSessionDownloadTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionDataTaskInstanceExports<JSExport>
-(id) jsinit;
@end
@protocol NSURLSessionDataTaskClassExports<JSExport>
+(id) jsnew;
@end
@protocol NSURLSessionTaskDelegateInstanceExports_<JSExport, NSURLSessionDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didSendBodyData: (int64_t) bytesSent totalBytesSent: (int64_t) totalBytesSent totalBytesExpectedToSend: (int64_t) totalBytesExpectedToSend ;
-(void) URLSession: (NSURLSession *) session taskIsWaitingForConnectivity: (NSURLSessionTask *) task ;
JSExportAs(URLSessionTaskWillBeginDelayedRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willBeginDelayedRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
JSExportAs(URLSessionTaskWillPerformHTTPRedirectionNewRequestCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task willPerformHTTPRedirection: (NSHTTPURLResponse *) response newRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didFinishCollectingMetrics: (NSURLSessionTaskMetrics *) metrics ;
JSExportAs(URLSessionTaskNeedNewBodyStream,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task needNewBodyStream: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didCompleteWithError: (NSError *) error ;
JSExportAs(URLSessionTaskDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session task: (NSURLSessionTask *) task didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionTaskDelegateClassExports_<JSExport, NSURLSessionDelegateClassExports_>
@end
@protocol NSURLSessionStreamDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session readClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session betterRouteDiscoveredForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session writeClosedForStreamTask: (NSURLSessionStreamTask *) streamTask ;
-(void) URLSession: (NSURLSession *) session streamTask: (NSURLSessionStreamTask *) streamTask didBecomeInputStream: (NSInputStream *) inputStream outputStream: (NSOutputStream *) outputStream ;
@end
@protocol NSURLSessionStreamDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) URLSession: (NSURLSession *) session didBecomeInvalidWithError: (NSError *) error ;
-(void) URLSessionDidFinishEventsForBackgroundURLSession: (NSURLSession *) session ;
JSExportAs(URLSessionDidReceiveChallengeCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session didReceiveChallenge: (NSURLAuthenticationChallenge *) challenge completionHandler: (JSValue *) completionHandler );
@end
@protocol NSURLSessionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol NSURLSessionWebSocketDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session webSocketTask: (NSURLSessionWebSocketTask *) webSocketTask didCloseWithCode: (NSURLSessionWebSocketCloseCode) closeCode reason: (NSData *) reason ;
-(void) URLSession: (NSURLSession *) session webSocketTask: (NSURLSessionWebSocketTask *) webSocketTask didOpenWithProtocol: (NSString *) protocol ;
@end
@protocol NSURLSessionWebSocketDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDownloadDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didWriteData: (int64_t) bytesWritten totalBytesWritten: (int64_t) totalBytesWritten totalBytesExpectedToWrite: (int64_t) totalBytesExpectedToWrite ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didResumeAtOffset: (int64_t) fileOffset expectedTotalBytes: (int64_t) expectedTotalBytes ;
-(void) URLSession: (NSURLSession *) session downloadTask: (NSURLSessionDownloadTask *) downloadTask didFinishDownloadingToURL: (NSURL *) location ;
@end
@protocol NSURLSessionDownloadDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
@protocol NSURLSessionDataDelegateInstanceExports_<JSExport, NSURLSessionTaskDelegateInstanceExports_>
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeDownloadTask: (NSURLSessionDownloadTask *) downloadTask ;
JSExportAs(URLSessionDataTaskWillCacheResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask willCacheResponse: (NSCachedURLResponse *) proposedResponse completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didBecomeStreamTask: (NSURLSessionStreamTask *) streamTask ;
JSExportAs(URLSessionDataTaskDidReceiveResponseCompletionHandler,
-(void) jsURLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveResponse: (NSURLResponse *) response completionHandler: (JSValue *) completionHandler );
-(void) URLSession: (NSURLSession *) session dataTask: (NSURLSessionDataTask *) dataTask didReceiveData: (NSData *) data ;
@end
@protocol NSURLSessionDataDelegateClassExports_<JSExport, NSURLSessionTaskDelegateClassExports_>
@end
#pragma clang diagnostic pop