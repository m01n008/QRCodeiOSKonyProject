//
//  KonyTabBarControllerDelegate.h
//  KonyCustomTabBarDemo
//
//  Created by KH1244 on 23/05/13.
//  Copyright (c) 2013 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class KonyTabBarController;

@protocol KonyTabBarControllerDelegate <NSObject>

@optional

/** Asks the delegate whether the specified view controller should be made active. */
- (BOOL)tabBarController:(KonyTabBarController *)tabBarController
shouldSelectViewController:(UIViewController *)viewController
                 atIndex:(NSUInteger)index;

/** Tells the delegate that the user selected an item in the tab bar. */
- (void)tabBarController:(KonyTabBarController *)tabBarController
 didSelectViewController:(UIViewController *)viewController
                 atIndex:(NSUInteger)index;

/** Returns the startup forms (if any) configured for the viewcontroller. */
- (NSArray*) startupFormsForViewController:(UIViewController*) viewController;

@end
