#import <CoreComponent/CallBack.h>
#import "KonyFormData.h"
#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSRawBytes.h>
#import "KonyMultipartInputStream.h"
#import "KonyHTTPIntegrityManager.h"
#import "KonyHttpRequestDelegate.h"
#import <NetworkComponent/KonyAuthChallengesHandler.h>

@interface KonyHTTPRequest : RuntimeObject <NSURLConnectionDelegate, NSURLConnectionDataDelegate,KonyHttpRequestDelegate> {
    @public
    NSMutableURLRequest *urlRequest;
    //This object keeps the state of integrity check params that were used while creating the checksum for request..
    NSDictionary        *integrityCheckParamsDict;
    int                 integrityStatus;
    BOOL                multipartFileUpload;    //to check if a file was uploaded as part of a http request in multipart.
    NSDictionary        *responseHeaders;
    BOOL                 async;
    NSNumber            *timeout;
    int                  status;
    NSString            *statusText;
    int                  responseType;
    NSMutableData       *response;
    int                  readyState;
    CallBack            *onReadyStateChange;
    long long expectedResponseDataLength;
}



@property (atomic) id jsEventsNotifier;
@property (atomic) NSString* userName;
@property (atomic) NSString* password;
@property (nonatomic) NSURLConnection     *connection;
@property (nonatomic)  BOOL disableIntegrityCheck;
@property (nonatomic, retain) NSDictionary *cacheConfig;
// Properties related to NSURLSession

@property (nonatomic,strong) NSURLSessionDataTask *task;
@property (nonatomic,strong) NSDate *requestBeginDate;




- (void)setTimeout:(NSNumber *)newTimeout;
- (NSNumber *)timeout;
- (int)status;
- (NSString *)statusText;
/* is this needed? why set responseType */
- (void)setResponseType:(int)newResponseType;
- (int)responseType;
- (id)response;
- (int)integrityStatus;
- (int)readyState;
- (void)setOnReadyStateChange:(id)newOnReadyStateChange;
-(void)setDisableIntegrityCheckProp:(BOOL)disableIntegrityCheck;
- (void)clear;
- (void)openWithRequestMethod:(NSString *)requestMethod
                          url:(NSString *)url
                        async:(BOOL)async_
                     userName:(NSString *)userName
                     password:(NSString *)password;
- (void)isetRequestHeader:(NSString *)header value:(NSString *)value;
- (void)prepareForPostData:(KonyFormData *)formData ;
- (void)sendWithData:(id)data;
- (void)abort;
- (NSString *)igetResponseHeader:(NSString *)headerField;
- (NSDictionary *)getAllResponseHeaders;
- (void)connection:(NSURLConnection *)connection
    willSendRequestForAuthenticationChallenge:(NSURLAuthenticationChallenge *)challenge;
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response;

//JSAPI
- (void)open:(NSArray *)args;
- (void)send:(NSArray *)args;
- (void)abort;
- (void)setRequestHeader:(NSArray *)args;
- (NSString *)getResponseHeader:(NSArray *)args;
- (NSDictionary *)getAllResponseHeaders;


//Notifier registration
- (void)registerJSEventsNotifierObject:(id)obj;
- (id)getOnReadyStateChange;


//added the method declarations in .h file for calling it from the subclass

- (void)eventListenersCallbacks:(NSString *)currentEvent withValues:(id)values;
- (void)eventUploadListenersCallbacks:(NSString *)currentEvent withValues:(id)values;
- (void)setReadyState:(int)newState;
- (void)handleCheckSumValidation;
- (void)unprotectCallbacks;
- (void)setResponseTypeForMimeType:(NSString *)MIMEType;





@end


@interface KonyHTTPRequest ()

-(KonyMultipartInputStream *)uploadRawBytes:(JSRawBytes *)rawBytes withFileName:(NSString *)fileName withStream : (KonyMultipartInputStream *)body;
- (void)uploadJSON:(id)JSONdata;
- (void)processPostRequest:(id)data;
@property KonyMultipartInputStream *stream;

@end
