//
//  KSSDKObject.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 30/09/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Binary/CompletionBlocks.h>

#import "ICRUDAble.h"
#import "ISyncableObject.h"
#import "KSObjectMetadata.h"
#import "KSSDKObjectRecord.h"
#import "IOfflineCapabilities.h"

@interface KSSDKObject : NSObject <ISyncableObject, IOfflineCapabilities , ICRUDAble>

//Object level info
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *nameSpaceName;
@property (nonatomic, readonly) NSString *fullyQualifiedName;

@property (nonatomic, readonly) NSString *originalTablefullyQualifiedName;
@property (nonatomic, readonly) NSString *historyTablefullyQualifiedName;

@property (nonatomic, assign) KSSDKObjectMode mode;
@property (nonatomic, readonly) NSArray <KSSDKObjectRecord *> *records;

//Attributes required for Sync server processing
@property (nonatomic, assign) KSSDKObjectAction action;

//Metadata object
@property (nonatomic, weak) KSObjectMetadata *metadata;

@property (nonatomic, readonly) NSString *objectServiceName;

/**
 * An Array of SDKObjects
 * Used in upload and download scenarios
 */
@property (nonatomic, strong) NSArray <KSSDKObject *> *sdkObjectsForUploadandDownload;

- (instancetype) init __attribute__((unavailable("Must use initWithName: or initWithName:andNamespace: instead.")));

- (instancetype)initWithName:(NSString *)name;

- (instancetype)initWithName:(NSString *)name
                       error:(OfflineObjectsError **)error;

- (instancetype)initWithName:(NSString *)name
            andNamespaceName:(NSString *)namespaceName
                       error:(OfflineObjectsError **)error;

- (instancetype)initWithObjectServiceName:(NSString *)objectServiceName
                                andObject:(NSString *)name
                         andNamespaceName:(NSString *)namespaceName
                                    error:(OfflineObjectsError **)error;

- (void)addRecord:(KSSDKObjectRecord *)record;
- (void)addRecords:(NSArray <KSSDKObjectRecord *> *)records;
- (void)removeRecord:(KSSDKObjectRecord *)record;
- (void)removeAllRecords;


- (NSArray *)recordsWithAction:(KSSDKObjectRecordAction)recordAction;

/**
 * Sets if Download Reconciliation is required or not
 * @param downloadReconciliationRequired
 */
- (void)setDownloadReconciliationRequired:(BOOL)downloadReconciliationRequired;

/**
 * Gets the list of Records with Pending Edits
 * @param error which has to be passes incase of getPendingRecordsForUpload failure.
 * @return The List of PendingEditsSyncRecords if there are no records then an empty list
 */
- (NSArray <NSDictionary <NSString *, NSString *> *> *)getPendingRecordsForUpload:(OfflineObjectsError **)error;

/**
 * Return if Download Reconciliation is required or not
 */
- (BOOL)isDownloadReconciliationRequired;

//TODO: Implement a KVO listener and automatically update the classified records when the records are update...
//Miscellaneous methods
- (NSDictionary *)recordsClassifedWithRecordAction;

/**
 * Add the given pk value pair to the given object
 * @param primaryKeyValue will be added to a Set which maintains the primaryKeyValuePairs for the records
 */
- (void) setSetOfPrimaryKeyValuePairs:(NSDictionary<NSString *,id> *)primaryKeyValue;

/**
 * Gives the Set which maintains the primaryKeyValuePairs for the records
 */
- (NSSet<NSDictionary<NSString *,id> *> *) getSetOfPrimaryKeyValuePairs;

//Online methods
//TODO: Think about online methods

/**
 * Rollback an Object to its previous sync state
 * @param primaryKeyValueMap of record only for which rollback should happen.
 * @param error which has to be passes incase of rollback failure.
 * @return Yes if rollback is success else No.
 */
- (BOOL)rollback:(NSDictionary *)primaryKeyValueMap
           error:(OfflineObjectsError **)error;

/**
 * Downloads binary for the specified column name and primary key(s) of the object.
 * If the file is available locally, it will not download from server unless Force Download is enabled.
 *
 * @param options - Options specific to the file to be downloaded
 *                               binaryColumnName: String
 *                               forceDownload: boolean
 *                               chunkSize: integer
 *                               primaryKeys: Map of column name and value
 *                               fileId: ID which user wants to name the file with. This will be appended with timestamp
 * @param fileDownloadStartedCompletionBlock - download started callback
 * @param chunkDownloadCompletedCompletionBlock - chunk download completion callback
 * @param streamDownloadCompletionBlock - stream download completion callback
 * @param fileDownloadCompletedCompletionBlock - file download completion callback
 * @param downloadFailureCompletionBlock - fownload failure callback
 */
- (void)getBinary:(NSDictionary <NSString *,id>*) options
        downloadStartedHandler:(onFileDownloadStartedCompletionBlock)fileDownloadStartedCompletionBlock
        chunkDownloadCompletedHandler:(onChunkDownloadCompletedCompletionBlock)chunkDownloadCompletedCompletionBlock
        streamDownloadCompletedHandler:(onStreamDownloadCompletedCompletionBlock)streamDownloadCompletionBlock
        fileDownloadCompletedHandler:(onFileDownloadCompletedCompletionBlock)fileDownloadCompletedCompletionBlock
        downloadFailureHandler:(onDownloadFailureCompletionBlock)downloadFailureCompletionBlock;

/**
 * Returns list of primary keys of those records that match the search criteria.
 * @param options
 * @param error which has to be passes incase of getBinaryStatus failure.
 */
- (NSDictionary *)getBinaryStatus:(NSDictionary<NSString *, id> *)options
                            error:(OfflineObjectsError **)error;

/** mark for upload for differed records
 *
 * @param options contains the primary keys that has to be marked for upload
 * @param error which has to be passes incase of failure
 */
- (BOOL)markForUploadInDatabase:(NSDictionary <NSString *, id>*) options
                          error:(OfflineObjectsError **)error;

/**
 * Fetching primary keys of differed records
 * @param error which has to be passes incase of failure
 */
-(NSArray <NSDictionary *> *)getDifferedRecordsFromDatabase:(OfflineObjectsError **)error;

/**
 * Clears an object table and also record by give primary key
 * @return Yes if deletion is successful, no otherwise.
 */
- (BOOL)clearDataWithOptions:(NSDictionary <NSString *, id>*)options
                       error:(OfflineObjectsError **)error;

@end
