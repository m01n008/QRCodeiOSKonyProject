//
//  KonyHTTPRequestProxy.h
//  VM
//
//  Created by Praveen Basu Satyam on 25/06/14.
//  Copyright (c) 2014 Kony, Inc. All rights reserved.
//
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/CallBack.h>
#import "KonyHTTPRequestUploadProxy.h"
#import <CoreComponent/KonyBoolean.h>

/*
    NSSet *propSet =   [NSSet setWithArray:[NSArray arrayWithObjects:@"timeout",
                                            @"onReadyStateChange", @"backgroundTransfer",  nil]];

    NSSet *propSet = [NSSet setWithArray:[NSArray arrayWithObjects:@"status",
                                          @"statusText", @"response", @"responseType",
                                          @"readyState",nil]];

    return  [NSSet setWithArray:[NSArray arrayWithObjects:@"open", @"send", @"abort",
                                 @"setRequestHeader", @"getResponseHeader", @"getAllResponseHeaders", 
                                    @"resume", @"suspend",@"getSession", @"getTaskState",  nil]];

*/





@interface KonyHTTPRequestProxy : RuntimeObject


@property(strong, atomic) id HTTPRequest;


//JSPORPS
//Read/Write
- (NSNumber *)timeout;
- (void)setTimeout:(NSNumber *)newTimeout;
- (void)setOnReadyStateChange:(id)newOnReadyStateChange;
-(void)setDisableIntegrityCheck:(KonyBoolean*)disableIntegrityCheck;

//BGTransfer
- (id)backgroundTransfer;
- (void)setBackgroundTransfer:(id)state;


//Read only
- (int)status;
- (NSString *)statusText;
- (id)response;
- (int)integrityStatus;
- (int)responseType;
- (int)readyState;

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

-(void) setCacheConfig:(id)argument;
-(NSDictionary*)cacheConfig;

- (NSString *)getSession:(NSArray *)args;
- (NSNumber *)getTaskState:(NSArray *)args;
- (void)resume;
- (void)suspend;

//JS Event
- (void)notifyJSEvent:(NSString*)type config:(id)params ;
-(void) eventListenersCallbacks:(NSString *)currentEvent withValues:(NSArray *)values;
-(void) eventUploadListenersCallbacks:(NSString *)currentEvent withValues:(NSArray *)values;

@end
