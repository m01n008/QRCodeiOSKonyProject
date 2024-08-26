//
//  ISyncableObject.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSMetadataConstants.h"
#import "IUploadableObject.h"
#import "ISyncProgressEventListener.h"
#import "IPersistableObject.h"
#import "IDownloadableObject.h"

@protocol ISyncListener;
@protocol ISyncProgressEventListener;

@protocol ISyncableObject <IUploadableObject,
                           IDownloadableObject,
                           IPersistableObject>

@required

@property (nonatomic) KSOperationType operationType;

//(Un)subscription methods
- (BOOL)subscribeForSyncSessionUpdates:(id <ISyncListener>)listener;
- (BOOL)unsubscribeForSyncSessionUpdates:(id <ISyncListener>)listener;
- (BOOL)unsubscribeAllSyncSessionUpdates;

//Progress (Un) subscription methods
- (void)subscribeForSyncProgressEvents:(id <ISyncProgressEventListener>)listener;
- (void)unsubscribeForSyncProgressEvents:(id <ISyncProgressEventListener>)listener;
- (BOOL)areThereAnyListenersForSyncProgressEvents;

//Other methods

- (void)clearObjectsToPersist;
- (BOOL)isSyncPermittedNow:(OfflineObjectsError **)error;

@optional

//Methods to post notifications to the Sync Object

//Method to post the state notifications to the Sync Object
- (void)syncSessionForObject:(id <ISyncableObject>)syncObject
            stateChangedFrom:(SyncSessionState)fromState
                          to:(SyncSessionState)toState
                     context:(NSDictionary *)context;


//Method to post the phase notifications to the Sync Object
- (void)syncSessionForObject:(id <ISyncableObject>)syncObject
                currentPhase:(SyncSessionPhase)syncPhase
                     context:(NSDictionary *)context;

//Method to post the sync progress notifications to the Sync Object
- (void)syncProgressEventNotification:(id <ISyncableObject>)syncObject
                currentPhase:(SyncSessionPhase)syncPhase
                currentState:(SyncSessionState)syncState
                     context:(NSDictionary *)context;


//Returns list of object names that are part of this service
- (NSArray<NSString *> *)getObjectNames;

@end
