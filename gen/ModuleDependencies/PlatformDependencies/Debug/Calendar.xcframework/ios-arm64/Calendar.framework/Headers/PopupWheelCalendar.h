//
//  PopupWheelCalendar.h
//  VM
//
//  Created by KH165 on 09/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>
#import "CalendarSkin.h"
#import <CoreComponent/WheelWidgetHandler.h>
#import <CoreComponent/PickerControl.h>

@interface PopupWheelCalendar : Widget <WheelWidgetProtocol> {
    UIDatePicker *iDatePicker;
	PickerControl<WheelViewProtocol> *pickerControl;
}

@property (nonatomic,assign) WheelWidgetClosureType closureType;
@property (nonatomic, retain) UIDatePicker *iDatePicker;
@property (nonatomic, retain) PickerControl *pickerControl;
@property (nonatomic) Widget<WheelWidgetProtocol> *superWidget;

- (void)updatePickerControlTitle;
- (UIView *)getInputView;
- (void)updateModelWithDatePicker;
- (CalendarSkin *)getFocusSkin;
- (void)applyPickerControlSkin:(skinType)skintype;

@end
