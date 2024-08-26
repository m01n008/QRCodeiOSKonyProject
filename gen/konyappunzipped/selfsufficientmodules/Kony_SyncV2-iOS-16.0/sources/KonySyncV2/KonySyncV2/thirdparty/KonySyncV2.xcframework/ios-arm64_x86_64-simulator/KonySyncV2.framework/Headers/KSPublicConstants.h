//
//  Header.h
//  KonySyncV2
//
//  Created by Satya Eedara on 07/11/17.
//  Copyright © 2017 Kony. All rights reserved.
//  Defines constants that are exposed to end user through offline objects API input and response objects.
//

#import <Foundation/Foundation.h>

//Options for OfflineObjects Api
#define STATUS @"status"

// Constants for Config Policies and Sync Options
#define KNYCONSTANTS_UPLOAD_TAG @"upload"
#define KNYCONSTANTS_FULL_SYNC @"fullSync"
#define KNYCONSTANTS_SYNC_TYPE @"syncType"
#define KNYCONSTANTS_DOWNLOAD_TAG @"download"
#define KNYCONSTANTS_UPLOAD_ONLY @"uploadOnly"
#define KNYCONSTANTS_DOWNLOAD_ONLY @"downloadOnly"
#define KNYCONSTANTS_GET_SYNC_STATS @"getSyncStats"

//Application Sync constants
#define KNYCONSTANTS_APPLICATION_SYNC_MODE @"syncMode"
#define KNYCONSTANTS_APPLICATION_SYNC_PARALLEL @"parallel"
#define KNYCONSTANTS_APPLICATION_SYNC_SEQUENTIAL @"sequential"
#define KNYCONSTANTS_APPLICATION_SYNC_OBJECTSERVICES_OPTIONS @"objectServicesOptions"
#define KNYCONSTANTS_APPLICATION_SYNC_SUCCESS_RESPONSE @"successResponse"
#define KNYCONSTANTS_APPLICATION_SYNC_FAILURE_RESPONSE @"failureResponse"
#define KNYCONSTANTS_APPLICATION_SYNC_DEFAULT_MODE KNYCONSTANTS_APPLICATION_SYNC_PARALLEL

// Constants for SYNC ERROR propagation
#define KNYCONSTANTS_OBJECT @"object"
#define KNYCONSTANTS_ERRMSG @"errmsg"
#define KNYCONSTANTS_OPSTATUS @"opstatus"
#define KNYCONSTANTS_CALLSTACK @"callStack"
#define KNYCONSTANTS_SYNC_ERRORS @"syncErrors"
#define KNYCONSTANTS_OBJECT_SERVICE @"objectService"
#define KNYCONSTANTS_UPLOAD_BATCH_SIZE @"uploadBatchSize"
#define KNYCONSTANTS_DOWNLOAD_BATCH_SIZE @"downloadBatchSize"
#define KNYCONSTANTS_IS_INCREMENTAL_ENABLED @"incrementalSetup"
#define KNYCONSTANTS_DEVICE_DB_ENCRYPTION_KEY @"deviceDbEncryptionKey"
#define KNYCONSTANTS_SYNC_UPLOAD_QUERY_PARAMS @"uploadRequestQueryParams"
#define KNYCONSTANTS_SYNC_DOWNLOAD_QUERY_PARAMS @"downloadRequestQueryParams"
#define KNYCONSTANTS_SYNC_PENDING_RECORDS @"pendingSyncRecords"


//Sync Progress Constants
#define KNYCONSTANTS_PHASE @"phase"
#define KNYCONSTANTS_STATE @"state"
#define KNYCONSTANTS_UPLOADED_RECORDS @"totalUploadedRecords"
#define KNYCONSTANTS_DOWNLOADED_RECORDS @"totalDownloadedRecords"
#define KNYCONSTANTS_NUMBER_OF_OBJECTS_TO_SYNC @"totalObjectsToSync"
#define KNYCONSTANTS_TOTAL_RECORDS_TO_UPLOAD @"totalRecordsToUpload"

