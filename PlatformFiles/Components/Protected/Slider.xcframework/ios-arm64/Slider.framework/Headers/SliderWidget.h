//
//  SliderWidget.h
//  VM
//
//  Created by Rajeeva Ranjan on 27/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>
#import "SliderSkin.h"

@interface CustomSlider : UISlider

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event;

@end

@interface SliderWidget : Widget {
	CustomSlider* iSlider;
}

- (SliderSkin *)getLeftSkin;
- (SliderSkin *)getRightSkin;

//Sets int value to slider taking into consideration step, min & max
- (void)setNormalizedValueToSlider;
- (void)setNormalizedValueToSliderForVoiceOver;

@end
