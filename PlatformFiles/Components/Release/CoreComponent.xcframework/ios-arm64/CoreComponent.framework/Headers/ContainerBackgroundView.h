//
//  HeaderFooterView.h
//  VM
//
//  Created by KH206 on 21/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewDrawingDelegate.h"
#import "ViewLayoutDelegate.h"
#import "KonyGestureRecognizer.h"

@protocol ActionDelegate <NSObject>
-(void) hitPoint :(CGPoint) point;
@end

@interface ContainerBackgroundView : UIView

@property (nonatomic, weak) id<ViewLayoutDelegate> layoutDelegate;
@property (nonatomic, weak) id<ViewDrawingDelegate> drawingDelegate;
@property (nonatomic) BOOL requiresLayout;
@property (nonatomic, weak) id<ActionDelegate> hitDelegate;
@property (nonatomic, retain) KonyGestureRecognizer *gRecognizer;
@end
