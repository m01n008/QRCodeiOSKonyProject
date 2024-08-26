//
//  FormView.h
//  VM
//
//  Created by KH206 on 23/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDrawingDelegate.h"
#import "ViewLayoutDelegate.h"
#import "AccessibilityDelegate.h"

@interface ContentView : UIScrollView
{

    BOOL requiresLayout;
    CGFloat defaultBottomInset; //
    CGFloat usedDefaultBottomInset;
}

@property (nonatomic, weak) id<ViewLayoutDelegate> layoutDelegate;
@property (nonatomic) BOOL requiresLayout;
@property (nonatomic, assign) CGFloat defaultBottomInset;
@property (nonatomic, weak) id<AccessibilityDelegate> accessibilityDelegate;

@end