// Constants for SyncStats
#define KNYCONSTANTS_NAME @"name"
#define KNYCONSTANTS_STATS_KEY @"syncStats"
#define KNYCONSTANTS_START_TIME @"startTime"
#define KNYCONSTANTS_BATCH_NUMBER @"batchNumber"
#define KNYCONSTANTS_UPLOAD_STATS @"uploadStats"
#define KNYCONSTANTS_DOWNLOAD_STATS @"downloadStats"
#define KNYCONSTANTS_NUMBER_OF_RECORDS @"numberOfRecords"
#define KNYCONSTANTS_SYNC_ELAPSED_TIME @"syncElapsedTime"
#define KNYCONSTANTS_OBJECT_SERVICE_NAME @"objectServiceName"
#define KNYCONSTANTS_REQUEST_CREATION_TIME @"requestCreationTime"
#define KNYCONSTANTS_NETWORK_DURATION_TIME @"networkDurationTime"
#define KNYCONSTANTS_RESPONSE_PARSING_TIME @"responseParsingTime"
#define KNYCONSTANTS_DATA_PERSISTANCE_TIME @"dataPersistanceTime"
#define KNYCONSTANTS_TOTAL_RECORDS_SYNCED @"numberOfRecordsSynced"
#define KNYCONSTANTS_TOTAL_UPLOADED_RECORDS @"totalUploadedRecords"
#define KNYCONSTANTS_TOTAL_DOWNLOADED_RECORDS @"totalDownloadedRecords"

//Constants for Sync Download
#define KNYCONSTANTS_DOWNLOAD_RECONCILIATION_REQUIRED @"downloadReconciliationRequired"

//Constants for CRUD
#define KNYCONSTANTS_ORDER_BY_ASCENDING @"ASC"
#define KNYCONSTANTS_ORDER_BY_DESCENDING @"DESC"
#define KNYCONSTANTS_ORDER_BY_ASCENDING_IGNORECASE @"ASC_IGNORECASE"
#define KNYCONSTANTS_ORDER_BY_DESCENDING_IGNORECASE @"DESC_IGNORECASE"
#define KNYCONSTANTS_TRACK_CHANGES @"trackChanges"
#define KNYCONSTANTS_MARK_FOR_UPLOAD @"markForUpload"
#define KNYCONSTANTS_CRUD_OPTION_DISTINCT @"distinct"
#define KNYCONSTANTS_CRUD_OPTION_ORDERBY_MAP @"orderByMap"
#define KNYCONSTANTS_CRUD_OPTION_PRIMARY_KEYS @"primaryKeys"
#define KNYCONSTANTS_CRUD_OPTION_LIKE_CONDITION  @"likeCondition"
#define KNYCONSTANTS_CRUD_OPTION_WHERE_CONDITION @"whereCondition"
#define KNYCONSTANTS_CRUD_OPTION_PROJECTION_COLUMNS @"projectionColumns"
#define KNYCONSTANTS_TRACK_INTERMEDIATE_UPDATES @"trackIntermediateUpdates"
#define KNYCONSTANTS_CRUD_OPTION_WHERE_CONDITION_AS_A_STRING @"whereConditionAsAString"

//Binary Constants
#define KNYCONSTANTS_BINARY_QUERY_TYPE @"queryType"
#define KNYCONSTANTS_BINARY_STATUS_PENDING @"pending"
#define KNYCONSTANTS_BINARY_STATUS_COMPLETED @"completed"
#define KNYCONSTANTS_BINARY_COLUMN_NAME @"columnName"
#define KNYCONSTANTS_BINARY_FORCE_DOWNLOAD @"forceDownload"
#define KNYCONSTANTS_BINARY_FILEID @"fileId"
#define KNYCONSTANTS_BINARY_CONTEXT @"context"
#define KNYCONSTANTS_BINARY_FILEPATH @"filePath"

//Sync Constants
#define KNYCONSTANTS_PRESERVE_BATCH_CONTEXT  @"preserveBatchContext"

//Setup Constants
#define KNYCONSTANTS_SUCCESS_RESPONSE @"successResponse"
#define KNYCONSTANTS_FAILURE_RESPONSE @"failureResponse"
#define KNYCONSTANTS_SETUP_STATUS @"setupStatus"
#define KNYCONSTANTS_TREAT_BOOL_AS_NUMERIC @"treatBooleanFieldValuesAsNumeric"
