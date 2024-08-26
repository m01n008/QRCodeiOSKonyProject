//
//  SDKObjectServiceSync.h
//  KonySyncV2
//
//  Created by Vishnu Satis on 10/03/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSConstants.h"
#import "SDKObjectSync.h"

@interface SDKObjectServiceSync : NSObject

/**
 Preventing object creation for SDKObjectSync using init.
 */
- (instancetype)init __attribute__((unavailable("Use initWithName.")));

/**
 Initializing SDKObjectServiceSync
 
 @param name Contains the name of the SDKObjectService
 @param error The error thrown while getting the object
 @return Instance type of SDKObjectSyncService
 */
- (instancetype)initWithName:(NSString *)name
                       error:(NSError **)error;

/**
 Fetching sdk Object by Name provided by the user
 
 @param name Contains the name of the SDKObject
 @param error NSError object to be propagated in case of error
 @return Instance type of SDKObjectSync
 */
- (SDKObjectSync *)getSdkObjectByName:(NSString *)objectName
                                error:(NSError **)error;

/**
 Method to Start Object Service Level Sync
 
 @param options contains callbacks other than onSuccess and onFailure.
 @param onSuccess callback to be invoked on the Success of SyncSetup.
 @param onFailure callback to be invoked at the time of any error.
 @param onProgress callback to be invoked during sync.
 */
- (void)startSync:(NSDictionary <NSString *, id>*) options
        onSuccess:(KNYSuccessCompletionHandler)onSuccess
        onFailure:(KNYFailureCompletionHandler)onFailure
        onProgress:(KNYProgressCompletionHandler) onProgress;

/**
 * Rollback an objectService to its previous sync state
 * @param onSuccess onSuccess will be invoked on the Successfull rollback on objectService.
 * @param onFailure onFailure will be invoked if rollback failed on objectService.
 */
- (void)rollback:(KNYSuccessCompletionHandler)onSuccess
       onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Cancel an objectService sync session
 * @param onSuccess onSuccess will be invoked on the Successfull cancellation.
 * @param onFailure onFailure will be invoked for failure to cancel sync.
 */
- (void)cancelSync:(KNYSuccessCompletionHandler)onSuccess
         onFailure:(KNYFailureCompletionHandler)onFailure;

/**
 * Deletes data in an objectService's object tables.
 * @param onSuccess onSuccess will be invoked on the Successfull deletion of all table data in the objectService.
 * @param onFailure onFailure will be invoked on the deletion of all table data in the objectService isn't possible at that moment.
 */
- (void)clearDataWithOptions:(NSDictionary <NSString *, id>*)options
                   onSuccess:(KNYSuccessCompletionHandler)onSuccess
                   onFailure:(KNYFailureCompletionHandler)onFailure;

@end

