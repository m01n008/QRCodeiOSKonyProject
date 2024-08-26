//
//  MLCameraModel.h
//  Image
//
//  Created by Sneha Kolukuluri on 17/10/2019.
//  Copyright © 2019 Kony Labs. All rights reserved.
//

#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/Widget.h>
#import <APIComponent/ImageClassifierObject.h>

API_AVAILABLE(ios(11.0))
@interface MLCameraModel : WidgetModel


@property (nonatomic, readwrite, strong) ImageClassifier *imageClassifierobj;

//Callback called when camera preview is unavailable.
@property (nonatomic, readwrite) CallBack *onFailure;

-(void)setImageClassifier:(id)imgClassifier;
-(void)startDetection;
-(void)stopDetection;
- (Widget*) createWidget;

@end
