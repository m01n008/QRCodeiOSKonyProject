//
//  GroupWidget.h
//  VM
//
//  Created by Rajeeva Ranjan on 13/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/Widget.h>
#import <CoreComponent/WheelWidgetHandler.h>

@interface GroupWidget : Widget <WheelWidgetProtocol> {
    id subWidget;
}
@property(nonatomic,readonly) id subWidget;
@property (nonatomic,assign) WheelWidgetClosureType closureType;

-(void) updateShadowProperties;
-(BOOL) isWheelWidget;
@end
