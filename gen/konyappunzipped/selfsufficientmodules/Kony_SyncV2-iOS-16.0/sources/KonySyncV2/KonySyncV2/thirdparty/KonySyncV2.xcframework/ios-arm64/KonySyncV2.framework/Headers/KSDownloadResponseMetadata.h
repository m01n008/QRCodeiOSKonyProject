//
//  KSSDKResponseMetadata.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 14/11/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <KonySyncV2/KonySyncV2.h>

#import "KSBaseResponseMetadata.h"

@class KSObjectDownloadResponseMetadata;

@interface KSDownloadResponseMetadata : KSBaseResponseMetadata
{
    @private
    // Download response metadata at per-object level
    // Key is the name of object and value part is KSObjectLevelDownloadResponseMetadata for that object
    NSMutableDictionary *objectLevelDownloadResponseMetadata;
}

//Batching related metainfo
@property (nonatomic, copy) NSString *batchID;
@property (nonatomic, copy) NSString *nextBatchID;

//Delta Context
@property (nonatomic, copy) NSString *deltaContext;

//Batch Related Variables
@property (nonatomic, copy) NSNumber *hasMoreRecords;

//Miscellaneous
@property (nonatomic, copy) NSString *conflictPolicy;

/**
 Adds an object's downloadResponseMetadata to the dictionary
 @param objectDownloadResponseMetadata Object's download response metadata
 @param objectName Name of object
 */
- (void)setDownloadResponseMetadata:(KSObjectDownloadResponseMetadata *)objectDownloadResponseMetadata forObject:(NSString *)objectName;

/**
 Returns the dictionary of Download response metadata for a specific object
 @param objectName The fully qualified name of the ISyncableObject for which the Download response metadata is desired
 */
- (KSObjectDownloadResponseMetadata *)downloadResponseMetadataFor:(NSString *)objectName;

@end
