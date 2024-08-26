//
//  KSInternalConstants.h
//  KonySyncV2
//
//  Created by Archana Narahari on 19/12/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OfflineObjectsError;
@class Stats;

// Generic Constants
#define KNYCONSTANTS_TABLE_SEPARATOR @"_"

// Defines constants that are used across Sync code
#define KNYCONSTANTS_COMPLETION_HANDLER @"completionHandler"

//Class names for Setup
#define KNYCONSTANTS_SCHEMA_PARSER @"SchemaParser"
#define KNYCONSTANTS_SETUP_MANAGER  @"SetupManager"
#define KNYCONSTANTS_APPLICATION_SYNC @"ApplicationSync"
#define KNYCONSTANTS_DATABASE_SCHEMA_802 @"KSDatabaseSchema802"
#define KNYCONSTANTS_DATABASE_SCHEMA_804 @"KSDatabaseSchema804"
#define KNYCONSTANTS_METADATA_JSON_PARSER @"MetadataJSONParser"
#define KNYCONSTANTS_OBJECT_SERVICE_SETUP_TASK @"ObjectServiceSetupTask"
#define KNYCONSTANTS_GENERIC_DATA_FETCHER_TASK @"GenericDataFetcherTask"
#define KNYCONSTANTS_DATABASE_UPGRADE_MANAGER @"KSDatabaseUpgradeManager"
#define KNYCONSTANTS_OBJECT_SERVICE_METADATA_CONTEXT @"ObjectServiceMetadataContext"

//Input/Output parameters for Setup
#define KNYCONSTANTS_VERSION @"version"
#define KNYCONSTANTS_OLD_VERSION @"oldVersion"
#define KNYCONSTANTS_OBJECTSERVICE_URL @"url"
#define KNYCONSTANTS_HTTP_METHOD @"HTTPMethod"
#define KNYCONSTANTS_OBJECT_SERVICE_NAME @"objectServiceName"
#define KNYCONSTANTS_OBJECTSERVICE_METADATA_URL @"metadata_url"
#define KNYCONSTANTS_ROOT_METADATA_OBJECT @"rootMetadataObject"
#define KNYCONSTANTS_METADATA_JSON_STRING @"metadataJSONString"
#define KNYCONSTANTS_GENERIC_DATA_FETCHER_ERROR_KEY @"setupErrorInfo"
#define KNYCONSTANTS_OBJECT_SERVICES_CONTEXT @"objectServicesContext"
#define KNYCONSTANTS_IS_DELTA_CONTEXT_CHANGED @"isDeltaContextChanged"
#define KNYCONSTANTS_SHOULD_CREATE_OBJECT_TABLES @"shouldCreateObjectTables"

//Names of Sync Tasks
#define KNYCONSTANTS_SYNC_TASK @"SyncTask"
#define KNYCONSTANTS_SYNC_ENGINE @"SyncEngine"
#define KNYCONSTANTS_SYNC_UPLOAD_TASK @"KSSyncUploadTask"
#define KNYCONSTANTS_SYNC_DOWNLOAD_TASK @"SyncDownloadTask"
#define KNYCONSTANTS_BATCH_DOWNLOAD_TASK @"KSBatchDownloaderTask"
#define KNYCONSTANTS_APPLICATION_SYNC_HELPER @"ApplicationSyncHelper"

//Names of other classes used as tags for logging
#define KNYCONSTANTS_SDK_OBJECTSERVICE_SYNC @"SDKObjectServiceSync"
#define KNYCONSTANTS_KSSDKOBJECTSERVICE @"KSSDKObjectService"

//Names of generic subTasks
#define KNYCONSTANTS_NETWORK_TASK @"NetworkTask"

#define KNYCONSTANTS_SDKOBJECT_CREATION_TIME @"sdkObjectCreationTime"
#define KNYCONSTANTS_DOWNLOAD_BATCH_NUMBER @"DownloadBatchNumber"
#define KNYCONSTANTS_UPLOAD_BATCH_NUMBER @"UploadBatchNumber"

// For back compat, deprecated from 8.1
#define BATCH_SIZE @"BatchSize"

