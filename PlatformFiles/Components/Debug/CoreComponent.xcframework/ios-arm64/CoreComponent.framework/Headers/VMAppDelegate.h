//
//  VMAppDelegate.h
//  VM
//
//  Created by Srikanth Tamalampudi on 01/07/08.
//  Copyright Kony Labs 2008. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>
#import "KonyUtil.h"
#import "PlatformConstants.h"
#import "splashView.h"
#import "KonyUIApplication.h"
#import <UserNotifications/UNUserNotificationCenter.h>
#import <PassKit/PassKit.h>
#import "KonyTrafficInspector.h"

@class KonyViewController;
@class CallBack;
@class KonySplash;

@interface VMThread : NSThread

@property(readwrite, assign) NSRunLoop* runLoop;
@property(readwrite, assign) BOOL shouldKeepRunning;

@end

typedef enum {
    BackgroundTaskTypeWatchKitRequest,
    BackgroundTaskTypePreActivityRequest,
    BackgroundTaskTypeActivityRequest,
    BackgroundTaskTypeNotificationActionRequestLocal,
    BackgroundTaskTypeNotificationActionRequestRemote
}BackgroundTaskType;

@interface BackgroundTask : NSObject

@property(readwrite, assign) BackgroundTaskType backgroundTaskType;
@property(readwrite, assign) UIBackgroundTaskIdentifier taskID;
@property(readwrite) NSMutableArray *args;
@property(readwrite, assign) void (^replyFromBackgroundTask)(NSDictionary *replyInfo);

@end

/*
@interface UINavigationBar (CustomImageBar)

NSString * bgImageName;

-(void) setBackgroundImage: (NSString*) imageName;

@end
*/

@interface VMAppDelegate : NSObject <UIApplicationDelegate,PlatformConstantsDelegate, splashViewDelegate,UNUserNotificationCenterDelegate, PKPaymentAuthorizationControllerDelegate>
{
	UIWindow *window;	
	KonyViewController *konyViewController;
	NSMutableArray	* formList;
	NSMutableArray  * recentlyAccessedForms;
	BOOL					isPurgeInProgress;
	SystemSoundID dingSoundID;
	NetworkConnection* networkConnection;
	//CachedDictionary* imageCache;
    uint mAppMode; //konyhybrid
    
    splashView* mySplash;
    NSMutableArray *backgroundTasksQueue;
    dispatch_queue_t backgroundTasksDispatchQueue;
    //new variables to support opening of app through openURL when receiving app is installed in debug mode...
    BOOL deferHandleStartup;
    UIApplication *appInstance;
    NSURL *openURL;
}


@property(readwrite) UIPickerView* pickerView;
@property(readwrite, assign) BOOL isPurgeInProgress;
@property (readwrite) VMThread *closureThread;
@property (readwrite) VMThread *networkThread;
@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UIWindow *nativeWindow;
@property (nonatomic, retain) id<UIApplicationDelegate> nativeAppDelegate;
@property (nonatomic, retain) KonyViewController *konyViewController;
@property (nonatomic) NSMutableArray *recentlyAccessedForms;
@property (readwrite) NetworkConnection *networkConnection;
//@property (readwrite, assign) CachedDictionary* imageCache;

@property(readwrite, retain) splashView* mySplash;

-(void)KonyExecute;
- (void) konyLibraryInitialization;

// konyhybrid
- (void)setApplicationMode:(uint)_mode;

- (uint)applicationMode;

-(void) resetApp;

- (void)konyApplicationDidFinishLaunching:(UIApplication *)application ;

- (id)getPTableFromNsDictionary:(NSDictionary *)dsTable ;

- (id)getPTableFromNsDictionary:(NSDictionary *)dsTable;

- (void)launchRemoteNotificationCallback:(CallBack *)notificationCall withUserInfo:(NSDictionary *)userInfo actionID:(NSString*) identifier;
- (void)launchLocalNotificationCallback:(CallBack *)notificationCall withLocalNotification:(id)obj actionID:(NSString*) identifier;

- (void)callOnWatchRequestForSession:(id)session withMessage:(NSDictionary<NSString *, id> *)message andHandler:(void(^)(NSDictionary<NSString *, id> *replyMessage))replyHandler;
// The following methods are needed for Debugger
- (void)executeJSApplication;
- (void)initializeApplication;
- (void)handleApplicationOpenURL;
- (void)handleApplicationCallBacksAndStartUpForm;
-(NSMutableArray*) getLaunchEventValues;

@end

