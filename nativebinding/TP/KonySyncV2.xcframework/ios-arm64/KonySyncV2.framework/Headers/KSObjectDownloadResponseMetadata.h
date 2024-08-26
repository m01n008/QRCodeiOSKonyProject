//
//  KSObjectLevelDownloadResponseMetadata.h
//  KonySyncV2
//
//  Created by ambuj.kumar on 08/03/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <KonySyncV2/KonySyncV2.h>

#import "KSBaseResponseMetadata.h"

@class KSObjectDownloadResponseMetadata;

@interface KSObjectDownloadResponseMetadata : KSBaseResponseMetadata

//Download statistics
@property (nonatomic, assign) NSUInteger recordCount;
@property (nonatomic, assign) NSUInteger createdRecords;
@property (nonatomic, assign) NSUInteger updatedRecords;
@property (nonatomic, assign) NSUInteger partialUpdatedRecords;
@property (nonatomic, assign) NSUInteger deletedRecords;

@end
