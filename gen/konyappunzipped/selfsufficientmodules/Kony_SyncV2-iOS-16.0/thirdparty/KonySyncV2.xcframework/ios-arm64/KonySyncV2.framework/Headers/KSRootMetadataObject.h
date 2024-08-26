//
//  RootMetadataObject.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSObjectMetadata.h"
#import "OrderedDictionary.h"
#import "KSNamespaceMetadata.h"
#import "OfflineObjectsError.h"

@interface KSRootMetadataObject : NSObject

@property (nonatomic, readonly, copy) NSString *timestamp;

@property (nonatomic, readonly, assign) NSInteger opStatus;

@property (nonatomic, readonly, assign) NSInteger HTTPStatusCode;

@property (nonatomic, readonly, assign) BOOL isUploadCacheEnabled;

@property (nonatomic, readonly, strong) OrderedDictionary *namespaceMetadataDictionary;

@property (nonatomic, readonly, assign) NSUInteger objectCount;

//init methods

- (instancetype) init __attribute__((unavailable("Must use initWithJSONDictionary:error: instead.")));

- (instancetype)initWithJSONDictionary:(NSDictionary *)JSONdictionary
                                 error:(OfflineObjectsError **)error;

//metadata and namespace methods

- (KSObjectMetadata *)objectMetadataForFullyQualifiedName:(NSString *)fullyQualifiedName;

- (KSObjectMetadata *)objectMetadataForName:(NSString *)objectName
                                inNamespace:(NSString *)namespaceName;

- (KSObjectMetadata *)objectAtIndex:(NSInteger)index;

- (KSNamespaceMetadata *)namespaceAtIndex:(NSInteger)index;

//SQL Query methods

- (NSArray <NSString *> *)getAllSQLQueries;
@end

@interface KSRootMetadataObject (IntegrationTesting)

- (void) setIsUploadCacheEnabled:(BOOL)isUploadCacheEnabled;

@end
