//
//  KSSDKUploadRequestMetadata.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 14/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KSSDKObject;

@interface KSSDKUploadRequestMetadata : NSObject

//Network related metainfo
@property (nonatomic, copy) NSString *sessionID;

//Offline related metainfo
@property (nonatomic, assign) BOOL hasMoreRecords;
@property (nonatomic, copy) NSString *checksum;
@property (nonatomic, copy) NSArray *echoString;

@property (nonatomic, assign) NSUInteger totalNamespaces;
@property (nonatomic, assign) NSUInteger totalObjects;
@property (nonatomic, assign) NSUInteger totalRecords;
@property (nonatomic, assign) NSUInteger recordCount;
@property (nonatomic, assign) BOOL shouldAbortOnError;

- (instancetype)initWithObjects:(NSArray<KSSDKObject *> *) objects;

@end
