//
//  ICommonCapabilities.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 16/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSInternalConstants.h"

/**
 ICommonCapabilities is the protocol of common capabilities that a sync object 
 needs to abide to in order to participate in an upload or download Sync session.
 */
@protocol ICommonCapabilities <NSObject>

@required

/**
 Indicates the <code>SyncLevel</code> of the Sync object.
 */
@property (nonatomic, assign, readonly) SyncLevel syncLevel;


/**
 The sync server's end point URL string.
 */
@property (nonatomic, copy, readonly) NSString *endPointURLString;


/**
 FullyQualifiedName of the sync object.
 */
@property (nonatomic, readonly) NSString *fullyQualifiedName;

/**
 Object service name of the sync object.
 */
@property (nonatomic, readonly) NSString *objectServiceName;

/**
 The version of the sync object
 */
@property (nonatomic, copy, readonly) NSString *version;

/**
 Prepares for a sync session
 */
- (void)prepareForSession;

@end
