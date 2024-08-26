//
//  OnScreenWheel.h
//  VM
//
//  Created by Rajeeva Ranjan on 15/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupWidget.h"

@interface OnScreenWheel : Widget <UIPickerViewDelegate, UIPickerViewDataSource> {
    UIPickerView                *pickerView;
    NSInteger                         selectedIndex;
    NSMutableArray              *localcopymasterData;

}

@property (nonatomic, copy) NSMutableArray  *localcopymasterData;

- (int) getSelectedIndex:(NSString*)selectedKey;

@end