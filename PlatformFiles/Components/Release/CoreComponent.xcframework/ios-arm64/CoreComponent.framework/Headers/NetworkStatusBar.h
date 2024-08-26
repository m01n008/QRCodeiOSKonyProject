//
//  NetworkStatusBar.h
//  VM
//
//  Created by User  on 07/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#define NETWORKSTATUSBAR_HEIGHT 43

/**
 *  UIBar to indicate network is in progress and provide option to cancel.
 *  No customizations are provided and no attempt to make it generic.
 */
@interface NetworkStatusBar : NSObject
{

@private
    UIView *view_;
    SEL cancelSelector;
    UIActivityIndicatorView *activityIndicator;
    id delegate;    //any object capable of executing selector;
}

@property (nonatomic,assign) SEL cancelSelector;

-(id) initWithDelegate:(id) aDelegate cancelSelector:(SEL) aCancelSelctor;

-(void) showWithOriginAt:(CGPoint) aOrigin parent:(UIView*) aParentView;

-(void) dismissView;

@end
