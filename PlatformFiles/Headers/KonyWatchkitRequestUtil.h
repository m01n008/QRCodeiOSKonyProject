//
//  KonyWatchkitRequestUtil.h
//  VMAppWithKonylib
//
//  Created by SaiAnuhya Kodimela on 18/05/15.
//
//

#import <Foundation/Foundation.h>
#import "KonyDataCache.h"
#import <WatchConnectivity/WCSession.h>
/*
 
 
 ---KonyWatchkitRequestUtil is a utility class to fetch data from either readily available cache or from parent application

 * (void) fetchDataSetWithId : (NSString *) datasetId onCompletion : (void(^)(NSError * status,id data))callbackBlock cachepolicy : (int) cachepolicy
 
    datasetId    :
    onCompletion : it referes to the callback block you want to execute depending on reply from parent
                   the block should take NSError and some object as parameters
    cachepolicy  : it refers to the method of fetching data
                   If you specify 1, then data is directly fetched from cache if no cache available data is fetched from parent application
                   If you specify 2, then the lastest of data between cache and parent application is fetched
                   // I have doubt here??????????
                   if none of the above , then data is fetched from parent application
 
 * (void) fetchDataSetWithId : (NSString *) datasetId userInfo : (NSDictionary *)userInfo onCompletion : (void(^)(NSError * status,id data))callbackBlock cachepolicy : (int) cachepolicy
   datasetId    :
   userInfo     : it is a dictionary of information that user wants to send to parent
   onCompletion : it referes to the callback block you want to execute depending on reply from parent
                  the block should take NSError and some object as parameters
   cachepolicy  : it refers to the method of fetching data
                  If you specify 1, then data is directly fetched from cache if no cache available data is fetched from parent application
                  If you specify 2, then the lastest of data between cache and parent application is fetched
                  // I have doubt here??????????
                  if none of the above , then data is fetched from parent application
 
 
 
 *  (void) fetchAndUpdateController : (NSString *) datasetId controller : (id) controller onCompletion :(void(^)(NSError * status,id data))callbackBlock cachepolicy : (int) cachepolicy
     datasetId    :
     controller   : it refers to the controller object  which a user wants to update information to.
                    onCompletion : it referes to the callback block you want to execute depending on reply from parent
                    the block should take NSError and some object as parameters
     cachepolicy  : it refers to the method of fetching data
                    If you specify 1, then data is directly fetched from cache if no cache available data is fetched from parent application
                    If you specify 2, then the lastest of data between cache and parent application is fetched
                    // I have doubt here??????????
                    if none of the above , then data is fetched from parent application
 
 *  (void) fetchAndUpdateController : (NSString *) datasetId controller : (id) controller userInfo : (NSDictionary *)userInfo onCompletion :(void(^)(NSError * status,id data))callbackBlock cachepolicy : (int) cachepolicy
     datasetId    :
     controller   : it refers to the controller object  which a user wants to update information to.
     userInfo     : it is a dictionary of information that user wants to send to parent
     onCompletion : it referes to the callback block you want to execute depending on reply from parent
                    the block should take NSError and some object as parameters
     cachepolicy  : it refers to the method of fetching data
                    If you specify 1, then data is directly fetched from cache if no cache available data is fetched from parent application
                    If you specify 2, then the lastest of data between cache and parent application is fetched
                   // I have doubt here??????????
                    if none of the above , then data is fetched from parent application
 
 *  (instancetype) sharedInstance
    this method returns shared instance of KonyWatchkitRequestUtil object
 
 *  (id) init
    you can initialize your own object using init method
 
 */

typedef enum
{
    KonyDataCachePolicyOnlyFromLocal = 1,
    KonyDataCachePolicyFetchLatest ,
    KonyDataCachePolicyOnlyFromRemote ,
    KonyDataCachePolicyNoCache
}cachePolicies;

@interface KonyWatchkitRequestUtil : NSObject <WCSessionDelegate>

- (id)init;
+ (instancetype)sharedInstance;

- (void)fetchDataWithRequestID:(NSString *)requestID
                  onCompletion:(void(^)(NSError * status,id data))callbackBlock
                   cachePolicy:(cachePolicies)cachePolicy;

- (void)fetchDataWithRequestID:(NSString *)requestID
                      userInfo:(NSDictionary *)userInfo
                  onCompletion:(void(^)(NSError * status,id data))callbackBlock
                   cachePolicy:(cachePolicies)cachePolicy;

- (void)fetchAndUpdateControllerWithRequestID:(NSString *)requestID
                                   controller:(id)controller
                                 onCompletion:(void(^)(NSError * status,id data))callbackBlock
                                  cachePolicy:(cachePolicies)cachePolicy;

- (void)fetchAndUpdateControllerWithRequestID:(NSString *)requestID
                                   controller:(id)controller
                                     userInfo:(NSDictionary *)userInfo
                                 onCompletion:(void(^)(NSError * status,id data))callbackBlock
                                  cachePolicy:(cachePolicies)cachePolicy;

@end



