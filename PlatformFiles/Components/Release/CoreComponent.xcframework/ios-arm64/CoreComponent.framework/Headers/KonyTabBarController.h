//
//  KonyTabBarController.h
//  KonyCustomTabBarDemo
//
//  Created by KH1244 on 23/05/13.
//  Copyright (c) 2013 Kony Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyTabBarControllerDelegate.h"
#import "KonyTabBar.h"
#import "KonyTabBarPosition.h"
#import "KonyTabItem.h"


@interface KonyTabBarController : UIViewController

@property (nonatomic, retain) NSArray *viewControllers;
@property (nonatomic, assign) NSUInteger selectedIndex;
@property (nonatomic, unsafe_unretained) UIViewController *selectedViewController;
@property (nonatomic, unsafe_unretained) id<KonyTabBarControllerDelegate> delegate;
@property (nonatomic, strong, readonly) KonyTabBar *konyTabBar;
// Added dummy property, since iOS7 is depending on this UITabBar property for setting bounds of UINavigationController 
@property (nonatomic, strong, readonly) UITabBar *tabBar;
@property (nonatomic, assign) KonyTabBarPosition tabBarPosition;
@property (nonatomic, strong) UIButton *indicator;
@property (nonatomic, readwrite) CGFloat itemDimension;

- (id) initWithDelegate:(id<KonyTabBarControllerDelegate>)delegate;
- (void) setTabBarHidden:(BOOL)tabBarHidden animated:(BOOL)animated;
- (void) initializeController;
- (void) enableTabBar;
- (void) disableTabBar;

@end
