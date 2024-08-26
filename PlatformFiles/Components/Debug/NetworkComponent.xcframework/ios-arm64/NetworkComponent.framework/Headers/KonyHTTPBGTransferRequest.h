//
//  KonyHTTPBGTransferRequest.h
//  VM
//
//  Created by Praveen Basu Satyam on 18/06/14.
//  Copyright (c) 2014 Kony, Inc. All rights reserved.
//
//



#import "KonyHTTPRequest.h"

@interface KonyHTTPBGTransferRequest : KonyHTTPRequest {
}

@property (atomic) id nsurlSession;
@property (atomic) id nsurlSessionTask;
@property (atomic) id listenerDelegate;

//
- (id)initWithRequest:(id)HTTPRequest;
- (id)initWithSession:(id)session;
- (Boolean)supportsBackgroundTransfer;

//JS properties
- (id)backgroundTaskType ;
- (void)setbackgroundTaskType:(id)taskType;

//JSAPI
- (void)open:(NSArray *)args;
- (void)send:(NSArray *)args;
- (void)abort;
- (void)setRequestHeader:(NSArray *)args;
- (NSString *)getResponseHeader:(NSArray *)args;
- (NSDictionary *)getAllResponseHeaders;
//BGTrasfer

-(void) setTimeoutIntervalForRequest:(NSNumber*) timeOutInterval;
-(void) setTimeoutIntervalForResource:(NSNumber*) timeOutInterval;

-(NSNumber*) timeoutIntervalForRequest;
-(NSNumber*) timeoutIntervalForResource;


- (NSString *)getSession ;
- (NSNumber *)getTaskState;
- (void)resume;
- (void)suspend;

@end
