//
//  UIViewController_CustomAppMenu.h
//  VM
//
//  Created by KH1244 on 28/05/13.
//
//

#import <UIKit/UIKit.h>

@class KonyTabItem;
@class KonyTabBarController;

@interface UIViewController ()

@property (nonatomic, strong) KonyTabItem *tabItem;
@property (nonatomic, readwrite)   KonyTabBarController *tabBarController;

@end
