//
//  ISyncListener.h
//  KonySyncV2
//
//  Created by Sunil Phani Manne on 25/11/16.
//  Copyright © 2016 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ISyncableObject.h"

@protocol ISyncListener <NSObject>

@required
- (void)syncSessionForObject:(id <ISyncableObject>)syncObject
            stateChangedFrom:(SyncSessionState)fromState
                          to:(SyncSessionState)toState
                     context:(NSDictionary *)context;

- (void)syncSessionForObject:(id <ISyncableObject>)syncObject
                currentPhase:(SyncSessionPhase)syncPhase
                     context:(NSDictionary *)context;

@end
