//
//  NotificationViewController.m
//  NotificationContentExtension
//
//  Created by Satya.bobba on 15/12/16.
//  Copyright © 2016 Satya.bobba. All rights reserved.
//

#import "NotificationViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <UserNotificationsUI/UserNotificationsUI.h>

@interface NotificationViewController () <UNNotificationContentExtension>


@end

@implementation NotificationViewController



- (void)didReceiveNotification:(UNNotification *)notification {
    [konyExtensionsRuntime executeCallback:@"didReceiveNotification" withArg:@[notification]];
}

- (void)didReceiveNotificationResponse:(UNNotificationResponse *)response completionHandler:(void (^)(UNNotificationContentExtensionResponseOption option))completion;
{
    UNNotificationContentExtensionResponseOption opt = UNNotificationContentExtensionResponseOptionDismissAndForwardAction;
   JSValue *value = [konyExtensionsRuntime executeCallback:@"didReceiveNotificationResponse" withArg:@[response]];
    if(value)
        opt = [value toUInt32];
    completion(opt);
}

- (void)viewDidLoad{
    [super viewDidLoad];
    [konyExtensionsRuntime executeCallback:@"viewDidLoad"];
}


- (void)loadView{
    [super loadView];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postExtensionContextToJS:) name:@"getextensionContext" object:nil];
    [[NSNotificationCenter defaultCenter]  addObserver:self selector:@selector(postViewToJS:) name:@"getView" object:nil];
    [konyExtensionsRuntime setup:self];
    [konyExtensionsRuntime executeCallback:@"loadView"];
}

- (void)didReceiveMemoryWarning{
    [konyExtensionsRuntime executeCallback:@"didReceiveMemoryWarning"];
    [super didReceiveMemoryWarning];
}

// Called when the view is about to made visible. Default does nothing
- (void)viewWillAppear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewWillAppear"];
    [super viewWillAppear:animated];
}

// Called when the view has been fully transitioned onto the screen. Default does nothing
- (void)viewDidAppear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewDidAppear"];
    [super viewDidAppear:animated];
}

// Called when the view is dismissed, covered or otherwise hidden. Default does nothing
- (void)viewWillDisappear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewWillDisappear"];
    [super viewWillDisappear:animated];
}

// Called after the view was dismissed, covered or otherwise hidden. Default does nothing
- (void)viewDidDisappear:(BOOL)animated{
    [konyExtensionsRuntime executeCallback:@"viewDidDisappear"];
    [super viewDidDisappear:animated];
}

- (void)presentViewController:(UIViewController*)viewControllerToPresent{
    [self presentViewController:(UIViewController*)viewControllerToPresent animated:true completion:NULL];
}

-(void)postExtensionContextToJS:(NSNotification*) notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self extensionContext] forKey:@"value"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postExtensionContextValue" object:NULL userInfo:info];
}
-(void)postViewToJS:(NSNotification*)notification{
    NSDictionary * info =[NSDictionary dictionaryWithObject:[self view] forKey:@"value"];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"postViewValue" object:NULL userInfo:info];
}

@end
