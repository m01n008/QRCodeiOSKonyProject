//
//  OnScreenGridCalendar.h
//  VM
//
//  Created by Rajeeva Ranjan on 01/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>
#import "GridCalendarWidget.h"

@interface OnScreenGridCalendar : Widget

@property (nonatomic) GridCalendarWidget* gridCalanderWidget;

-(void) refreshCalanderView;

@end

