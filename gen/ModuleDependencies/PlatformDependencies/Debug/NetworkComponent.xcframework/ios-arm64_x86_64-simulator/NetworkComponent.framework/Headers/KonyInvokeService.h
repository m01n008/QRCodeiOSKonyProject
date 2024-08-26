//
//  KonyInvokeService.h
//  VM
//
//  Created by Naresh Kodumuri on 26/04/17.
//
//

#import <Foundation/Foundation.h>
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/CallBack.h>
#import <CoreComponent/KonyHeader.h>
#import "KonyHttpRequestDelegate.h"
#import <CoreComponent/KonyWrapperDS.h>
#import <CoreComponent/KonyApplicationContext.h>
#import <CoreComponent/ClientTrustManager.h>
//#import "KonyURLSessionManager.h"
/************************************  InvokeService Download  ************************************/

#define NETWORKCALL_USERCANCELLED_MSG_DEFAULTVALUE					@"User Cancelled"
#define NETWORKCALL_USERCANCELLED_NETWORK_EXCEPTION_DEFAULTVALUE	@"Network Exception"
#define NETWORKCALL_USERCANCELLED_MSG_KEY							@"platform.networkcall.usercancelledexceptionmsgkey"
#define NETWORKCALL_USERCANCELLED_NETWORK_EXCEPTION_KEY				@"platform.networkcall.usercancelledexceptionkey"

@interface InvokeService : NSObject {
    //This object keeps the state of integrity check params that was used while creating the request checksum..
    NSDictionary *integrityCheckParamsDict;
    HttpResponseType          responseType;     //to store the MIME type of the response, needed for response checksum calculation.
    NSError*			 error;
    BOOL				workInProgress;
    NSMutableDictionary* widgetContent;
    
    NSInteger statCode;
    NSString *urlStr;
    NSString *cookieStr;
    NSDictionary *headerFlds;
}

@property (nonatomic, strong) NSTimer *networkTimeoutTimer;
@property (nonatomic, retain) NSError *error;
@property (nonatomic, strong) NSMutableData *requestData;
@property (nonatomic, strong) NSMutableURLRequest* request;
@property (nonatomic, strong) NSURL*	url;
@property (nonatomic, assign) BOOL	workInProgress;
@property (nonatomic, retain) NSString *urlStr;
@property (nonatomic, retain) NSString *cookieStr;
@property (nonatomic, retain) NSDictionary *headerFlds;
@property (nonatomic, readonly) NSInteger statCode;
@property (nonatomic)  BOOL disableIntegrityCheck;


-(id)	    initWithUrl:(NSString*)	urlToDownload;
-(NSMutableDictionary *) sendRequest : (NSString*) httpBodyString httpHeaders:(NSMutableDictionary*)headerFields requestType:(NSString*) requestType konyError:(NSUInteger*) error networkError: (NSError**) networkError timeOut: (int) timeOut integrityCheck:(BOOL)integrityCheck;
- (void) initWidgetContent;
- (void) createNetworkTimer: (NSNumber*) timeOutInterval;
- (void) resetNetworkTimer;
- (void) timeout:(NSTimer*)theTimer;
- (void) extractValuesFromResponse:(NSHTTPURLResponse *) resp;
- (NSMutableDictionary*) getHeadersDictionary;
+ (BOOL)validateReceivedCheckSum:(NSString *)receivedCheckSum
                 forResponseData:(NSData *)responseData
usingRequestTimeIntegrityParamsDict:(NSDictionary *)integrityParamsDict
                withResponseType:(HttpResponseType)responseType
                andPassThrough:(NSString*)isPassThrough;

@end

/************************************  Asynchronous InvokeService Download    ************************************/

@interface AsyncConnection : NSObject<KonyHttpRequestDelegate> {
    
    BOOL workInProgress;
    //This object keeps the state of integrity check params that was used while creating the request checksum..
    NSDictionary *integrityCheckParamsDict;
    HttpResponseType responseType;     //to store the MIME type of the response, needed for response checksum calculation.
    double connectionId;
    id infoDict;
    
    //returnData
    NSInteger statCode;
    NSString *urlStr;
    NSString *cookieStr;
    NSDictionary *headerFlds;
    NSDate *requestStartDate;
    
    NSMutableData			*requestData;
    NSURL					*url;
    CallBack			*luaCallBack;
    NSURLConnection		*conn;
    NSMutableURLRequest	*request;
    NSTimer               *networkTimeoutTimer;
    
}

@property (nonatomic, strong) NSMutableData *requestData;
@property (nonatomic, strong) NSURL *url;
@property (nonatomic, assign) BOOL workInProgress;
@property (nonatomic, strong) CallBack *luaCallBack;
@property (nonatomic, strong) NSURLConnection *conn;
@property (nonatomic, strong) NSMutableURLRequest *request;
@property (nonatomic, strong) NSTimer *networkTimeoutTimer;
@property (nonatomic, assign) double connectionId;
@property (nonatomic, retain) id infoDict;

@property (nonatomic, retain) NSString *urlStr;
@property (nonatomic, retain) NSString *cookieStr;
@property (nonatomic, retain) NSDictionary *headerFlds;
@property (nonatomic, retain) NSString *serviceID;
@property (nonatomic, strong) NSURLSessionDataTask *task;
@property (nonatomic)  BOOL disableIntegrityCheck;

-(id) initWithUrl:(NSString*)	urlToDownload;

-(void) sendRequest : (NSString*) httpBodyString requestType:(NSString*) requestType CallBack:(id) callBack HeaderFields:(NSDictionary*) headerFields timeOut : (int) timeOut infoDict: (id) info serviceID:(NSString*) serviceID integrityCheck:(BOOL)integrityCheck;

-(void) executeTheClosure:(NETWORK_STATUS)status luaTable:(id) luaTable;

-(void) sendStatus:(NETWORK_STATUS) status internalError:(int) internalError networkError:(NSError*) networkError;

-(void) cleanUp;

-(void) notifyConnectionManager;

-(void) cancelConnection;

-(void) notifyUserCancelled;

- (void) createNetworkTimer: (NSNumber*) timeOutInterval;
- (void) resetNetworkTimer;
- (void) timeout:(NSTimer*)theTimer;

- (void) extractValuesFromResponse:(NSHTTPURLResponse *) resp;
- (NSMutableDictionary*) getHeadersDictionary;



@end

@interface AsyncConnectionManager : NSObject

@property (nonatomic, strong) NSMutableDictionary *connectionMap;

-(void) cancelConnection:(double) connectionId notifyUser:(BOOL) shouldNotify;
-(double) addConnection:(AsyncConnection*) connection;
-(void) notifyFinishNetworkCall:(AsyncConnection*) connection;
-(BOOL) isAsyncConnectionInProgress;
-(void) cancelAllConnections;
-(BOOL) handleInvalidURL: (NSString*) urlString luaCallback: (CallBack*) luaCallback infoDict:(id)info;
+(void) executeTheClosure:(CallBack*) luaCallBack status:(NETWORK_STATUS)status luaTable:(id) table infoDict: (id) info;
@end
