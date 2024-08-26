//
//  KSSyncUtils.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 16/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDKCommons/SDKCommons.h>
#import <Task/KSTaskError.h>

#import "SyncLogger.h"
#import "KSConstants.h"
#import "ISyncableObject.h"
#import "KSMetadataConstants.h"

//Logging Macro...
#undef DEBUG

#ifdef DEBUG
    #define MyLog(x, ...) [[SyncLogger sharedInstance]logInfo:[NSString stringWithFormat:@"%s %d: " x, __FUNCTION__, __LINE__, ##__VA_ARGS__] withPrefix:@"DebugLog"];
#else
    #define MyLog(x, ...) 
#endif

#define LogInfo(prefix,formatString,...) \
[[SyncLogger sharedInstance]logInfo:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

#define LogError(prefix,formatString,...) \
[[SyncLogger sharedInstance]logError:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

#define LogDebug(prefix,formatString,...) \
[[SyncLogger sharedInstance]logDebug:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

#define LogWarning(prefix,formatString,...) \
[[SyncLogger sharedInstance]logWarning:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

#define LogTrace(prefix,formatString,...) \
[[SyncLogger sharedInstance]logTrace:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

#define LogFatal(prefix,formatString,...) \
[[SyncLogger sharedInstance]logFatal:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];


#define LogPerf(prefix,formatString,...) \
[[SyncLogger sharedInstance]logPerformance:[NSString stringWithFormat:formatString,##__VA_ARGS__] \
withPrefix:prefix];

//Convenience Macros...
#define POST_PHASE_NOTIFICATION(syncObject, phase, ctxt)\
\
do {\
    if ([syncObject respondsToSelector:@selector(syncSessionForObject:currentPhase:context:)]) {\
        [syncObject syncSessionForObject:syncObject\
                    currentPhase:phase\
                    context:ctxt];\
    }\
}while(0);

#define POST_STATE_NOTIFICATION(syncObject, fromState, toState, ctxt)\
\
do {\
    if ([syncObject respondsToSelector:@selector(syncSessionForObject:stateChangedFrom:to:context:)]) {\
        [syncObject syncSessionForObject:syncObject\
                    stateChangedFrom:fromState\
                    to:toState\
                    context:ctxt];\
    }\
}while(0);

#define POST_PROGRESS_NOTIFICATION(syncObject, phase, state, ctxt)\
\
do {\
if ([syncObject respondsToSelector:@selector(syncProgressEventNotification:currentPhase:currentState:context:)]) {\
    [syncObject syncProgressEventNotification:syncObject\
    currentPhase:phase\
    currentState:state\
    context:ctxt];\
    }\
}while(0);

#define IS_SYNC_POSSIBLE_NOW_ON_OBJECT(syncObject, errorPointer)\
    ([syncObject respondsToSelector:@selector(isSyncPermittedNow:)]) ? [syncObject isSyncPermittedNow:errorPointer] : NO

@class KSSDKObject;
@class KSSDKObjectRecord;
@class KSObjectMetadata;
@class KSObjectAttribute;
@class KSSDKUploadRequestMetadata;


@interface KSSyncUtils : NSObject

+ (NSString *)NSStringFromSyncSessionPhase:(SyncSessionPhase)phase;

+ (NSString *)NSStringFromSyncSessionState:(SyncSessionState)state;

+ (NSString *)NSStringFromSyncOptions:(KSStatsOptionsConstants)statsOptions;

/**
 * send sync progress event notification to listeners
 * @param object ISyncableObject
 * @param syncProgressEventListener ISyncProgressEventListener
 * @param syncPhase currentPhase
 * @param syncState currentState
 * @param context Data for Phases
 * @param syncProgressEventNotifier Event Notifier
 *
**/
+ (void) sendSyncProgressEventNotification:(id<ISyncableObject>)object
                 syncProgressEventListener:(id<ISyncProgressEventListener>)syncProgressEventListener
                              currentPhase:(SyncSessionPhase)syncPhase
                              currentState:(SyncSessionState)syncState
                                   context:(NSDictionary *)context
                           executorService:(dispatch_queue_t)syncProgressEventNotifier;

/**
 * Post Notification on Sync Start.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param stats sync stats
 *
 **/
+ (void) postSyncSessionStartEventNotification:(id<ISyncableObject>)object
                              currentphase:(SyncSessionPhase)phase
                              currentState:(SyncSessionState)state
                                     Stats:(Stats *)stats;

/**
 * Post Notification on Sync End.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param stats sync stats
 *
 **/
+ (void) postSyncSessionEndEventNotification:(id<ISyncableObject>)object
                            currentphase:(SyncSessionPhase)phase
                            currentState:(SyncSessionState)state
                                   Stats:(Stats *)stats;

/**
 * Post Notification on Upload Start.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param uploadStats upload stats
 *
 **/
+ (void) postUploadStartEventNotification:(id<ISyncableObject>)object
                             currentphase:(SyncSessionPhase)phase
                             currentState:(SyncSessionState)state
                              uploadStats:(SyncBatch *)uploadStats;

/**
 * Post Notification on Upload Progress.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param uploadStats upload stats
 *
 **/
+ (void) postUploadProgressEventNotification:(id<ISyncableObject>)object
                           currentphase:(SyncSessionPhase)phase
                           currentState:(SyncSessionState)state
                            uploadStats:(SyncBatch *)uploadStats;


/**
 * Post Notification on Upload End.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param stats sync stats
 *
 **/
+ (void) postUploadEndEventNotification:(id<ISyncableObject>)object
                           currentphase:(SyncSessionPhase)phase
                           currentState:(SyncSessionState)state
                                  Stats:(Stats *)stats;

/**
 * Post Notification on Download Start.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param downloadStats download stats
 *
 **/
+ (void) postDownloadStartEventNotification:(id<ISyncableObject>)object
                               currentphase:(SyncSessionPhase)phase
                               currentState:(SyncSessionState)state
                              downloadStats:(SyncBatch *)downloadStats;

/**
 * Post Notification on Download Progress.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param downloadStats download stats
 *
 **/
+ (void) postDownloadProgressEventNotification:(id<ISyncableObject>)object
                                  currentphase:(SyncSessionPhase)phase
                                  currentState:(SyncSessionState)state
                                 downloadStats:(SyncBatch *)downloadStats;

/**
 * Post Notification on Download End.
 * @param object ISyncableObject
 * @param phase currentPhase
 * @param state currentState
 * @param stats sync Stats
 *
 **/
+ (void) postDownloadEndEventNotification:(id<ISyncableObject>)object
                             currentphase:(SyncSessionPhase)phase
                             currentState:(SyncSessionState)state
                                    Stats:(Stats *)stats;

NSString * NSStringFromSyncSessionPhase(SyncSessionPhase phase);

NSString * NSStringFromSyncSessionState(SyncSessionState state);

NSString * NSStringFromSyncOptions(KSStatsOptionsConstants statsOptions);

/**
 * The method extracts the first error from a task error context and returns a sync exception for the same
 *
 * @param taskErrorContext The error context from which sync exception needs to be created
 * @return OfflineObjectsError
 */
+ (OfflineObjectsError *) getSyncExceptionFromTaskErrorContext:(NSDictionary *) taskErrorContext;

/**
 * The method extracts the first error from a task error context and returns a sync exception for the same
 *
 * @param taskError The error from task framework
 * @return BaseError
 */
+ (BaseError *) convertTaskErrorToBaseError:(KSTaskError *) taskError;

@end
