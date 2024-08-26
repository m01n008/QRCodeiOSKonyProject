//
//  KSObjectMetadata.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 09/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSPrimaryKey.h"
#import "KSRelationship.h"
#import "OrderedDictionary.h"
#import "OfflineObjectsError.h"

@class KSOperations;
@class KSNamespaceMetadata;

@interface KSObjectMetadata : NSObject <NSCopying>

@property (nonatomic, readonly, copy) NSString *name;

@property (nonatomic, readonly, copy) NSString *fullyQualifiedName;

@property (nonatomic, readonly, strong) KSPrimaryKey *primaryKey;

@property (nonatomic, readonly, copy) NSString *objectGroupName;

@property (nonatomic, readonly, strong) OrderedDictionary *attributes;

@property (nonatomic, readonly) NSArray <NSValue *> *nonNullableAttributes;

@property (nonatomic, readonly) NSDictionary <NSString *, KSObjectAttribute *> *binaryAttributes;

@property (nonatomic, readonly, weak) KSNamespaceMetadata *parentNamespaceMetadata;

@property (nonatomic, readonly, strong) NSArray <KSRelationship *> *parentRelationships;

@property (nonatomic, readonly, strong) NSArray <KSRelationship *> *childRelationships;

@property (nonatomic, readonly, strong) NSArray <NSDictionary *> *rawChildRelationships;

@property (nonatomic, readonly, assign) KSAction action;

@property (nonatomic, readonly, assign) NSUInteger cacheTimeout;

@property (nonatomic, readonly, assign, getter=isOffline) BOOL offline;

@property (nonatomic, copy) NSString *endpointURL;

@property (nonatomic, copy) NSString *APIVersion;

@property (nonatomic, copy) NSString *objectServiceName;

@property (nonatomic, readonly) KSObjectAttribute *softDeleteField;

@property (nonatomic, readonly) KSOperations *operations;

@property (nonatomic) BOOL isTemp;

//init methods

- (instancetype) init __attribute__((unavailable("Must use initWithJSONDictionary:withParentNamespace:error: instead.")));

- (instancetype)initWithJSONDictionary:(NSDictionary *)JSONDictionary
                   withParentNamespace:(KSNamespaceMetadata *)namespaceMetadata
                                 error:(OfflineObjectsError **)error;

//Other handy methods

- (NSInteger)indexInParentNamespace;
- (NSInteger)indexInParentRootMetadata;

@end
