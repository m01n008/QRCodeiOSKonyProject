//
//  SyncEngine.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 14/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSSDKObject.h"
#import "ISyncableObject.h"
#import "OfflineObjectsError.h"

@interface SyncEngine : NSObject

/**
 Returns a singleton instance of <code>SyncEngine</code>. If a instance of this
 class is needed, then this is ONLY way as the default <code>init</code> method 
 is marked unavailable.

 @return Singleton instance of <code>SyncEngine</code>
 */
+ (instancetype)sharedInstance;


- (id) init __attribute__((unavailable("Must use sharedInstance instead.")));

/**
 Indicates if the last setup session was successful. The default value is NO.
 */
@property (nonatomic, readonly, getter=isSetupSuccessful) BOOL setupSuccessful;

/**
 Treats boolean fields as numeric. The default value is YES.
 */
@property (nonatomic, readwrite, assign) BOOL treatBooleanFieldValuesAsNumeric;

/**
 Sets up the Sync infrastructure that is required in order to start a 
 sync session.
 
 @param objectServicesContext is the required list of objectservices
 @param options
 @param completion which gets invoked after the setup is done whether
        it is a success or failure.
 */
- (void)setupWithObjectServicesContext:(NSDictionary *)objectServicesContext
                               options:(NSDictionary *)options
                             onSuccess:(KNYSuccessCompletionHandler)successCompletion
                             onFailure:(KNYFailureCompletionHandler)failureCompletion;

/**
 Start a sync session for a given <code>ISyncableObject</code>.
 
 @param options
 @param object Object on which the sync is performed.
 @param completion Completion handler which gets invoked whether it is a 
        success or failure.
 @param onProgress Sync Progress Callback.
 */
//TODO: Move this to a private header file
- (void)startSyncSessionForObject:(NSDictionary <NSString *,id>*) options
                         onObject:(id <ISyncableObject>)object
                       completion:(CompletionHandler)completion
                       onProgress:(KNYProgressCompletionHandler)onProgress;

//TODO: Move this to a private header file
- (BOOL)handleDownloadOnSyncObject:(id <ISyncableObject>)syncObject
                 downloadedObjects:(NSArray <KSSDKObject *> *)dataObjects
              withResponseMetadata:(KSDownloadResponseMetadata *)metadata
                             error:(NSError **)error;

//TODO: Move this to a private header file
- (BOOL)handleUploadOnSyncObject:(id <ISyncableObject>) object
            uploadSuccessObjects:(NSArray <KSSDKObject *> *) successObjects
              withResponseMedata:(KSUploadResponseMetadata *) metadata
                           error:(NSError **)error;
/**
 Will drop all the tables of the given Application
 @return Will return the status of the call, true if success and false if it faces any error/Exception
 @param error Error Object to be percolated accordingly
 */
- (BOOL) dropAllApplicationTablesWithOptions:(NSDictionary *)options
                                       error:(OfflineObjectsError **)error;

/**
 This method is used from SetupManager to remove the running setup task
 */
- (void)setupTaskCompleted;

/**
 Cancel a sync session for a given <code>ISyncableObject</code>.
 @return Will return the status cancel, true if success and false fails
 @param error Error Object to be percolated accordingly
 */
- (BOOL)cancelSyncSessionForObject:(id <ISyncableObject>)syncObject
                             error:(OfflineObjectsError **)error;

/**
 This method is used from ApplicationSyncHelper to find out if application sync task is allowed,
 if so, application sync task will be added to running task queue.
 */
- (BOOL)checkAndSetFlagForApplicationSync:(OfflineObjectsError **)error;

/**
 This method is used from ApplicationSyncHelper to remove the  application sync task from running task queue.
 */
- (void)applicationSyncCompleted;

@end
