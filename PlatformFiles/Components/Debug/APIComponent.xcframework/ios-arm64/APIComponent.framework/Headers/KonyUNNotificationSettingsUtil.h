//
//  KonyUNNotificationSettingsUtil.h
//  VM
//
//  Created by KH1340 on 02/02/17.
//  Description: Contains the implementation of ios10 compactible methods
//
#ifndef KonyUNNotificationSettingsUtil_h
#define KonyUNNotificationSettingsUtil_h
#endif /* KonyUNNotificationSettingsUtil_h */

#import <Foundation/Foundation.h>
#import <CoreComponent/JSObjectParsing.h>
#import<UserNotifications/UNNotificationAction.h>
#import<UserNotifications/UNNotificationCategory.h>
#import <UserNotifications/UNNotificationSettings.h>
#import <UserNotifications/UNUserNotificationCenter.h>
#import <UserNotifications/UNNotificationContent.h>
#import <UserNotifications/UNNotificationRequest.h>
#import <UserNotifications/UNNotificationTrigger.h>
#import <UserNotifications/UNNotificationSound.h>


@interface KonyUNNotificationSettingsUtil : JSObjectParsing

+(UNNotificationAction*) createAction:(id) action;
+(UNNotificationCategory*) createCategory:(id) categoryDict;
+(void) registerCategory:(id) notificationSettingDict;
+(UNAuthorizationOptions) GetNotificationType:(NSArray*) args;
+(void) createLocalNotification:(id) localNotificationDic;
+(void) cancelLocalNotifications:(NSArray*) localNotificationIDArr;
+(void) setProperties:(id)propDict;
+(void)getPendingLocalNotifications:(NSArray*)arguments;
/*!
 @brief This method returns UNNotificationPresentationOptions specified by user to display notification when app is in foreground.
 @Input array of presentationOptions. Spicify 0,1,2 values in array. UNNotificationPresentationOptionBadge - 0, UNNotificationPresentationOptionSound - 1, UNNotificationPresentationOptionAlert - 2.
 */
+(UNNotificationPresentationOptions) getNotificationPresentationOptions:(NSArray*)options;

@end
