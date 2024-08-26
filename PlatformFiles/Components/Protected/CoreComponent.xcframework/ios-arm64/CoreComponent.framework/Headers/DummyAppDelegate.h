//
//  DummyAppDelegate.h
//  VM
//
//  Created by Dhananjay on 13/07/17.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DummyAppDelegate : NSObject <UIApplicationDelegate>

//to show UIAlertController, we need to have a keywindow with a rootViewController
@property (strong, nonatomic) UIWindow *window;

@end
