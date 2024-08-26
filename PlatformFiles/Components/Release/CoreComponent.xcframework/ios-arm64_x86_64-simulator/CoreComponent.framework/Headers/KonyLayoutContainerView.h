//
//  FormControllerRootView.h
//  VM
//
//  Created by KH206 on 26/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Widget.h"
@interface KonyLayoutContainerView : UIView
{
    Widget *contentWidget;
    CGRect previousLayoutRect;
}

@property (nonatomic, retain) Widget* contentWidget;
@property (nonatomic, readwrite) BOOL statusBarVisibility;
-(void) intimateLayoutManagerIfAnimationsDefined:(Widget*) widget;
-(void) refreshContainerView:(BOOL) forceLayout_;
@end
