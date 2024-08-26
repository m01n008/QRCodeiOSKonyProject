//
//  KonyNSURLSessionManager.h
//
//  Created by Praveen Basu Satyam on 16/06/13
//  Copyright (c) 2014 Kony, Inc. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



@interface KonyNSURLSessionManager : NSObject 
{
    /*
     *** Wanted to keep these properties in background related classes but present class hierarchy does not support it.
     */
    float   timeoutIntervalForRequest;
    float   timeoutIntervalForResource;
}
@property (nonatomic, assign)float timeoutIntervalForRequest;
@property (nonatomic, assign)float timeoutIntervalForResource;
+ (id)sharedManager ;
- (void)setBackgroundSessionTimeIntervalForRequest:(float) intervalForRequest;
- (void)setBackgroundSessionTimeIntervalForResource:(float) intervalForResource;
- (NSURLSession *)backgroundSession;
- (id)getCompletionHandlerForSession:(id)session ;
- (void)removeCompletionHandlerForSession:(id)session ;
- (id)getBgTransferRequestForTask:(id)task ;
- (void)registerBgTransferRequest:(id)bgTransferRequest ;
- (void)deRegisterBgTransferRequest:(id)bgTransferRequest ;

- (void)application:(UIApplication *)application handleEventsForBackgroundURLSession:(NSString *)identifier
  completionHandler:(void (^)())completionHandler;

- (id)getSessionForIdentifier:(NSString*)sessionIdentifier ;
- (id)createSessionWithIdentifier:(NSString*)identifier ;
- (void)addBgTransferRequestToSystem:(id)task ;
- (void)removeBgTransferRequestFromSystem:(id)task ;

@end