// Upload Payload Keys
#define KNYCONSTANTS_ECHO @"echo"
#define KNYCONSTANTS_ROW_ID @"rowId"
#define KNYCONSTANTS_METADATA @"metadata"
#define KNYCONSTANTS_CHECKSUM @"checksum"
#define KNYCONSTANTS__METADATA @"_metadata"
#define KNYCONSTANTS_SESSIONID @"sessionID"
#define KNYCONSTANTS_ABORT_ON_ERROR @"abortonError"
#define KNYCONSTANTS_HAS_MORE_RECORDS @"hasMoreRecords"
#define KNYCONSTANTS_DEFAULT_STARTING_RSN_TO_UPLOAD @(-1)
#define KNYCONSTANTS_UPLOAD_BATCH_PARAMS @"uploadBatchParams"

// Param Names
#define KNYCONSTANTS_ERRORS @"errors"
#define KNYCONSTANTS_SYNC_SERVER_URL @"syncServerURL"
#define KNYCONSTANTS_ARE_THERE_CHANGES_TO_UPLOAD @"areThereDeltaChanges"
#define KNYCONSTANTS_UPLOAD_ERRORS @"uploadErrors"
#define KNYCONSTANTS_UPLOAD_BATCH_ERRORS @"uploadBatchErrors"
#define KNYCONSTANTS_DOWNLOAD_ERRORS @"downloadErrors"
#define KNYCONSTANTS_DOWNLOAD_BATCH_ERRORS @"downloadBatchErrors"
#define KNYCONSTANTS_DATA_OBJECTS @"dataObjects"
#define KNYCONSTANTS_UPLOAD_RESPONSE_OBJECTS @"uploadObjects"
#define KNYCONSTANTS_UPLOAD_RESPONSE_METADATA @"uploadResponseMetadata"
#define KNYCONSTANTS_DELEGATE_TASK_COMMAND @"DelegateTaskCommand"
#define KNYCONSTANTS_RESPONSE_METADATA @"responseMetadata"
#define KNYCONSTANTS_SYNC_OBJECT @"SyncObject"
#define KNYCONSTANTS_DELTA_CONTEXT @"delta_context"
#define KNYCONSTANTS_BATCH_CONTEXT @"batch_context"
#define KNYCONSTANTS_CURRENT_OBJECT @"curobj"

#define KNYCONSTANTS_OBJECT_NAME_KEY_IN_DELTA_CONTEXT @"object_name"
#define KNYCONSTANTS_DOWNLOAD_RESPONSE_METADATA @"downloadResponseMetadata"
#define KNYCONSTANTS_OBJECT_DOWNLOAD_RESPONSE_MAP @"objectDownloadResponseMap"
#define KNYCONSTANTS_URL_KEYWORD @"url"
#define KNYCONSTANTS_REQUEST_BODY @"request_body"
#define KNYCONSTANTS_REQUEST_HEADERS @"request_headers"
#define KNYCONSTANTS_QUERY_PARAMS @"query_params"
#define KNYCONSTANTS_DATA_DICTIONARY @"dataDictionary"
#define KNYCONSTANTS_METADATA_OBJECT @"metadataObject"
#define KNYCONSTANTS_RESPONSE_METADATA @"responseMetadata"
#define KNYCONSTANTS_DOWNLOAD_METADATA @"downloadMetadata"
#define KNYCONSTANTS_UPLOAD_METADATA @"uploadMetadata"
#define KNYCONSTANTS_OBJECT_RECORDS @"object_records"
#define KNYCONSTANTS_OBJECT_GROUP @"objectgroup"
#define KNYCONSTANTS_OBJECT_NAME @"objectname"
#define KNYCONSTANTS_FILTER @"filter"
#define KNYCONSTANTS_GROUP_BY @"GROUP BY "
#define KNYCONSTANTS_DELTACONTEXT @"deltacontext"
#define KNYCONSTANTS_DOLLAR_FILTER @"$filter"
#define KNYCONSTANTS_DOLLAR_FILTER_EQUALS_TO @"$filter="
#define KNYCONSTANTS_DOLLAR_EXPAND @"$expand"
#define KNYCONSTANTS_DOLLAR_EXPAND_EQUALS_TO @"$expand="
#define KNYCONSTANTS_ODATASTRING @"odatastring"
#define KNYCONSTANTS_SYNC_OPTIONS @"syncOptions"
#define KNYCONSTANTS_RECORDS @"records"
#define KNYCONSTANTS_ERR_MESSAGE_WITH_DETAILS_FORMAT @"%@: %@"
#define KNYCONSTANTS_ERR_MESSAGE_FORMAT @"%@"
#define KNYCONSTANTS_CACHE_UPLOAD_ERRORS @"cacheUploadErrors"
#define KNYCONSTANTS_USERINFO @"userInfo"

