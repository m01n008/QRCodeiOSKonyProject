//
//  SyncBatch.h
//  KonySyncV2
//
//  Created by Rakesh Gyanchandani on 14/06/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * SyncBatch - DataType to maintain Upload and Download Stats for SyncV2 batches.
 */
@interface SyncBatch : NSObject

//Number of Uploaded or Downloaded records.
@property (nonatomic,strong) NSNumber* numberOfRecords;

//Captures Request creation time in millisecond for Upload or Download.
@property (nonatomic,strong) NSNumber* requestCreationTime;

//Captures Network time in millisecond for Upload or Download.
@property (nonatomic,strong) NSNumber* networkDurationTime;

//Captures Response parsing time in millisecond for Upload or Download.
@property (nonatomic,strong) NSNumber* responseParsingTime;

//Captures SDK Object creation in millisecond for Upload or Download.
@property (nonatomic,strong) NSNumber* SDKObjectCreationTime;

//Captures Persisting Upload or Download response time in millisecond.
@property (nonatomic,strong) NSNumber* dataPersistanceTime;

//Captures the number of batches downloaded for Object/Object Service.
@property (nonatomic,strong) NSNumber* batchNumber;

- (NSString *)description;

- (NSDictionary *)convertToNSDictionary:(BOOL) skipNonEndUserDetails;

@end
