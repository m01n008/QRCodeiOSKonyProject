//
//  Stats.h
//  KonySyncV2
//
//  Created by Rakesh Gyanchandani on 14/06/17.
//  Copyright © 2017 Kony. All rights reserved.
//
#import "SyncStats.h"
/**
 * Stats - DataType to maintain Stats for Sync run.
 */
@interface Stats : NSObject

//Capture Sync stats for Sync run
@property (nonatomic,strong) SyncStats* syncStats;

- (NSDictionary *)convertToNSDictionary:(BOOL) skipNonEndUserDetails;

@end
