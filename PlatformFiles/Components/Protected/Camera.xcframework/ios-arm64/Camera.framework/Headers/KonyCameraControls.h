//
//  KonyCameraControls.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 15/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define MAX_ALLOWED_ZOOM	4	// 5X (times) zoom

//#define KONYCAMERA_CONTROLBAR_HEIGHT	54
#define KONYCAMEA_DEFAULTBURSTCOUNT     2


#define KONYCAMERA_INTERNALPROPERTIES_BIGBUTTON	@" TAP ANYWHERE "
#define KONYCAMERA_INTERNALPROPERTIES_ZOOMMODE	@" ZOOM "
#define KONYCAMERA_INTERNALPROPERTIES_TIMERMODE	@" TIMER "
#define KONYCAMERA_INTERNALPROPERTIES_BURSTMODE	@" BURST MODE "
#define KONYCAMERA_INTERNALPROPERTIES_VIDEOMODE	@" VIDEO MODE "

/**
 * @Brief interace that KonyCamera Control's Delegate should implement 
 */
@protocol KonyCameraControlBarDelegate <NSObject>

@required
/** method that handles user action for BigButton Control */
-(void) bigButtonUserAction;
/** method that handles user action for Zoom Control */
-(void) zoomUserAction;
/** method that handles user action for Timer Control (notify) */
-(void) timerUserAction;

@end	/* KonyCameraControlBarDelegate	*/




/**
 * @Brief interface that all KonyCamera Controls should implement
 */
@protocol KonyCameraControlDelegate <NSObject>

/** toggle the state of control, disable/enable */
-(void) toggleEnabled;

/** disable control */
-(void) disableControl;

/** enable control */
-(void) enableControl;

/** get the UIView (widget view) for control */
-(id) getWidgetView;

/** reset control to default values */
-(void) resetControl;

/** set the default values to Camera Controls */
-(void) setDefaultValues:(NSArray*) defaultValues;

@end	/*	KonyCameraControlDelegate	*/





/**
 *  @Brief UIControl Object responsible for Big Button Functionality for KonyCamera.
 *
 *  This UIControl occupies given frame and delegates the user action to assigned delegate.
 *  Frame and Background color are set at the time of construction and remain constant throughout object life time.
 * 
 */
@interface BigButtonControl : UIControl <KonyCameraControlDelegate>
{
	id <KonyCameraControlBarDelegate>bbcDelegate;			/**< BigButton Delegate - Handles the User action for Big button  */
	CGRect bbcRect;											/**< Big Button Size - Calcualated as (size) rect of UIScreen - KonyCameraControlBar rect */
	UIColor *bbcBackgroundColor;							/**< Big Button background color - Defaulted to clear color	*/
}

@property (nonatomic,assign) CGRect bbcRect;
@property (nonatomic,retain) UIColor *bbcBackgroundColor;
@property (nonatomic,retain) id bbcDelegate;


-(id)initWithDelegate:(id)delegate  frame:(CGRect)rect backgroundColor:(UIColor*) bgColor;
-(void) toggleEnabled;
-(BOOL) isBigButtonEnabled;

@end	/*  BigButtonControl	*/




/**
 *  @Brief KonyCamera Control Object responsible for Zoom Functionality for KonyCamera.
 *
 *  This Control is responsible forupdating the zoom value as per touch events and delegates the user action to assigned delegate.
 *	
 */

@interface ZoomControl :NSObject <KonyCameraControlDelegate>
{
	
@private
	UISlider *iSlider;			/**< internal implementation object for Zoom Control */
@public
	float zoomValue;			/**< amount (1-100) to zoom */
}

@property (nonatomic,assign) float zoomValue;
@property (nonatomic,weak) id<KonyCameraControlBarDelegate> delegate;
@property (nonatomic,retain) UISlider *iSlider;

-(id) initWithDelegate:(id)zoomDelegate;
-(void) toggleEnabled;


@end	/* ZoomControl */


/**
 *  @Brief KonyCamera Control Object responsible for Timer Functionality for KonyCamera.
 *
 *  This Control is responsible for updaing the timer and  delegates the user action to assigned delegate.
 *	
 */

@interface TimerControl :NSObject <KonyCameraControlDelegate>
{
	
@private
	UIButton *buttonControl;	/**< timer control */
@public
	short timeValue;			/**< timer value */
	id	<KonyCameraControlBarDelegate>  delegate;				/**< delagate that handles user action [ideally this shud be array of delegates that register for timer notification] */
	NSMutableArray *stepArray;	/**< array containing time values to be incremented in steps */
}

@property (nonatomic,assign) short timeValue;
@property (nonatomic,retain) id delegate;
@property (nonatomic,retain) UIButton *buttonControl;
@property (nonatomic,retain) NSArray *stepArray;
-(id) initWithDelegate:(id)tcDelegate;
@end	/*  TimerControl */


#if BURSTCONTROL_NOT_IMPLEMENTED
@interface BurstControl :NSObject <KonyCameraControlDelegate>
{
	
@private
	UIView *burstView;	/**< view for Burst control */
	//	short burst
@public
	short burstCount;	/**< remaining number of consequetive snaps to take */
	BOOL bcEnabled;		/**< burst mode selected */
}
@property (nonatomic, assign) short burstCount;
@property (nonatomic, assign) UIView *burstView;
@property (nonatomic, assign) BOOL bcEnabled;
-(id) initWithBurstCount:(short) count;

@end	/*  Burst Conrol */
#endif	/* BURSTCONTROL_NOT_IMPLEMENTED	*/




