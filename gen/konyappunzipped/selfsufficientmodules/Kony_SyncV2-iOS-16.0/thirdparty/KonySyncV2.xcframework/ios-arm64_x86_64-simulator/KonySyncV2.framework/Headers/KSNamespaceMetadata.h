//
//  KSNamespaceMetadata.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSObjectMetadata.h"
#import "OrderedDictionary.h"
#import "OfflineObjectsError.h"

@class KSRootMetadataObject;

@interface KSNamespaceMetadata : NSObject

@property (nonatomic, readonly, strong) OrderedDictionary *objectMetadataDictionary;

/**
 * Re-distributed hierarchical metadata with forward reference to hierarchies
 *
 * Maintains a list of supported object names for the current (root) object
 */
@property (nonatomic, readonly, strong) NSDictionary *forwardHierarchicalDependencyMap;

/**
 * Re-distributed hierarchical metadata with reverse reference to hierarchies
 *
 * Maintains a list of root objects names for the current (supported object) object
 */
@property (nonatomic, readonly, strong) NSDictionary *reverseHierarchicalDependencyMap;

/**
 * The list contains the object names sorted by parent hierarchies first
 */
@property (nonatomic, readonly, strong) NSArray<NSString *> *orderedHierarchicalObjectNameList;

@property (nonatomic, readonly, weak) KSRootMetadataObject *parentRootMetadata;

@property (nonatomic, readonly, assign) KSAction action;

@property (nonatomic, readonly, copy, getter=getName) NSString *name;

//init methods

- (instancetype) init __attribute__((unavailable("Must use initWithJSONDictionary:withParentRootMetadata:error: instead.")));

- (instancetype)initWithJSONDictionary:(NSDictionary *)JSONDictionary
                withParentRootMetadata:(KSRootMetadataObject *)parentRootMetadata
                                 error:(OfflineObjectsError **)error;

//Other handy methods

- (NSInteger)offsetForNamespace;

- (NSInteger)indexInParentRootMetadata;

- (KSObjectMetadata *)objectAtIndex:(NSInteger)index;

- (void) sortHierarchicalDependencyMapsByParentHierarchyFirst;

@end