//Key Constant
#define kName @"name"

//Delta context parsing
#define KNYCONSTANTS_DELTA @"delta"
#define KNYCONSTANTS_OBJS @"objs"

//Batch context constants
#define KNYCONSTANTS_BATCH @"bc"

//Skip Validation
#define SKIP_VALIDATION @"skipValidation"

#define MAX_PASS_COUNT_FOR_HIERARCHICAL_UPLOADS 10

typedef enum{
    SyncLevelObject,
    SyncLevelObjectService,
    SyncLevelApplication
}SyncLevel;

typedef enum {
    DelegateTaskCommandNone = 0,
    DelegateTaskCommandDataUpload,
    DelegateTaskCommandDataDownload
}DelegateTaskCommand;

typedef enum {
    KSSDKObjectRecordActionUpdate = 0,
    KSSDKObjectRecordActionCreate = 1,
    KSSDKObjectRecordActionPartialUpdate = 2,
    KSSDKObjectRecordActionDelete = 3,
    KSSDKObjectRecordActionCreateOrIgnore = 4,
    KSSDKObjectRecordActionAll = 5,
    KSSDKObjectRecordActionNone = 6,
    KSSDKObjectRecordActionRead = 7,
    KSSDKObjectRecordActionDeferredAndDontTrackIntermediateUpdates = 70,
    KSSDKObjectRecordActionDontTrackIntermediateUpdates = 80,
    KSSDKObjectRecordActionDeferredUpdate = 90,
    KSSDKObjectRecordActionDeferredCreate = 91,
    KSSDKObjectRecordActionDeferredDelete = 93,
    KSSDKObjectRecordActionUnknown = KSSDKObjectRecordActionUpdate
}KSSDKObjectRecordAction;

typedef enum {
    KSSDKObjectActionUpdate = 0,
    KSSDKObjectActionCreate,
    KSSDKObjectActionCreateOrIgnore,
    KSSDKObjectActionRead,
    KSSDKObjectActionPartialUpdate,
    KSSDKObjectActionDelete,
    KSSDKObjectActionNone = KSSDKObjectActionUpdate
}KSSDKObjectAction;

typedef enum {
    KSSDKObjectModeOffline = 0,
    KSSDKObjectModeOnline
}KSSDKObjectMode;

typedef enum {
    SyncSessionStateNotStarted = 0,
    SyncSessionStateStarted,
    SyncSessionStatePausing,
    SyncSessionStatePaused,
    SyncSessionStateResuming,
    SyncSessionStateStopping,
    SyncSessionStateEnded,
    SyncSessionStateErrored,
    SyncSessionStateProgress
}SyncSessionState;

//TODO: Add more phases as required...
//What about Errors?
typedef enum {
    SyncSessionPhaseUnknown = 0,
    
    //Setup session start
    SyncSessionPhaseSetup,
    
    //Upload session start
    SyncSessionPhaseUpload,
    
    //Upload Network Calls
    SyncSessionPhaseUploadNetworkOperation,
    
    //Response processing
    SyncSessionPhaseUploadObjectProcessing,
    
    // Commiting to DB
    SyncSessionPhaseUploadPersistOperation,
    
    //Download Session start
    SyncSessionPhaseDownload,
    
    //Download Network Calls
    SyncSessionPhaseDownloadNetworkOperation,
    
    //Response processing
    SyncSessionPhaseDownloadObjectProcessing,
    
    //Commiting to DB
    SyncSessionPhaseDownloadPersistOperation,
    
    //Sync Session
    SyncSessionPhaseSync
    
}SyncSessionPhase;

typedef enum{
    Ascending,
    Descending
}KSOrderBySortingType;

typedef enum{
    Select
}KSSQLQueryType;

//Options for Sync Stats
typedef enum {
    True,
    False,
    All
} KSStatsOptionsConstants;

//enum for binary status
typedef enum {
    BinaryStatusPending = 2,
    BinaryStatusSuccess = 4,
    BinaryStatusErrored = 8
} BinaryStatus;

/**
 Generic completion handler which gets invoked after a specific
 action is done (for eg: Sync start session).
 
 @param error If an error occurred during the action, then the error will be
 non-null and will indicate the error.
 */
typedef void(^CompletionHandler)(NSDictionary<NSString *, id> *object, OfflineObjectsError *error);

extern NSString* getSyncLevelAsString(SyncLevel syncLevel);

@interface KSInternalConstants : NSObject

@end
