//
//  IPersistableObject.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 14/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KSSDKObject;

@protocol IPersistableObject <NSObject>

@required

/**
 @brief The method returns the objects that needs to be persisted
 @return Returns the list of objects to be persisted
 **/
- (NSArray <KSSDKObject *> *)objectsToPersist;

/**
 @brief The method can be used for persisting the download changes into the device DB
 @param deltaContext Delta context that came with download
 @param error Error thrown while persisting
 **/
- (void) persistDownloadChangesWithDeltaContext:(NSString *)deltaContext
                                          error:(OfflineObjectsError **)error;

/**
  @brief The method can be used for persisting the upload changes into the device DB
  @param error Error thrown while persisting
 **/
- (void) persistUpdatesFromUploadResponse:(OfflineObjectsError **)error;

@end
