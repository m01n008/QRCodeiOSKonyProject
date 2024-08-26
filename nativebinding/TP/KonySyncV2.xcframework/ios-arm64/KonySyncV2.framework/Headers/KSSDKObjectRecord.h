//
//  KSSDKObjectRecord.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 30/09/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OfflineObjectsError.h"
#import "KSSDKObjectRecordMetadata.h"

@class KSSDKObject;
@class KSObjectAttribute;

@interface KSSDKObjectRecord : NSObject


/**
 Initializing KSSDKObjectRecord
 
 @param record - Contains a record of type dictionary
 @return Instance type of KSSDKObjectRecord
 */
- (instancetype)initWithRecord: (NSDictionary *)record;

/**
 Initializing KSSDKObjectRecord
 
 @param record - Contains a record of type dictionary
 @param parentObject - Contains an instance of KSSDKObject
 @return Instance type of KSSDKObjectRecord
 */
- (instancetype)initWithRecord: (NSDictionary *)record
                  parentObject: (KSSDKObject *)parentObject;


//Info about the record's containment
@property (nonatomic, weak) KSSDKObject *parentObject;

//Metadata required for Sync server
@property (nonatomic, readonly) KSSDKObjectRecordMetadata *recordMetadata;
@property (nonatomic, assign) KSSDKObjectRecordAction action;

//Data contained internally
@property (nonatomic, readonly) NSDictionary <NSString *, id> *data;

- (id)objectForKey:(NSString *)key;
- (void)setObject:(id)object forKey:(NSString *)key;

- (NSArray *)getIntermediateErrors;
- (void)setIntermediateErrors:(NSArray *)intermediateErrors;

//Literal Syntax methods
- (id)objectForKeyedSubscript:(id)key;
- (void)setObject:(id)obj forKeyedSubscript:(id <NSCopying>)key;
- (void)removeObjectForKey:(NSString *)key;

/**
 * Get primary key value map of the record
 * @param pkObjectAttributes -  Dictionary of primary key attributes of the record
 * @return result - map of the primary key(s) values of the record
 */
- (NSDictionary<NSString *, id> *)getPrimaryKeyValueMapOfRecord:(NSDictionary<NSString *, KSObjectAttribute *> *)pkObjectAttributes;

/**
 * Get primary key value map of the upload record
 * @param pkObjectAttributes -  Dictionary of primary key attributes of the record
 * @return result - map of the primary key(s) values of the record
 */
- (NSDictionary<NSString *, id> *) getPrimaryKeyValueMapOfUploadRecord:(NSDictionary<NSString *, KSObjectAttribute *> *)pkObjectAttributes
                                                                 error:(OfflineObjectsError **)error;

/**
 * Returns true if this sdk object record has same PK value pair passed in parameter
 *
 * @param primaryKeyValuePair primary key value pair of a record
 */
- (BOOL)isGivenPKValuePairPresentInRecord:(NSDictionary<NSString *,id> *)primaryKeyValuePair;


@end
