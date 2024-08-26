//
//  NotificationService.m
//  NotificationServiceExtension
//
//  Created by Satya.bobba on 15/12/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import "NotificationService.h"

@interface NotificationService ()

@property (nonatomic, strong) void (^contentHandler)(UNNotificationContent *contentToDeliver);
@property (nonatomic, strong) UNMutableNotificationContent *bestAttemptContent;

@end
static int cont =0;
@implementation NotificationService

- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler {
    // [konyExtensionsRuntime setup:self];
    self.contentHandler = contentHandler;
    self.bestAttemptContent = [request.content mutableCopy];
    
    // Modify the notification content here...
    self.bestAttemptContent.title = [NSString stringWithFormat:@"count->%d %@ [modified it from NotificationServiceExtension]", cont,self.bestAttemptContent.title];
    cont++;
    self.bestAttemptContent.subtitle =@"added this ";
    //NSLog(@"%@",self.bestAttemptContent);
    self.contentHandler(self.bestAttemptContent);
}

- (void)serviceExtensionTimeWillExpire {
    // Called just before the extension will be terminated by the system.
    // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
    self.contentHandler(self.bestAttemptContent);
}

@end
