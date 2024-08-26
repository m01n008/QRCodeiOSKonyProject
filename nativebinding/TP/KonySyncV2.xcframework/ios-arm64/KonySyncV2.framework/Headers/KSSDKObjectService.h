//
//  KSSDKObjectService.h
//  KonySyncV2
//
//  Created by Prashant Panchal on 20/02/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "KSSyncMetaInfo.h"
#import "ISyncableObject.h"
#import "IOfflineCapabilities.h"
#import "KSRootMetadataObject.h"

@interface KSSDKObjectService : NSObject <ISyncableObject, IOfflineCapabilities>

/**
 *       Object Service level info
 */
@property (nonatomic, assign) KSSDKObjectMode mode;

@property (nonatomic) KSSyncMetaInfo *metaInfoContent;

@property (nonatomic, readonly) NSString *objectServiceName;

/**
 *      Metadata object
 */
@property (nonatomic, weak) KSRootMetadataObject *rootMetadataObject;

@property (nonatomic, strong) NSArray<KSSDKObject*> *sdkObjectsForUploadandDownload;

+ (instancetype) sharedInstanceByName:(NSString *) name
                                error:(OfflineObjectsError **)error;

- (instancetype) init __attribute__((unavailable("Must use sharedInstanceByName")));

/**
 *      Will return an Object of type KSSDKObject with the given name
 *      @parameter: Name of the object
 */
- (KSSDKObject *)getObjectByName:(NSString *)name
                           error:(OfflineObjectsError **)error;

- (KSSDKObject *)getObjectByName:(NSString *)name
                andNamespaceName:(NSString *)namespaceName
                           error:(OfflineObjectsError **)error;

/**
 Clears all the object service instances
 */
+ (void)clearObjectServiceMap;

/**
 * Rollback an ObjectService to its previous sync state
 * @param error which has to be passes incase of rollback failure
 * @return Yes if rollback is success else No.
 */
- (BOOL)rollback:(OfflineObjectsError **)error;

/**
 * Deletes an ObjectService's object table data
 * @param error which has to be passes incase of rollback failure
 * @return Yes if deletion is successful, no otherwise.
 */
- (BOOL)clearDataWithOptions:(NSDictionary <NSString *, id>*)options
                       error:(OfflineObjectsError **)error;

@end
