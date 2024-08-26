//
//  KonyURLSessionManager.h
//  VM
//
//  Created by Naresh Kodumuri on 04/04/17.
//
//

#import <Foundation/Foundation.h>
#import "KonyHttpRequestDelegate.h"

/*
 KonyURLSessionManager - creates NSURLSession and handles Task 
 */

@interface KonyURLSessionManager : NSObject

+ (id)sharedManager;

- (NSURLSessionDataTask *)sessionDataTaskForURLRequest:(NSMutableURLRequest *)request
                                 taskSender:(id)reference;

- (void)setTaskInitiator:(id<KonyHttpRequestDelegate>)taskInitiator forSessionTask:(NSURLSessionTask *)sessiontask;

- (id<KonyHttpRequestDelegate>) taskInitiatorForSessionTask:(NSURLSessionTask *)sessiontask;

- (void)removeTaskInitiatorForSessionTask:(NSURLSessionDataTask *)sessiontask;



@end
