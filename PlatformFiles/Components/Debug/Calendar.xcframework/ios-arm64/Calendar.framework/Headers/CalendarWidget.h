//
//  CalendarWidget.h
//  VM
//
//  Created by Rajeeva Ranjan on 01/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>
#import <CoreComponent/WheelWidgetHandler.h>

@interface CalendarWidget : Widget <WheelWidgetProtocol> {
    id subWidget;
}

@property (nonatomic,readonly)id subWidget;
@property (nonatomic,assign) WheelWidgetClosureType closureType;
+ (NSDate *)getDateFromArray:(NSArray *)value;
+ (BOOL)areDateComponentsValidDay:(int)day month:(int)month year:(int)year hour:(int)hour min:(int)min sec:(int)sec;
+ (CalendarIconAlignment)getIconAlignment:(CalendarIconAlignment)calendarIconAlignment forContentAlignment:(KonyWidgetContentAlignment)contentAlignment whenContentAlignmentMirrored:(BOOL)isContentAlignmentMirrored;
- (void) executeOnCancelCallback;
- (BOOL) isWheelWidget;
@end
