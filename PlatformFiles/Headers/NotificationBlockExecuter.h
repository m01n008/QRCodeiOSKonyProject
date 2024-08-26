//
//  NotificationBlockExecuter.h
//  VM
//
//  Created by Dhananjay Raj on 30/09/15.
//
//

#import "BlockExecuter.h"
#import <WatchKit/WatchKit.h>

@interface NotificationBlockExecuter : BlockExecuter

{
    void (^notificationCompletionHandler)(WKUserNotificationInterfaceType);
}

- (id)initWithNotificationCompletionHandler:(void (^)(WKUserNotificationInterfaceType))completionHandler;

@end
