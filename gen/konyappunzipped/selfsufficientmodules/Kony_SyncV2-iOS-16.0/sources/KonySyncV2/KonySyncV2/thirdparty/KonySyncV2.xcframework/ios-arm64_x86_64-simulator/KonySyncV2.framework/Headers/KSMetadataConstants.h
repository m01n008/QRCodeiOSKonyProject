//
//  MetadataConstants.h
//  KonySyncV2
//
//  Created by Harshini Bonam on 09/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSInternalConstants.h"

#define KNYCONSTANTS_UNNAMED_NAMESPACE @"kony_unnamed"
#define KNYCONSTANTS_UNNAMED_NAMESPACE_WITH_DOT @"kony_unnamed."
#define KNYCONSTANTS_UNNAMED_OBJECT_GROUP @"kony_unnamed_object_group"

// -------------------------
// Constants for SQL queries
// -------------------------
#define KNYCONSTANTS_SQL_CREATE @"CREATE TABLE IF NOT EXISTS "
#define KNYCONSTANTS_SQL_DELETE @"DELETE FROM "
#define KNYCONSTANTS_SQL_UPDATE @"ALTER TABLE "
#define KNYCONSTANTS_SQL_DROP @"DROP TABLE "

// -------------------------------------------------------
// Constants for Metadata JSON object top-level properties
// -------------------------------------------------------
#define KNYCONSTANTS_OP_STATUS @"opstatus"
#define KNYCONSTANTS_DELTA_CONTEXT_VALUE @"delta_context_value"
#define KNYCONSTANTS_HTTP_STATUS_CODE @"httpStatusCode"
#define KNYCONSTANTS_ERR_MSG @"errmsg"
#define KNYCONSTANTS_INTERMEDIATE_ERR_MSG @"intermediateErrors"
#define KNYCONSTANTS_TIMESTAMP @"timestamp"
#define KNYCONSTANTS_SYNC_CONFLICT_RESOLUTION_POLICY @"syncConflictResolutionPolicy"
#define KNYCONSTANTS_UPLOAD_CACHE @"uploadCache"

// -------------------------
// Constants for Namespaces
// -------------------------
#define KNYCONSTANTS_NAMESPACES @"namespaces"
#define KNYCONSTANTS_NAMESPACES_NAME @"name"
#define KNYCONSTANTS_NAMESPACES_ACTION @"action"

// -------------
// Batching keys
// -------------
#define KNYCONSTANTS_BATCH_CONTEXT @"batch_context"
#define KNYCONSTANTS_BATCH_ID @"batchid"
#define KNYCONSTANTS_DEFAULT_BATCH_SIZE @(500)
#define KNYCONSTANTS_DEFAULT_UPLOAD_BATCH_SIZE @(50)
#define KNYCONSTANTS_BATCH_SIZE_FILTER @"$batchsize"
#define KNYCONSTANTS_DEFAULT_BATCH_NUMBER @(1)
#define KNYCONSTANTS_DEFAULT_RSN_OF_PREVIOUS_BATCH -1

// ----------------------------
// Constants for Tables/Objects
// ----------------------------
#define KNYCONSTANTS_OBJECTS @"objects"
#define KNYCONSTANTS_OBJECTS_NAME @"name"
#define KNYCONSTANTS_OBJECTS_KEY @"key"
#define KNYCONSTANTS_OBJECTS_OFFLINE @"offline"
#define KNYCONSTANTS_OBJECTS_CACHE_TIMEOUT @"cache_timeout"
#define KNYCONSTANTS_OBJECTS_FIELDS @"fields"
#define KNYCONSTANTS_OBJECTS_RELATIONSHIPS @"relationships"
#define KNYCONSTANTS_OBJECTS_ACTION @"action"
#define KNYCONSTANTS_OBJECTS_GROUP @"object_group"
#define KNYCONSTANTS_OBJECTS_SOFT_DELETE_FIELD @"softdelete_field"
#define KNYCONSTANTS_RECORDS @"records"

// ------------------------
// Constants for Attributes
// ------------------------
#define KNYCONSTANTS_ATTRIBUTES @"fields"
#define KNYCONSTANTS_ATTRIBUTES_NAME @"name"
#define KNYCONSTANTS_ATTRIBUTES_DATATYPE @"datatype"
#define KNYCONSTANTS_ATTRIBUTES_LENGTH @"length"
#define KNYCONSTANTS_ATTRIBUTES_SOURCE_DATATYPE @"source_datatype"
#define KNYCONSTANTS_ATTRIBUTES_AUTO_GENERATED @"auto_generated"
#define KNYCONSTANTS_ATTRIBUTES_NULLABLE @"nullable"
#define KNYCONSTANTS_ATTRIBUTES_CREATABLE @"creatable"
#define KNYCONSTANTS_ATTRIBUTES_UPDATABLE @"updatable"
#define KNYCONSTANTS_ATTRIBUTES_ACTION @"action"

