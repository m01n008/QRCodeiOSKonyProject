//
//  KonyEventNotificationDelegateProtocol.h
//  VM
//
//  Created by KH287 on 07/04/15.
//
//

#import <Foundation/Foundation.h>

@protocol KonyEventNotificationDelegateProtocol <NSObject>
@required
- (void) didRecieveNotification:(NSNotification*) notification;
@end
