//
//  BoxView.h
//  VM
//
//  Created by Uday Bheema on 23/01/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDrawingDelegate.h"
#import "ViewLayoutDelegate.h"
#import "KonyGestureRecognizer.h"
#import "BoxWidgetBase.h"

@interface BoxView : UIView <BoxViewGestureProtocol>

@property (nonatomic, weak) id<ViewLayoutDelegate> layoutDelegate;
@property (nonatomic, weak) id<ViewDrawingDelegate> drawingDelegate;
@property (nonatomic, weak) id<AccessibilityDelegate> accessibilityDelegate;

-(id)initWithLayOutDelegate:(id<ViewLayoutDelegate>) lDelegate andDrawingDelegate:(id<ViewDrawingDelegate>) dDelegate;

@end