// -------------------------------------
// Constants for Attribute-Relationships
// -------------------------------------
#define KNYCONSTANTS_RELATIONSHIP_NAME @"name"
#define KNYCONSTANTS_RELATIONSHIP_TYPE @"type"
#define KNYCONSTANTS_RELATIONSHIP_ACTION @"action"
#define KNYCONSTANTS_RELATIONSHIP_TARGET_OBJECT @"target_object"
#define KNYCONSTANTS_RELATIONSHIP_TARGET_ATTRIBUTES @"target_fields"
#define KNYCONSTANTS_RELATIONSHIP_SOURCE_ATTRIBUTES @"source_fields"
#define KNYCONSTANTS_RELATIONSHIP_CASCADE @"cascade"
#define KNYCONSTANTS_RELATIONSHIP_BACKEND_CASCADE_SUPPORT @"backend_cascade_support"

// -------------------------------------
// Constants for Object-Operations
// -------------------------------------
#define KNYCONSTANTS_OPERATIONS @"operations"
#define KNYCONSTANTS_OPERATION_TYPE @"type"
#define KNYCONSTANTS_OPERATION_SUPPORTED_OBJECTS @"supportedObjects"
#define KNYCONSTANTS_OPERATION_OBJECT_NAME @"name"
#define KNYCONSTANTS_OPERATION_ACTION @"actions"
#define KNYCONSTANTS_OPERATION_GET @"get"
#define KNYCONSTANTS_OPERATION_CREATE @"create"
#define KNYCONSTANTS_OPERATION_UPDATE @"update"
#define KNYCONSTANTS_OPERATION_PARTIAL_UPDATE @"partialupdate"
#define KNYCONSTANTS_OPERATION_DELETE @"delete"
#define KNYCONSTANTS_UNDERSCORE_TEMP @"_temp"

// -------------------------------------
// Constants for TABLE TYPE
// -------------------------------------
#define KNYCONSTANTS_TABLE_TYPE_ORIGINAL @"ORIGINAL"
#define KNYCONSTANTS_TABLE_TYPE_MAIN @"MAIN"
#define KNYCONSTANTS_TABLE_TYPE_HISTORY @"HISTORY"

//----------------------------------
// Download response metadata keys
//----------------------------------

#define KNYCONSTANTS_RECORD_COUNT_KEY @"recordCount"
#define KNYCONSTANTS_UPDATED_RECORDS_KEY @"updatedRecords"
#define KNYCONSTANTS_PARTIAL_UPDATED_RECORDS_KEY @"partialUpdatedRecords"
#define KNYCONSTANTS_DELETED_RECORDS_KEY @"deletedRecords"


//------------------------
//CLASS NAMES IN METADATA
//------------------------
#define KNYCONSTANTS_NAMESPACE_METADATA @"NamespaceMetadata"
#define KNYCONSTANTS_OBJECT_METADATA @"ObjectMetadata"
#define KNYCONSTANTS_ATTRIBUTE_METADATA @"AttributeMetadata"

//Metadata Table constants
#define KNYCONSTANTS_METADATA_TABLE_OBJECT_SERVICE_NAME_ATTRIBUTE @"objectServiceName"
#define KNYCONSTANTS_METADATA_TABLE_METADATA_JSON_ATTRIBUTE @"metadataJSON"
#define KNYCONSTANTS_METADATA_TABLE_DELTA_CONTEXT_ATTRIBUTE @"deltaContext"

//Default Values
#define KNYCONSTANTS_DEFAULT_REPLAY_SEQUENCE_NUMBER @(-1)

//Miscellaneous
#define KNYCONSTANTS_SYNC_EMPTY_NAMESPACE_NAME @""
#define KNYCONSTANTS_SYNC_EMPTY_OBJECT_SERVICE_NAME @""
#define EM_GENERIC_DATA_FETCHER @"Failed to retrieve network response."
#define EM_FIRST_TIME_OFFLINE_SETUP @"Could not refresh metadata due to network error and no offline metadata available for Object service for the given server app version."

// OData queries
#define KNYCONSTANTS_OFFLINE_FLAG_TRUE @"offline=true"
#define KNYCONSTANTS_OFFLINE_QUERY_PARAM @"offline"
#define KNYCONSTANTS_TRUE_VALUE_QUERY_PARAM @"true"
#define KNYCONSTANTS_METADATA_KEYWORD @"$metadata"

//extern NSString *const OBJECT_OR_ALL_KEY;

//ObjectAttribute related constants

