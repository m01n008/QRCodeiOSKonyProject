//
//  KonyCameraSettings.h
//  VM
//
//  Created by Krishna Kiran Kasturi on 15/12/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyCameraControls.h"
#import "CameraWidget.h"

#define SETTINGS_FONT_SIZE	15

/**
 * @Breief A convinience protocol clustering all other (custom) protocols KonyCameraController should conform to.
 */
@protocol KonyCameraProtocol <KonyCameraControlBarDelegate>

@end	/* end of KonyCameraProtocol */



/**
 *  @Brief  Object responsible for KonyCamera Control Bar along with Settings and internal UIContols (like big button, zoom control ...) .
 *	
 * This is supposed to be complete width of screen with the following default controls 
 *	1) Cancel button
 *  2) Camera/Video button
 *  3) Settings Button.
 *
 * Height is set at the time construction , once set it remains constant throughout object life time.
 * This object is tied to(tightly coupled with)  KonyCameraController , set during construction and used for handling internal functionality.
 * Cutomizable Controlbar can be provided on need basis by adding more funcitonality to this class - right now it just serves the purpose of default controlbar.
 * 
*/

@interface KonyTimerLabel : UILabel
@end

@interface KonyCameraControlBar : NSObject <UITableViewDelegate,UITableViewDataSource,KonyCameraProtocol>
{
@public
	float					kccbHeight;					/**< Height of KonyCameraControlBar */
	UIView					*view;						/**< KonyCameraControlBar view */
	
@private
	BigButtonControl		*iBigButton;				/**< Big Button control */
	ZoomControl				*iZoomControl;				/**< Zoom control */
	TimerControl			*iTimerControl;				/**< Timer Control */
#if BURSTCONTROL_NOT_IMPLEMENTED	
	BurstControl            *iBurstControl;				/**< Burst Control */
#endif	/*	BURSTCONTROL_NOT_IMPLEMENTED	*/
	UIToolbar				*kccbToolBar;				/**< Internal UIToolbar object that handles toolbar functionality */
	UITableView				*settingsView;				/**< Kony Camera Settings view */	
	CameraWidget            *kcController;				/**< KonyCamera controller reference */
	NSMutableArray			*internalSettingsArray;		/**< iPhone Specific Properties for Camera Widget */
	NSMutableArray			*settingsStatusArray;		/**< array indicating on/off status of settings (for Settings View) */
	short					numberOfSettings;			/**< number of settings */
	NSMutableDictionary		*restoreControlArray;		/**< internal hash to store/restore UIControls status with their corresponding control strings for Kony Camera */
	CGAffineTransform	    transform;					/**< Initial affine transform of camera control */
	short					timerValue;					/**< Timer value set */
	float					zoomValue;					/**< zoom value applied */
	UIView					*settingsParent;			/**< parent view for settings view (that contains settings background image as subview) */
    NSString                *settingsIcon;                      /**< settings icon  */
    NSString                *cancelIcon;                        /**< cancel icon    */
    NSTimer                 *aTimerForRec;
    float                   startTime;
    float                   endTime;
}

@property (nonatomic,retain) UIView *view;
@property (nonatomic,retain) NSMutableArray *settingsStatusArray;
@property (nonatomic, retain) NSMutableDictionary	 *restoreControlArray;
@property (nonatomic, retain) BigButtonControl		 *iBigButton;
@property (nonatomic, retain) ZoomControl			 *iZoomControl;
@property (nonatomic, retain) TimerControl			 *iTimerControl;
#if BURSTCONTROL_NOT_IMPLEMENTED
@property (nonatomic, retain) BurstControl			 *iBurstControl;
#endif	/*	BURSTCONTROL_NOT_IMPLEMENTED	*/
@property (nonatomic,assign) CGAffineTransform		 transform;
@property (nonatomic,getter = getTimeValue) short					 timerValue;
@property (nonatomic,getter = getZoomValue) float					 zoomValue;
@property (nonatomic) float kccbHeight;
@property (nonatomic) short numberOfSettings;
@property(nonatomic,retain) NSString *settingsIcon;
@property(nonatomic,retain) NSString *cancelIcon;
@property (nonatomic, retain) NSTimer *aTimerForRec;

-(id) initWithHeight:(float) toolBarHeight KonyCameraController:kcCtrl settings:(NSArray*)array;
-(void) destroyControl:(NSString *)str;
-(void) destroyAllControls;
-(id) getWidgetView;
-(void)setDefaultValuesForControls:(NSDictionary*)defaultValues;
-(void)	constructCameraControlBarWithControls;
-(void)updateSettingsParentViewFrame;
-(void)transformCamerControlBarWithControls;
-(void)startTimerForVideoRecording;
-(void)stopTimerForVideoRecording;
-(BOOL)isTimerRunning;
-(void)setupStartRecordingSettingsInToolbar;
-(void)setupStopRecordingSettingsInToolbar;
-(void)setupFrameForToolBar;
-(void)setAccessibilityConfigCaptureControl:(NSMutableDictionary*)accessibilityConfigCaptureControl;
-(void)setAccessibilityConfigTimerControl:(NSMutableDictionary*)accessibilityConfigTimerControl;
-(void)setAccessibilityConfigSettingsControl:(NSMutableDictionary*)accessibilityConfigSettingsControl;
-(void)setAccessibilityConfigCancelControl:(NSMutableDictionary*)accessibilityConfigCancelControl;
-(void)setOverlayConfig:(NSDictionary*)overlayDic;
@end	/* end of KonyCameraControlBar	*/

