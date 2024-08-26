//
//  PickerViewWidget.h
//  VM
//
//  Created by Rajeeva Ranjan on 15/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <CoreComponent/Widget.h>

@interface PickerViewWidget : Widget <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    UIPickerView        *pickerView;
    NSMutableArray      *masterData;
}
- (NSMutableArray *)getMasterData;
- (void)selectValuesInPickerView: (NSMutableArray*) selectIndices;
- (void) setSelectedKeyInComponent: (NSInteger) compIndex withKey : (NSString*) selectedKey;
- (void) setComponentDataAt: (NSInteger) compIndex withData : (NSMutableArray*) data;

@end