typedef enum
{
    /*
     INT,
     INTEGER,
     TINYINT,
     SMALLINT,
     MEDIUMINT,
     BIGINT,
     UNSIGNED_BIG_INT,
     INT2,
     INT8
     */
    KSObjectAttributeDataTypeInteger = 0,
    KSObjectAttributeDataTypeNumber,
    KSObjectAttributeDataTypeBoolean,
    
    /*
     CHARACTER,
     VARCHAR,
     VARYING_CHARACTER,
     NCHAR,
     NATIVE_CHARACTER,
     NVARCHAR,
     TEXT,
     CLOB
     */
    KSObjectAttributeDataTypeText,
    KSObjectAttributeDataTypeString,
    
    /*
     BLOB
     BINARY
     */
    KSObjectAttributeDataTypeBlob,
    KSObjectAttributeDataTypeBinary,
    
    /*
     REAL,
     DOUBLE,
     DOUBLE_PRECISION,
     FLOAT
     */
    KSObjectAttributeDataTypeReal,
    
    /*
     NUMERIC,
     DECIMAL,
     BOOLEAN,
     DATE,
     DATETIME
     */
    KSObjectAttributeDataTypeNumeric,
    KSObjectAttributeDataTypeDate,
    
    KSObjectAttributeDataTypeCount //number of datatypes in the enum.
}KSObjectAttributeDataType;

extern NSString *dataTypeName (KSObjectAttributeDataType dataType);
extern KSObjectAttributeDataType dataTypeFromString (NSString * dataTypeString);

// Root metadata related constants

typedef enum
{
    KSSyncConflictResolutionPolicyNone = 0,
    KSSyncConflictResolutionPolicyServerWin,
    KSSyncConflictResolutionPolicyClientWin,
    KSSyncConflictResolutionPolicyCustom
}KSSyncConflictResolutionPolicy;

typedef enum
{
    KSActionCreate = 0, //post
    KSActionDelete, //delete
    KSActionUpdate, // patch, InsertOrCreate = putg
    KSActionNone
}KSAction;

extern KSAction getActionFromIncrementalJSONNode(NSString * actionName);

//Relationship related constants

typedef enum
{
    KSRelationshipTypeNone = 0,
    KSRelationshipTypeOneToMany,
    KSRelationshipTypeManyToOne,
    KSRelationshipTypeOneToOne,
    
    KSRelationshipTypeCount //number of relationship types in the enum.
}KSRelationshipType;

extern KSRelationshipType relationshipTypeFromString(NSString * relationshipString);

//Table Type constants

typedef enum
{
    KSTableTypeMain = 0,
    KSTableTypeOriginal,
    KSTableTypeHistory,
    
    KSTableTypeCount //number of table types in the enum.
}KSTableType;

extern NSString *tableTypeName(KSTableType tableType);

//Operation related constants

typedef enum
{
    KSOperationTypeDefault = 0,
    KSOperationTypeInitialGet,
    KSOperationTypeIncrementalGet,
    KSOperationTypeUpload,
    KSOperationTypeUploadResponse,
    
    KSOperationCount //number of operations in the enum.
}KSOperationType;

//Object Operation related constants

typedef enum
{
    KSObjectOperationTypeDefault = 0,
    KSObjectOperationTypeGet,
    KSObjectOperationTypeCreate,
    KSObjectOperationTypeUpdate,
    KSObjectOperationTypePartialUpdate,
    KSObjectOperationTypeDelete,
    
    KSObjectOperationCount //number of operations in the enum.
}KSObjectOperationType;

extern NSString* objectOperationTypeByName(KSObjectOperationType operationType);
extern KSObjectOperationType objectOperationForString(NSString * objectOperationType);
extern NSArray<NSString*>* objectOperationsAsStringArray(void);
extern KSSDKObjectRecordAction objectRecordActionFromOperationType(KSObjectOperationType operationType);

// -------------------------
// DOWNLOAD RESPONSE METADATA KEYS
// -------------------------
#define KNYCONSTANTS_DOWNLOAD_RESPONSE_OBJECTS_KEY @"Objects"
#define KNYCONSTANTS_RECORD_COUNT_KEY  @"recordCount"
#define KNYCONSTANTS_CREATED_RECORDS_KEY @"createdRecords"
#define KNYCONSTANTS_UPDATED_RECORDS_KEY @"updatedRecords"
#define KNYCONSTANTS_PARTIAL_UPDATED_RECORDS_KEY @"partialUpdatedRecords"
#define KNYCONSTANTS_DELETED_RECORDS_KEY @"deletedRecords"

extern NSString* recordActionTypeName(KSSDKObjectRecordAction recordAction);

@interface KSMetadataConstants : NSObject

@end
