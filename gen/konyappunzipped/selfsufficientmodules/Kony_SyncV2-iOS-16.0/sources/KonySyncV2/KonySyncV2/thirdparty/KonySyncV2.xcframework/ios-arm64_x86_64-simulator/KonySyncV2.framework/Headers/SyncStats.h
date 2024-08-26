//
//  SyncStats.h
//  KonySyncV2
//
//  Created by Rakesh Gyanchandani on 14/06/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import "SyncBatch.h"

/**
 * SyncStats - DataType to maintain SyncStats for Sync run.
 */
@interface SyncStats : NSObject

- (instancetype)initWithUploadStatsAndDownloadStats;

/**
 * Retrieve the name of Object/ObjectService.
 * @return String.
 */
- (NSString *)getName;

/**
 * Set the name of Object/ObjectService.
 * @param name String.
 */
- (void)setName:(NSString *) Name;

/**
 * Retrieve the Upload SyncStats List for Object or ObjectService.
 * @return List of SyncBatch.
 */
- (NSMutableArray<SyncBatch *> *)getUploadStats;

/**
 * add the Upload task SyncStats  for Object or ObjectService in case of Batching more than one stats are added.
 * @param uploadData SyncBatch.
 */
- (void)addUploadBatchStats:(SyncBatch *) uploadData;

/**
 * Retrieve the Download SyncStats List for Object or ObjectService.
 * @return List of SyncBatch.
 */
- (NSMutableArray<SyncBatch *> *)getDownloadStats;

/**
 * add the Download task SyncStats  for Object or ObjectService in case of Batching more than one stats are added.
 * @param downloadData SyncBatch.
 */
- (void)addDownloadBatchStats:(SyncBatch *) downloadData;

/**
 * Retrieve the time in ms of Object/ObjectService Sync.
 * @return  Integer.
 */
- (NSNumber *)getSyncElapsedTime;

/**
 * Set the time in ms of Object/ObjectService Sync.
 * @param syncElapsedTime Integer.
 */
- (void)setSyncElapsedTime:(NSNumber *) syncElapsedTime;

/**
 * Get the total number of records uploaded and downloaded.
 * @return Integer
 */
- (NSNumber *)getNumberOfRecordsSynced;

/**
* Set the total number of records uploaded and downloaded.
*/
- (void)setNumberOfRecordsSynced;

/**
 * Get the total records downloaded across batches
 * @return Integer
 */
- (NSNumber *)getTotalRecordsDownloaded;

/**
 * Get the total records uploaded across batches
 * @return Integer
 */
- (NSNumber *)getTotalRecordsUploaded;

/**
 * Retrieve the start time in ms of Object/ObjectService Sync.
 * @return  Date.
 */
- (NSDate *)getStartTime;

/**
 * Set the time in ms of Object/ObjectService Sync.
 * @param startTime Date.
 */
- (void)setStartTime:(NSDate *) startTime;

- (NSString *)getStartTimeAsString;

- (NSString*)description;

- (NSDictionary *)convertToNSDictionary:(BOOL) skipNonEndUserDetails;

@end

