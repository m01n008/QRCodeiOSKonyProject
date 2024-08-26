//
//  KonyGridCalendar.h
//  VM
//
//  Created by Girish Haniyamballi on 30/10/09.
//  Copyright 2009 Kony solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/KonyDS.h>
#import <CoreComponent/KonyWrapperDS.h>
#import "KLCalendarView.h"
#import "CheckmarkTile.h"

@class KonyCalendar;
@class GridCalendarSkin;
#define GRID_CALENDAR_HEIGHT 320
#define GRID_CALENDAR_WIDTH 320

//--- I18n Keys and Default values-----//

#define GRIDCALENDAR_INVALID_DATE_ERROR_TITLE_DEFAULT_VALUE @"Invalid Date selected"
#define GRIDCALENDAR_INVALID_DATE_ERROR_TITLE_KEY @"platform.gridcalendar.error.invaliddate.title"

#define GRIDCALENDAR_INVALID_DATE_ERROR_MSG_DEFAULT_VALUE @"Please select a valid date"
#define GRIDCALENDAR_INVALID_DATE_ERROR_MSG_KEY @"platform.gridcalendar.error.invaliddate.msg"

#define GRIDCALENDAR_INVALID_DATE_ERROR_OK_DEFAULT_VALUE @"OK"
#define GRIDCALENDAR_INVALID_DATE_ERROR_OK_KEY @"platform.gridcalendar.error.invaliddate.ok"

#define GRIDCALENDAR_DAY_NAMES_DEFAULT_VALUE @"DUMMY_VALUE"
#define GRIDCALENDAR_DAY_NAMES_KEY @"platform.gridcalendar.daynames"

//------------------------------------//

//-----------------New I18n Keys and Default values for week days-------------------//
#define GRIDCALENDAR_SUNDAY_DEFAULT_VALUE @"Sun"
#define GRIDCALENDAR_SUNDAY_DEFAULT_KEY @"platform.calendar.sunday"

#define GRIDCALENDAR_MONDAY_DEFAULT_VALUE @"Mon"
#define GRIDCALENDAR_MONDAY_DEFAULT_KEY @"platform.calendar.monday"

#define GRIDCALENDAR_TUESDAY_DEFAULT_VALUE @"Tue"
#define GRIDCALENDAR_TUESDAY_DEFAULT_KEY @"platform.calendar.tuesday"

#define GRIDCALENDAR_WEDNESDAY_DEFAULT_VALUE @"Wed"
#define GRIDCALENDAR_WEDNESDAY_DEFAULT_KEY @"platform.calendar.wednesday"

#define GRIDCALENDAR_THURSDAY_DEFAULT_VALUE @"Thu"
#define GRIDCALENDAR_THURSDAY_DEFAULT_KEY @"platform.calendar.thursday"

#define GRIDCALENDAR_FRIDAY_DEFAULT_VALUE @"Fri"
#define GRIDCALENDAR_FRIDAY_DEFAULT_KEY @"platform.calendar.friday"

#define GRIDCALENDAR_SATURDAY_DEFAULT_VALUE @"Sat"
#define GRIDCALENDAR_SATURDAY_DEFAULT_KEY @"platform.calendar.saturday"

//------------------------------------//

//-----------------New I18n Keys and Default values for months-------------------//
#define GRIDCALENDAR_JANUARY_DEFAULT_VALUE @"January"
#define GRIDCALENDAR_JANUARY_DEFAULT_KEY @"platform.calendar.january"

#define GRIDCALENDAR_FEBRUARY_DEFAULT_VALUE @"February"
#define GRIDCALENDAR_FEBRUARY_DEFAULT_KEY @"platform.calendar.february"

#define GRIDCALENDAR_MARCH_DEFAULT_VALUE @"March"
#define GRIDCALENDAR_MARCH_DEFAULT_KEY @"platform.calendar.march"

#define GRIDCALENDAR_APRIL_DEFAULT_VALUE @"April"
#define GRIDCALENDAR_APRIL_DEFAULT_KEY @"platform.calendar.april"

#define GRIDCALENDAR_MAY_DEFAULT_VALUE @"May"
#define GRIDCALENDAR_MAY_DEFAULT_KEY @"platform.calendar.may"

#define GRIDCALENDAR_JUNE_DEFAULT_VALUE @"June"
#define GRIDCALENDAR_JUNE_DEFAULT_KEY @"platform.calendar.june"

#define GRIDCALENDAR_JULY_DEFAULT_VALUE @"July"
#define GRIDCALENDAR_JULY_DEFAULT_KEY @"platform.calendar.july"

#define GRIDCALENDAR_AUGUST_DEFAULT_VALUE @"August"
#define GRIDCALENDAR_AUGUST_DEFAULT_KEY @"platform.calendar.august"

#define GRIDCALENDAR_SEPTEMBER_DEFAULT_VALUE @"September"
#define GRIDCALENDAR_SEPTEMBER_DEFAULT_KEY @"platform.calendar.september"

