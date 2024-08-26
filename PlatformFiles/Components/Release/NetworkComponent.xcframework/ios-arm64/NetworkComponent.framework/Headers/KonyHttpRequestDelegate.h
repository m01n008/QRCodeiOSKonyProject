//
//  KonyHttpRequestDelegate.h
//  VM
//
//  Created by Naresh Kodumuri on 10/04/17.
//
//

#import <Foundation/Foundation.h>

/*
 KonyHttpRequestDelegate - Common protocol for all Network requests
 */


@protocol KonyHttpRequestDelegate <NSObject>

@required
-(void) dataTaskReceivedData:(NSData * _Nonnull)data;
-(void) dataTaskStartedReceivingReponse:(NSURLResponse * _Nonnull)response_ withCompletionHandler:(nullable void (^)(NSURLSessionResponseDisposition disposition))completionHandler;
-(void) dataTaskcompletedWithError:(nullable NSError * ) error;
@optional

-(void) performHttpRedirection:(NSHTTPURLResponse * _Nonnull)urlResponse withNewRequest:(NSURLRequest * _Nonnull)request andCompletionHandler:(nullable void (^)(NSURLRequest * _Nonnull))completionHandler;
-(void) handleTaskChallenge:(NSURLAuthenticationChallenge * _Nonnull)challenge withCompletionHandler:(nullable void (^)(NSURLSessionAuthChallengeDisposition disposition, NSURLCredential * _Nonnull credential))completionHandler;
-(NSURLCacheStoragePolicy) getCacheStoragePolicy;


@end
