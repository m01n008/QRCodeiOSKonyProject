//
//  CalendarModel.h
//  VM
//
//  Created by Rajeeva Ranjan on 01/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

/* To make things simple : day, month, year, hour, minutes & second are taken to be Primary properties.
 i.e. (a)external property updates to date and datecomponents will update these primary properties
      (b)individual views will update themselves using these primary properties only.
 */

@interface CalendarModel : WidgetModel {
    
    NSMutableArray *date;
    NSMutableArray *dateComponents;
    NSMutableArray *validStartDate;
    NSMutableArray *validEndDate;

    NSString *dateFormat;
    NSString *formattedDate;
    
    NSInteger day;
    NSInteger month;
    NSInteger year;
    NSInteger hour;
    NSInteger minutes;
    NSInteger seconds;
    
    CalendarViewType viewType;
    CalendarMode mode;
    CalendarStyle calendarStyle;
    
    NSString *focusSkinID;
    CallBack *onSelection;
    
    id calendarIcon;
    NSString *placeholder;
    KonyWidgetContentAlignment contentAlignment;
    CalendarIconAlignment calendarIconAlignment;
    NSMutableDictionary *viewConfig;
    NSMutableDictionary *i18nConfig;
    //Grid Calendar related data
    NSMutableArray* datesWithOverriddenSkin;
    NSMutableArray *enabledStartDate;
    NSMutableArray *enabledEndDate;
    NSMutableArray *disabledStartDate;
    NSMutableArray *disabledEndDate;
    NSString*  overriddenSkinID;
    NSDictionary *enableOrDisableDates;
    NSArray* enabledDates;
    NSArray* disabledDates;
    BOOL hideDaysHeader;
    BOOL hideMonthsHeader;
    BOOL hidePreviousNextMonthDates;
    BOOL navigateToNextMonth;
    BOOL navigateToPreviousMonth;
    NSArray* displayedMonth; //date in format dd/mm/yyyy
    KonyWidgetContentAlignment dayTextAlignmentInCell;
    WidgetModel *cellTemplate;
    NSDictionary *widgetDataMapForCell;
    NSMutableDictionary* cellData;
    NSString *wheelBackgroundColor;
    CallBack *onDone;
    CallBack *onCancel;
    KonyInputAccessoryViewTypes inputAccessoryViewType;
}
@property (nonatomic, assign) KonyInputAccessoryViewTypes inputAccessoryViewType;
@property (nonatomic, retain)  NSArray* enabledDates;
@property (nonatomic, retain)  NSArray* disabledDates;
@property (nonatomic, retain)  NSMutableArray *enabledStartDate;
@property (nonatomic, retain)  NSMutableArray *enabledEndDate;
@property (nonatomic, retain)  NSMutableArray *disabledStartDate;
@property (nonatomic, retain)  NSMutableArray *disabledEndDate;
@property (nonatomic, retain)  NSString       *overriddenSkinID;
@property (nonatomic, retain)  NSDictionary *enableOrDisableDates;

@property (nonatomic, retain)  NSMutableArray* datesWithOverriddenSkin;
@property (nonatomic, retain) NSMutableArray *date;
@property (nonatomic, retain) NSMutableArray *dateComponents;
@property (nonatomic, retain) NSMutableArray *validStartDate;
@property (nonatomic, retain) NSMutableArray *validEndDate;

@property (nonatomic, retain) NSString *dateFormat;
@property (nonatomic, retain) NSString *formattedDate;

@property (nonatomic) NSInteger day;
@property (nonatomic) NSInteger month;
@property (nonatomic) NSInteger year;
@property (nonatomic) NSInteger hour;
@property (nonatomic) NSInteger minutes;
@property (nonatomic) NSInteger seconds;

@property (nonatomic) CalendarViewType viewType;
@property (nonatomic) CalendarMode mode;
@property (nonatomic) CalendarStyle calendarStyle;

@property (nonatomic, retain) NSString *focusSkinID;
@property (nonatomic, retain) CallBack *onSelection;

@property (nonatomic, retain) id calendarIcon;
@property (nonatomic, retain) NSString *placeholder;
@property (nonatomic) KonyWidgetContentAlignment contentAlignment;
@property (nonatomic) CalendarIconAlignment calendarIconAlignment;
@property (nonatomic, retain) NSMutableDictionary *viewConfig;
@property (nonatomic, retain) NSMutableDictionary *i18nConfig;
@property (nonatomic, assign) BOOL navigateToNextMonth;
@property (nonatomic, assign) BOOL navigateToPreviousMonth;
@property (nonatomic,assign)  BOOL hideDaysHeader;
@property (nonatomic,assign)  BOOL hideMonthsHeader;
@property (nonatomic,assign) BOOL hidePreviousNextMonthDates;
@property (nonatomic,retain)   NSArray* displayedMonth;
@property (nonatomic) KonyWidgetContentAlignment dayTextAlignmentInCell;
@property (nonatomic, retain) WidgetModel *cellTemplate;
@property (nonatomic, retain) NSDictionary *widgetDataMapForCell;
@property (nonatomic,retain)    NSMutableDictionary* data;
@property (nonatomic,retain)     NSMutableDictionary* cellData;
@property (nonatomic, retain)NSString *wheelBackgroundColor;
@property (nonatomic,retain) CallBack *onDone;
@property (nonatomic,retain) CallBack *onCancel;

-(void) reformatDataKeys;
- (NSString *)formattedDateForTitle;
- (void) executeOnCancelCallback;

@end