#define GRIDCALENDAR_OCTOBER_DEFAULT_VALUE @"October"
#define GRIDCALENDAR_OCTOBER_DEFAULT_KEY @"platform.calendar.october"

#define GRIDCALENDAR_NOVEMBER_DEFAULT_VALUE @"November"
#define GRIDCALENDAR_NOVEMBER_DEFAULT_KEY @"platform.calendar.november"

#define GRIDCALENDAR_DECEMBER_DEFAULT_VALUE @"December"
#define GRIDCALENDAR_DECEMBER_DEFAULT_KEY @"platform.calendar.december"

//------------------------------------//

//-----------------New I18n Keys and Default values for days-------------------//
#define GRIDCALENDAR_DAY1_DEFAULT_VALUE @"1"
#define GRIDCALENDAR_DAY1_DEFAULT_KEY @"platform.calendar.1"

#define GRIDCALENDAR_DAY2_DEFAULT_VALUE @"2"
#define GRIDCALENDAR_DAY2_DEFAULT_KEY @"platform.calendar.2"

#define GRIDCALENDAR_DAY3_DEFAULT_VALUE @"3"
#define GRIDCALENDAR_DAY3_DEFAULT_KEY @"platform.calendar.3"

#define GRIDCALENDAR_DAY4_DEFAULT_VALUE @"4"
#define GRIDCALENDAR_DAY4_DEFAULT_KEY @"platform.calendar.4"

#define GRIDCALENDAR_DAY5_DEFAULT_VALUE @"5"
#define GRIDCALENDAR_DAY5_DEFAULT_KEY @"platform.calendar.5"

#define GRIDCALENDAR_DAY6_DEFAULT_VALUE @"6"
#define GRIDCALENDAR_DAY6_DEFAULT_KEY @"platform.calendar.6"

#define GRIDCALENDAR_DAY7_DEFAULT_VALUE @"7"
#define GRIDCALENDAR_DAY7_DEFAULT_KEY @"platform.calendar.7"

#define GRIDCALENDAR_DAY8_DEFAULT_VALUE @"8"
#define GRIDCALENDAR_DAY8_DEFAULT_KEY @"platform.calendar.8"

#define GRIDCALENDAR_DAY9_DEFAULT_VALUE @"9"
#define GRIDCALENDAR_DAY9_DEFAULT_KEY @"platform.calendar.9"

#define GRIDCALENDAR_DAY10_DEFAULT_VALUE @"10"
#define GRIDCALENDAR_DAY10_DEFAULT_KEY @"platform.calendar.10"

#define GRIDCALENDAR_DAY11_DEFAULT_VALUE @"11"
#define GRIDCALENDAR_DAY11_DEFAULT_KEY @"platform.calendar.11"

#define GRIDCALENDAR_DAY12_DEFAULT_VALUE @"12"
#define GRIDCALENDAR_DAY12_DEFAULT_KEY @"platform.calendar.12"

#define GRIDCALENDAR_DAY13_DEFAULT_VALUE @"13"
#define GRIDCALENDAR_DAY13_DEFAULT_KEY @"platform.calendar.13"

#define GRIDCALENDAR_DAY14_DEFAULT_VALUE @"14"
#define GRIDCALENDAR_DAY14_DEFAULT_KEY @"platform.calendar.14"

#define GRIDCALENDAR_DAY15_DEFAULT_VALUE @"15"
#define GRIDCALENDAR_DAY15_DEFAULT_KEY @"platform.calendar.15"

#define GRIDCALENDAR_DAY16_DEFAULT_VALUE @"16"
#define GRIDCALENDAR_DAY16_DEFAULT_KEY @"platform.calendar.16"

#define GRIDCALENDAR_DAY17_DEFAULT_VALUE @"17"
#define GRIDCALENDAR_DAY17_DEFAULT_KEY @"platform.calendar.17"

#define GRIDCALENDAR_DAY18_DEFAULT_VALUE @"18"
#define GRIDCALENDAR_DAY18_DEFAULT_KEY @"platform.calendar.18"

#define GRIDCALENDAR_DAY19_DEFAULT_VALUE @"19"
#define GRIDCALENDAR_DAY19_DEFAULT_KEY @"platform.calendar.19"

#define GRIDCALENDAR_DAY20_DEFAULT_VALUE @"20"
#define GRIDCALENDAR_DAY20_DEFAULT_KEY @"platform.calendar.20"

#define GRIDCALENDAR_DAY21_DEFAULT_VALUE @"21"
#define GRIDCALENDAR_DAY21_DEFAULT_KEY @"platform.calendar.21"

#define GRIDCALENDAR_DAY22_DEFAULT_VALUE @"22"
#define GRIDCALENDAR_DAY22_DEFAULT_KEY @"platform.calendar.22"

#define GRIDCALENDAR_DAY23_DEFAULT_VALUE @"23"
#define GRIDCALENDAR_DAY23_DEFAULT_KEY @"platform.calendar.23"

