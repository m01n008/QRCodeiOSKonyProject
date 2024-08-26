//
//  ScrollableBoxView.h
//  VM
//
//  Created by KH206 on 11/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDrawingDelegate.h"
#import "ViewLayoutDelegate.h"
#import "KonyGestureRecognizer.h"
#import "BoxWidgetBase.h"
#import "AccessibilityDelegate.h"

@interface ScrollableBoxView : UIScrollView <BoxViewGestureProtocol>
{
    CGFloat defaultBottomInset;
    CGFloat usedDefaultBottomInset;
}

//All the delegate vars made as strong as the widget has a weak ref of view

@property (nonatomic, weak) id<ViewLayoutDelegate> layoutDelegate;
@property (nonatomic, weak) id<ViewDrawingDelegate> drawingDelegate;

@property (nonatomic, assign) CGFloat defaultBottomInset;
@property (nonatomic, weak) id<AccessibilityDelegate> accessibilityDelegate;

-(id)initWithLayOutDelegate:(id<ViewLayoutDelegate>) lDelegate andDrawingDelegate:(id<ViewDrawingDelegate>) dDelegate;

@end
