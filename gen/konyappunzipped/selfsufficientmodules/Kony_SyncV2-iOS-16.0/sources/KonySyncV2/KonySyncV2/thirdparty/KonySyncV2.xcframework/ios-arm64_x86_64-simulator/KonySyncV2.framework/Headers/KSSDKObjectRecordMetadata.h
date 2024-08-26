//
//  KSSDKObjectRecordMetadata.h
//  KonySyncV2
//
//  Created by Vishnu Satis on 05/01/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSInternalConstants.h"

@class KSSDKObjectRecord;

@interface KSSDKObjectRecordMetadata : NSObject

//Info about the record's containment
@property (nonatomic, weak) KSSDKObjectRecord *parentObject;

//Action performed on this record
@property (nonatomic, assign) KSSDKObjectRecordAction action;

//Metadata required for Sync server
@property (nonatomic, copy) NSString *checkSum;
@property (nonatomic) NSInteger opStatus;
@property (nonatomic, assign) BOOL ignoreOfflineDuplicates;
@property (nonatomic, copy) NSNumber *rowID;

// Metadata coming in upload response
@property (nonatomic, copy) NSString *errorMessage;
@property (nonatomic, copy) NSArray *intermediateErrors;

@end
