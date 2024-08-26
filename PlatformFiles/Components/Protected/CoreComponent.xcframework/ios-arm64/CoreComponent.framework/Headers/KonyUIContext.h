//
//  KonyUIContext.h
//  VM
//
//  Created by Amba on 08/08/11.
//  Copyright 2011 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface KonyUIContext : NSObject {
    
}

// For Presenting the modalViewController on the currentFormController
+ (void) onCurrentFormControllerPresentModalViewController:(UIViewController *)modalViewController animated:(BOOL)animated; // Display another view controller as a modal child. Uses a vertical sheet transition if animated.

// For Presenting the modalViewController on the currentForm's navigationController
+ (void) onNavigationControllerPresentModalViewController:(UIViewController *)modalViewController animated:(BOOL)animated; // Display another view controller as a modal child. Uses a vertical sheet transition if animated.

// After dealing with the new window to present custom UI,
// For making Kony UI Window keyWindow and visible.
+ (void) makeKonyUIWindowKeyAndVisible;

@end
