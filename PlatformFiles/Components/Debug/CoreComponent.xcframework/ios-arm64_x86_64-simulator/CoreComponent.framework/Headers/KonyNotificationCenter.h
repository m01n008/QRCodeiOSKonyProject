//
//  KonyNotificationCenter.h
//  VM
//
//  Created by KH287 on 20/03/15.
//
//

#import <Foundation/Foundation.h>
#import "KonyNotificationCenterConstants.h"

@interface KonyNotificationCenter : NSNotificationCenter
{
    NSString *notificationName;
}

+(id) sharedInstance;

-(void)registerForNotificationType:(NSString*) notificationType withTarget:(id)target withSelector:(SEL)selector;

-(void)raiseNotification:(NSString*)eventType forObject :(id)object withUserInfo:(NSDictionary*) userInfo;

-(void)deRegisterForNotificationType:(NSString*)notificationType  withTarget:(id)target;

@end




