//
//  WheelWidgetHandler.h
//  VM
//
//  Created by User Kasturi on 26/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Widget.h"

/**
 *  Type that tells the context in which closure is getting executed.
 *  Default closure execution type is WheelWidgetClosureTypeNone. This is explicitly set based on the context (4 cases):
 *      a) Next selected from InputAccessoryView
 *      b) Previous selected from InputAccessoryView
 *      c) Done selected from InputAccessoryView
 *      d) Clicking on some other Widget while another Wheel widget is in active.
 *      d ii) Clicking on another wheel widget
 *  It is set to WheelWidgetClosureTypeNone after closure execution. 
 */
typedef enum WheelWidgetClosureType
{
    WheelWidgetClosureTypeNone = 0,
    WheelWidgetClosureTypeNext,
    WheelWidgetClosureTypePrevious,
    WheelWidgetClosureTypeDone
}
WheelWidgetClosureType;

@protocol KonyInputAccessoryViewProtocol;

#ifndef KONY_NEXTPREVTOOLBAR_HEIGHT		
    /**	Next Prev Toolbar  height */
    #define	KONY_NEXTPREVTOOLBAR_HEIGHT	44
#endif

#ifndef	KONY_SOFTINPUTPANEL_HEIGHT
    /**	SIP height	*/
    #define	KONY_SOFTINPUTPANEL_HEIGHT	216
#endif

#define KonySIPWillShowNotification  @"KonySIPWillShowNotification"
#define KonySIPDidShowNotification   @"KonySIPDidShowNotification"
#define KonySIPWillHideNotification  @"KonySIPWillHideNotification"
#define KonySIPDidHideNotification   @"KonySIPDidHideNotification"

@protocol WheelViewProtocol;

/**
 *  Protocol that all Wheel Widgets should implement. (Widget that requires Soft Input by means of Picker/Keyboard is considered as Wheel Widget).
 */
@protocol WheelWidgetProtocol <NSObject>

@required
-(CGFloat) getSIPHeight;   /**< Height of Soft input associated with the widget */
-(UIView <WheelViewProtocol>*) wheelView;   /**< Wheel view associated with the Wheel Widget(in most probable cases it is the view of WheelWidget)  */

-(void) executeOnDoneCallback;  /**< callback for 'Done' in Next Prev Toolbar   */
-(void) executeOnNextCallback;  /**< callback for 'Next' in Next Prev Toolbar   */
-(void) executeOnPrevCallback;  /**< callback for 'Prev' in Next Prev Toolbar   */

-(BOOL) becomeActiveWheelWidget;    /**<  Make wheel widget active ( show its Soft input and input accessory view)   */
-(BOOL) resignWheelWidget;          /**<  make wheel widget inactive ,if active (remove its soft input and input accessory view)  */

@property (nonatomic,assign) WheelWidgetClosureType closureType;

@optional
-(void) willResignActiveWheelWidget;    /**< method that indicates widget is about to get resigned as Active Wheel Widget   */
-(void) willBecomeActiveWheelWidget;    /**< method that indicates widget is about to become Active Wheel Widget   */

-(void) didResignActiveWheelWidget;    /**< method that indicates widget has resigned as Active Wheel Widget   */
-(void) didBecomeActiveWheelWidget;    /**< method that indicates widget has become Active Wheel Widget   */

- (void)executeOnCancelCallback;        /** callback on click of 'Cancel' in InputAccessory Cancel view **/

-(void) customizeInputAccessoryView:(id <KonyInputAccessoryViewProtocol>) aInputAccessoryView;

-(KonyInputAccessoryViewTypes)getEffectiveInputAccessoryViewTypes;
@end

/**
 *  Protocol that all Wheel view should implement. (View that is responsible to bring and resign wheel for a wheel widget).
 */
@protocol WheelViewProtocol <NSObject>

@required

-(BOOL) canBecomeFirstResponder;    /**< override WheelViews (UIResponder's) method to return YES    */
-(void) setInputView:(UIView*) aInputView;  /**<  setter for WheelView's inputView  */
-(UIView*) inputView;   /**< getter for WheelView's inputView   */
-(void) setInputAccessoryView:(UIView*) aInputAccessoryView;    /**< setter for WheelView's inputAccessoryView  */
-(UIView*) inputAccessoryView;  /**< getter for WheelView's inputAccessoryView  */

@end


@interface WheelWidgetHandler : NSObject

-(BOOL) becomeActiveWheelWidget:(Widget<WheelWidgetProtocol>*) aWidget;
-(BOOL) resignWheelWidget:(Widget<WheelWidgetProtocol>*) aWidget;
+(WheelWidgetHandler*) sharedWheelWidgetHandler;
-(void) konyWWReloadInputViews:(Widget <WheelWidgetProtocol>*) aWidget;
@end


