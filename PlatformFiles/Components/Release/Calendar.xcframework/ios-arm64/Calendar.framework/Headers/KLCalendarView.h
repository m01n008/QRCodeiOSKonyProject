/*
 * Copyright (c) 2008, Keith Lazuka, dba The Polypeptides
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *	- Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *	- Neither the name of the The Polypeptides nor the
 *	  names of its contributors may be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 * 
 * THIS SOFTWARE IS PROVIDED BY Keith Lazuka ''AS IS'' AND ANY
 * EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL Keith Lazuka BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */


#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>
#import "KLTile.h"
#import "KLDate.h"
#import "GridCalendarSkin.h"

#define KL_CHANGE_MONTH_BUTTON_WIDTH    44.0f
#define KL_CHANGE_MONTH_BUTTON_HEIGHT   32.0f
#define KL_SELECTED_MONTH_WIDTH        200.0f
#define KL_HEADER_HEIGHT                70.0f
#define KL_HEADER_FONT_SIZE             21.0f

@class KLCalendarModel, KLGridView, KLTile, CalendarModel, GridCalendarWidget;

@protocol KLCalendarViewDelegate;

@interface KLCalendarView : UIView
{
    KLCalendarModel *_model;
    UILabel *_selectedMonthLabel;
    KLGridView *_grid;
    NSMutableArray *_trackedTouchPoints;  // the gesture's sequential position in calendar view coordinates
	@public
	KLDate* startDate;
	KLDate* endDate;
	BOOL isDateRangeRequired;
	BOOL isInitialised;
	UIButton *previousMonthButton;
	UIButton *nextMonthButton;
	BOOL isVisible;
	id leftNavImage;
	id rightNavImage;
	GridCalendarSkin	*calSkin;
    KLDate *start;
    KLDate *end;
    NSArray *dayNameArray;
    NSMutableArray* dayNameLabels;
    
}
@property(nonatomic,retain) id leftNavImage;
@property(nonatomic,retain) id rightNavImage;
@property(nonatomic,retain) GridCalendarSkin	*calSkin;
@property(nonatomic, weak) GridCalendarWidget *delegate;
@property(nonatomic, retain) KLGridView *grid;
@property (nonatomic,retain) KLDate* startDate;
@property (nonatomic,retain) KLDate* endDate;
@property (nonatomic,retain) KLDate* start;
@property (nonatomic,retain) KLDate* end;
@property (nonatomic,assign) BOOL isVisible;
@property (nonatomic, weak) NSMutableDictionary* widgetContent;
@property(nonatomic,retain)     KLCalendarModel *calanderModel;
@property (nonatomic, retain)  NSArray* dayNameArray;
- (id)initWithFrame:(CGRect)frame delegate:(id)delegate andSkin:(GridCalendarSkin*) skin ;

- (KLTile *)leftNeighborOfTile:(KLTile *)tile;
- (KLTile *)rightNeighborOfTile:(KLTile *)tile;
- (void)redrawNeighborsAndTile:(KLTile *)tile;			// when zooming in, only redraw the chosen tile and adjacent tiles
- (void)redrawPreviousTile:(KLTile *)tile;
- (void)redrawAllTiles;
- (NSString *)selectedMonthName;
- (NSInteger)selectedMonthNumberOfWeeks;
-(void)setViewFrame:(CGRect) viewFrame;
-(void) moveToDateWithDay:(NSInteger) days month:(NSInteger)month andYear:(NSInteger) year;
- (void)refreshViewWithPushDirection:(NSString *)caTransitionSubtype;
//-(CGFloat) getCalanderHeaderHeight;
- (CGFloat)headerHeight;
- (void)showFollowingMonth:(KLTile *)tile;
- (void)showPreviousMonth:(KLTile *)tile;
- (void)addUI;
@end

//
// The delegate for handling date selection and appearance
//  
//     NOTES: Your application controller should implement this protocol 
//            to create & configure tiles when the selected month changes,
//            and in order to respond to the user's taps on tiles.
// 
@protocol KLCalendarViewDelegate <NSObject>
@required
- (void)calendarView:(KLCalendarView *)calendarView tappedTile:(KLTile *)aTile;
- (void)calendarView:(KLCalendarView *)calendarView setTileSkinForDate:(KLDate *)date  withTile:(KLTile*)atile;
- (void) setTileSkinForDate:(KLDate *)date forTile: (KLTile *)atile;
-(BOOL) isSkinForWeekendAvailable;
-(BOOL) isSkinForNonActiveDaysAvailable; //this includes days in next previous month and invalid days in ucrrent month if range specified.
- (void)didChangeMonths;
-(CalendarModel*) getCalanderModel;
@optional
- (void)wasSwipedToTheLeft;
- (void)wasSwipedToTheRight;
-(NSArray*) getSelectedMonthWithYear;
@end
