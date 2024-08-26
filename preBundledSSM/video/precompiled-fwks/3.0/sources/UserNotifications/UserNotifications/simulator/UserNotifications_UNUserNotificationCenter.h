#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UserNotifications_UNUserNotificationCenter_symbols(JSContext*);
@protocol UNUserNotificationCenterInstanceExports<JSExport>
@property (readonly,nonatomic) BOOL supportsContentExtensions;
@property (nonatomic,weak) id delegate;
-(void) removePendingNotificationRequestsWithIdentifiers: (NSArray *) identifiers ;
-(void) removeDeliveredNotificationsWithIdentifiers: (NSArray *) identifiers ;
JSExportAs(getNotificationSettingsWithCompletionHandler,
-(void) jsgetNotificationSettingsWithCompletionHandler: (JSValue *) completionHandler );
-(void) removeAllDeliveredNotifications;
JSExportAs(getPendingNotificationRequestsWithCompletionHandler,
-(void) jsgetPendingNotificationRequestsWithCompletionHandler: (JSValue *) completionHandler );
-(void) setNotificationCategories: (NSSet *) categories ;
JSExportAs(requestAuthorizationWithOptionsCompletionHandler,
-(void) jsrequestAuthorizationWithOptions: (UNAuthorizationOptions) options completionHandler: (JSValue *) completionHandler );
-(void) removeAllPendingNotificationRequests;
JSExportAs(getNotificationCategoriesWithCompletionHandler,
-(void) jsgetNotificationCategoriesWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(getDeliveredNotificationsWithCompletionHandler,
-(void) jsgetDeliveredNotificationsWithCompletionHandler: (JSValue *) completionHandler );
JSExportAs(addNotificationRequestWithCompletionHandler,
-(void) jsaddNotificationRequest: (UNNotificationRequest *) request withCompletionHandler: (JSValue *) completionHandler );
@end
@protocol UNUserNotificationCenterClassExports<JSExport>
+(UNUserNotificationCenter *) currentNotificationCenter;
@end
@protocol UNUserNotificationCenterDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
JSExportAs(userNotificationCenterWillPresentNotificationWithCompletionHandler,
-(void) jsuserNotificationCenter: (UNUserNotificationCenter *) center willPresentNotification: (UNNotification *) notification withCompletionHandler: (JSValue *) completionHandler );
JSExportAs(userNotificationCenterDidReceiveNotificationResponseWithCompletionHandler,
-(void) jsuserNotificationCenter: (UNUserNotificationCenter *) center didReceiveNotificationResponse: (UNNotificationResponse *) response withCompletionHandler: (JSValue *) completionHandler );
-(void) userNotificationCenter: (UNUserNotificationCenter *) center openSettingsForNotification: (UNNotification *) notification ;
@end
@protocol UNUserNotificationCenterDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop