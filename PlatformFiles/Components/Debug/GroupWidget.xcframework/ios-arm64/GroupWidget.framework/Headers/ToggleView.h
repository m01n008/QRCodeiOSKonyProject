//
//  ToggleView.h
//  VM
//
//  Created by Rajeeva Ranjan on 16/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GroupWidget.h"
#import "GroupWidgetSkin.h"

@interface ToggleView : Widget {
	UISegmentedControl          *segmentedControl;
    NSMutableArray              *segmentWidths;
    BOOL                        isSegEqual;
    NSMutableArray              *masterData;
}

@property (nonatomic, copy) NSMutableArray  *masterData;

- (void) loadData:(NSMutableArray*)masterData;

//Hepler methods
- (CGSize) suggestSizeForText: (NSString*) text withFont: (UIFont*) font  forHeight: (float) height;
NSInteger intSort(id num1, id num2, void *context);

@end
