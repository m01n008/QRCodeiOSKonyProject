//
//  ISyncProgressEventListener.h
//  KonySyncV2
//
//  Created by KH2218 on 25/07/17.
//  Copyright © 2017 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KSInternalConstants.h"

@protocol ISyncProgressEventListener <NSObject>

@required

- (void)syncProgressEventNotification:(SyncSessionPhase)syncPhase
                currentState:(SyncSessionState)syncState
                     context:(NSDictionary *)context;

@end
