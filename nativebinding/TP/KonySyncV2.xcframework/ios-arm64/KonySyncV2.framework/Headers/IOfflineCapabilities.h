//
//  IOfflineCapabilities.h
//  GenericObject
//
//  Created by Sunil Phani Manne on 10/11/16.
//  Copyright © 2016 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSConstants.h"

@protocol IOfflineCapabilities <IPersistableObject>

- (void)resetDatabase:(OfflineObjectsError **)error;

/**
 The function used for starting sync on the current object
 @param options contains sync options
 @param completion Completion handler post sync
 @param onProgress Progress Handler called during sync
 */
- (void)startSync:(NSDictionary <NSString *, id>*)options
        onCompletion:(CompletionHandler)completion
        onProgress:(KNYProgressCompletionHandler)onProgress;

/**
 The function used for canceling sync on the current object
 * @param error which has to be passes incase of cancel failure
 * @return Yes if cancel is success else No.
 */
- (BOOL)cancelSync:(OfflineObjectsError **)error;

@end
