//
//  SliderModel.h
//  VM
//
//  Created by Rajeeva Ranjan on 27/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

@interface SliderModel : WidgetModel {
    NSNumber *minValue;
    NSNumber *maxValue;
    NSNumber *step;
    
    NSNumber *selectedValue;
    
    CallBack *onSlideCallBack;
    CallBack *onSelectCallBack;
    
    id thumbImage;
    id focusThumbImage;
    id minimumValueImage;
    id maximumValueImage;
    
    NSString *leftSkin;
    NSString *rightSkin;
    
    float maxCap;
    
    NSString *thumbTintColor;
}

@property (nonatomic, retain) NSNumber *minValue;
@property (nonatomic, retain) NSNumber *maxValue;
@property (nonatomic, retain) NSNumber *step;

@property (nonatomic, retain) NSNumber *selectedValue;

@property (nonatomic, retain) CallBack *onSlideCallBack;
@property (nonatomic, retain) CallBack *onSelectCallBack;

@property (nonatomic, retain) id thumbImage;
@property (nonatomic, retain) id focusThumbImage;
@property (nonatomic, retain) id minimumValueImage;
@property (nonatomic, retain) id maximumValueImage;

@property (nonatomic, retain) NSString *leftSkin;
@property (nonatomic, retain) NSString *rightSkin;

@property (nonatomic, assign) float maxCap;

@property (nonatomic, retain) NSString *thumbTintColor;
@property (nonatomic, readonly) BOOL retainFlowHorizontalAlignment;

@end
