//
//  SingleItemPicker.h
//  VM
//
//  Created by Sunil Nimmagadda on 06/04/12.
//  Copyright (c) 2012 Kony Labs. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <CoreComponent/PickerControl.h>
#import "GroupWidgetSkin.h"
#import <CoreComponent/WheelWidgetHandler.h>
#import <CoreComponent/ViewDrawingDelegate.h>

@interface SingleItemPicker : Widget<UIPickerViewDelegate, UIPickerViewDataSource, WheelWidgetProtocol>
{
    UIPickerView *pickerView; 
    NSInteger selectedIndex;
    PickerControl* pickerControl;
    BOOL isOnSelectionClosureDirty;
    NSMutableArray  *masterData;
    BOOL isClosureExecuted;
}
@property (nonatomic,assign) WheelWidgetClosureType closureType;
@property (readwrite, retain) UIPickerView *pickerView;
@property (readwrite, retain) PickerControl *pickerControl;
@property (nonatomic, weak) Widget<WheelWidgetProtocol> *superWidget;
@property (nonatomic, copy) NSMutableArray  *masterData;

-(void) updatePickerControlTitle;
-(void) masterDataUpdatedWithNewValue: (id) newValue oldValue: (id) oldValue;
- (void) masterDataMapUpdatedWithNewValue: (id) newValue oldValue: (id) oldValue;
-(GroupWidgetSkin*) getFocusSkin;
-(float) getTopPadding;
-(float) getBottomPadding;
-(float) getLeftPadding;
- (void)applyPickerControlSkin:(skinType)skintype;
@end
