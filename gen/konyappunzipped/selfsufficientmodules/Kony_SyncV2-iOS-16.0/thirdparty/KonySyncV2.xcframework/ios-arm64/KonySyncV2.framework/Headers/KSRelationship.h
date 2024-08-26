//
//  GenericRelationship.h
//  KonySyncV2
//
//  Created by Harshini Bonam on 10/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSMetadataConstants.h"

@class KSObjectMetadata;
@class KSObjectAttribute;

@interface KSRelationship : NSObject

@property (nonatomic, readonly, copy) NSString *name;

@property (nonatomic, readonly, assign, getter=shouldCascade) BOOL cascade;

@property (nonatomic, readonly, assign) KSAction action;

@property (nonatomic, readonly, assign, getter=isBackendCascaseSupportEnabled) BOOL backendCascadeSupport;

@property (nonatomic, readonly, assign) KSRelationshipType type;

@property (nonatomic, readonly, weak) KSObjectMetadata *sourceObject;

@property (nonatomic, readonly, strong) NSOrderedSet <NSValue *> *sourceAttributes;

@property (nonatomic, readonly, weak) KSObjectMetadata *targetObject;

@property (nonatomic, readonly, strong) NSOrderedSet <NSValue *> *targetAttributes;


//init methods

- (instancetype) init __attribute__((unavailable("Must use initWithSourceObject:andJSONDictionary:error: instead.")));

- (instancetype)initWithSourceObject:(KSObjectMetadata *)sourceObject
                   andJSONDictionary:(NSDictionary *)JSONDictionary
                               error:(OfflineObjectsError **)error;

@end
