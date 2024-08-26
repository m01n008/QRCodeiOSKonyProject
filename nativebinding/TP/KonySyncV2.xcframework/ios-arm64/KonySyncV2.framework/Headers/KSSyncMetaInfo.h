//
//  KSSyncMetaInfo.h
//  KonySyncV2
//
//  Created by Prashant Panchal on 27/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//

@class OfflineObjectsError;

@interface KSSyncMetaInfo: NSObject

/**
 * Method to get the current value for the LastGeneratedId for given Object Service
 **/
- (NSInteger) getLastGeneratedId:(OfflineObjectsError **)error;


/**
 * Method to get the current value for the replaySequencenumber for given Object Service
 **/
- (NSInteger) getReplaySequenceNumber:(OfflineObjectsError **)error;


/**
 * Method to get the current value for the replaySequencenumber for given Object Service
 **/
- (NSInteger) getUploadSessionNumber:(OfflineObjectsError **)error;

/**
 * Gives the replaySequenceNumber from metainfo.
 **/
- (NSInteger) getLastReplaySequenceNumber;

/**
 * Initialize the MetaInfo Object for the Current Object Service
 **/
- (instancetype) init __attribute__((unavailable("Must use initWithName")));

- (instancetype) initWithObjectServiceName:(NSString *)name;

@end