#define GRIDCALENDAR_DAY24_DEFAULT_VALUE @"24"
#define GRIDCALENDAR_DAY24_DEFAULT_KEY @"platform.calendar.24"

#define GRIDCALENDAR_DAY25_DEFAULT_VALUE @"25"
#define GRIDCALENDAR_DAY25_DEFAULT_KEY @"platform.calendar.25"

#define GRIDCALENDAR_DAY26_DEFAULT_VALUE @"26"
#define GRIDCALENDAR_DAY26_DEFAULT_KEY @"platform.calendar.26"

#define GRIDCALENDAR_DAY27_DEFAULT_VALUE @"27"
#define GRIDCALENDAR_DAY27_DEFAULT_KEY @"platform.calendar.27"

#define GRIDCALENDAR_DAY28_DEFAULT_VALUE @"28"
#define GRIDCALENDAR_DAY28_DEFAULT_KEY @"platform.calendar.28"

#define GRIDCALENDAR_DAY29_DEFAULT_VALUE @"29"
#define GRIDCALENDAR_DAY29_DEFAULT_KEY @"platform.calendar.29"

#define GRIDCALENDAR_DAY30_DEFAULT_VALUE @"30"
#define GRIDCALENDAR_DAY30_DEFAULT_KEY @"platform.calendar.30"

#define GRIDCALENDAR_DAY31_DEFAULT_VALUE @"31"
#define GRIDCALENDAR_DAY31_DEFAULT_KEY @"platform.calendar.31"

//------------------------------------//
@class CalendarModel;
@interface GridCalendarWidget : UIViewController <KLCalendarViewDelegate> {

	KLCalendarView *gridCalendar;
	KLTile *currentTile;
	NSArray* dayNames;
	CalendarCellSkin	*cellSkin;
	CalendarCellSkin	*selectedCellSkin;
    CalendarCellSkin	*todayCellSkin;
    CalendarCellSkin	*weekEndCellSkin;
    CalendarCellSkin	*nonActiveCellSkin;    
	CalendarCellSkin	*daysSkin;
	CalendarCellSkin	*gridLineSkin;
	UIColor*	gridLineColour;
    NSInteger gridLineWidth;
	NSMutableArray* overRiddenDates;
    //CalendarCellSkin *overRiddenSkin;
	CGFloat adjustmentHeight;
	KLDate* selectedDate;
	float leftMargin, rightMargin, topMargin, bottomMargin;
	float leftPadding, rightPadding, topPadding, bottomPadding;
    NSMutableDictionary* widgetContent;
    BOOL lEnable;
    BOOL tEnable;
    BOOL divisionFlag;
    BOOL enableAll;
    BOOL allowWeakEndselection;
    CalendarModel *  model;
    BOOL   requiresLayout;
    BOOL requiresFixedHeightForSIPView;
}
@property (nonatomic,assign) BOOL   requiresLayout;
@property (nonatomic, retain)     CalendarModel *  model;
@property (nonatomic,retain ) 	CalendarCellSkin	*cellSkin;
@property (nonatomic,retain ) 	CalendarCellSkin	*selectedCellSkin;
@property (nonatomic,retain ) 	CalendarCellSkin	*todayCellSkin;
@property (nonatomic,retain ) 	CalendarCellSkin	*weekEndCellSkin;
@property (nonatomic,retain ) 	CalendarCellSkin	*nonActiveCellSkin;    
@property (nonatomic,retain ) 	CalendarCellSkin	*daysSkin;

@property (nonatomic, retain)  NSMutableArray* overRiddenDates;
@property (nonatomic, weak) KonyCalendar* konyCal;
@property (nonatomic,retain) CalendarCellSkin* gridLineSkin;
@property (nonatomic,retain) KLCalendarView  * gridCalendar;
@property (nonatomic, retain) KLTile *currentTile;
@property (nonatomic,retain) KLDate* selectedDate;
@property (nonatomic, strong) NSMutableDictionary* widgetContent;
@property (nonatomic, assign) BOOL requiresFixedHeightForSIPView;

//New methods
- (id)initWithModel:(CalendarModel *)calanderModel;


// do not override this, if ur class has frame property
- (void)setViewFrame:(CGRect)rect;


- (id)clone;

- (CGSize)getPreferredSizeForGivenSize:(CGSize)givenSize;
- (void) applyDateRange ;
-(void) setSelectedDateWithDay:(NSInteger) day Month:(NSInteger) month andYear:(NSInteger) year;
-(void) refreshViewWithNewData;
-(void) refreshSkins;
-(void) moveToDateWithDay:(NSInteger) days month:(NSInteger)month andYear:(NSInteger) year;
-(void) updateShadowProperties;
-(CalendarCellSkin*) getGridCellSkinOfCellType:(NSString*) cellType;
+(void) applySkin:(GridCalendarSkin*) skin OnRect:(CGRect) rect;
+(void)layoutCellTemplate :(KLTile *)atile;
@end
