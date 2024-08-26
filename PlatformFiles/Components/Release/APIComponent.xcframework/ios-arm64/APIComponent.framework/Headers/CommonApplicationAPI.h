//
//  CommonApplicationAPI.h
//  VM
//
//  Created by Amba on 03/05/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

//#import "LuaAPI.h"

#import <Foundation/Foundation.h>

@interface CommonApplicationAPI : NSObject
// Deprecated and works in backword compatibility mode.

/** @method appreset (deprecated)
 *  @brief resets the application 
 *  @param void
 *  @returns nil. 
 **/
+ (NSArray *) appReset: (NSArray *) arguments;

/** @method setappmenu (deprecated)
 *  @brief sets appmenu
 *  @param 
 *  @returns nil. 
 **/
+ (NSArray *) setAppMenu: (NSArray *) arguments;

/** @method showappmenuitems (deprecated)
 *  @brief shows appmenu items
 *  @param
 *  @returns nil.
 **/
+ (NSArray *) showAppMenuItems: (NSArray *) arguments;

/** @method hideappmenuitems (deprecated)
 *  @brief hides appmenu items
 *  @param 
 *  @returns nil. 
 **/
+ (NSArray *) hideAppMenuItems: (NSArray *) arguments;

// New in 5.0

/** @method createAppMenu
 *  @brief crates appmenu in the application
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> appMenuId - string – mandatory
 *		=> appMenu - array of arrays – mandatory :- app menu details can be deduced from Lua API
 *		=> skinID - string – optional
 *		=> onFocusSkinID - string - optional
 *  @returns nil. 
 **/
+ (NSArray *) createAppMenu: (NSArray *) arguments;

/** @method setCurrentAppMenu
 *  @brief sets current appMenu of the application
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> appMenuId - string – mandatory
 *  @returns nil.
 **/
+ (NSArray *) setCurrentAppMenu: (NSArray *) arguments;

+ (NSArray *)setCurrentAppMenuFont:(NSArray *)arguments;

/** @method getCurrentAppMenu
 *  @brief Gives current appmenu's ID
 *  @param argumentss An array of arguments from JSRuntime.
 *  @returns appMenuID (NSString) in an NSArray. 
 **/
+ (NSArray *) getCurrentAppMenu: (NSArray *) arguments;

/** @method setAppMenuFocusByID
 *  @brief Sets appmenu identified by  menuID in the application
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> appMenuId - string – mandatory
 *  @returns nil. 
 **/
+ (NSArray *) setAppMenuFocusByID: (NSArray *) arguments;

/** @method setAppMenuFocusIndex
 *  @brief Sets appmenu item focus identified by  given index
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> appMenuId - string – mandatory
 *  @returns nil.
 **/
+ (NSArray *) setAppMenuFocusIndex: (NSArray *) arguments;

/** @method addAppMenuItemAt
 *  @brief Adds appmenu at given index in the application's appmenu
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> index - number – mandatory
 *		=> appMenuItem - array of menu properties – mandatory :- app menu item details can be deduced from Lua API
 *  @returns nil. 
 **/
+ (NSArray *) addAppMenuItemAt: (NSArray *) arguments;

/** @method remvoeAppMenuItemAt
 *  @brief Removess appmenu at given index in the application's appmenu
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> index - number – mandatory
 *  @returns nil. 
 **/
+ (NSArray *) removeAppMenuItemAt: (NSArray *) arguments;

/** @method getCurrentForm
 *  @brief Gives the currentForm of the application
 *  @param 
 *  @returns CurrentForm object.
 **/
+ (NSArray *) getCurrentForm: (NSArray *) arguments;

/** @method getPreviousForm
 *  @brief Gives the currentForm of the application
 *  @param 
 *  @returns PreviousForm object.
 **/
+ (NSArray *) getPreviousForm: (NSArray *) arguments;

// 

/** @method registerForIdleTimeout
 *  @brief Registers for IdleTimeout in the application
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) registerForIdleTimeout: (NSArray *) arguments;

/** @method unregisterForIdleTimeout
 *  @brief unregisters for IdleTimeout in the application
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) unregisterForIdleTimeout: (NSArray *) arguments;

/** @method addApplicationCallbacks
 * @breif This method adds multiple callbacks for the same appState for applicationCallbacksList.
 * @param Consists of keys as appState. Right now isAppLaunchedForInteraction is only supoorted.
 * @returns nil.
 **/
+ (NSArray *) addApplicationCallbacks: (NSArray *) arguments;
/** @method removeApplicationCallbacks
 *  @breif This method removes application callbacks from callbacks dictionary based on callbacks keys provided by user for each app state.
 *  @param input contains an array with one value as dictionary. The dictionary contains appStates(onForeground, onBackground etc) as keys and list of callback keys as value.
 *  @returns nil.
 **/
+ (NSArray *) removeApplicationCallbacks: (NSArray *) arguments;
/** @method getSettingValue
*  @brief returns device setting value for paased setting key
*  @param setting key
*  @returns constant setting value.
**/
+ (NSArray *) getSettingValue: (NSArray *) arguments;
/** @method registerOnSettingsChangeCallback
*  @brief Registers for device settings change
*  @param
*  @returns nil.
**/
+ (NSArray *) registerOnSettingsChangeCallback: (NSArray *) arguments;
/** @method setApplicationCallbacks
 *  @brief Sets application callbacks
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setApplicationCallbacks: (NSArray *) arguments;

/** @method getApplicationCallbacks
 *  @brief gets application callbacks
 *  @param
 *  @returns dictionary of app callbacks requested in arguments.
 **/
+ (NSArray *) getApplicationCallbacks: (NSArray *) arguments;

/** @method setApplicationBadgeValue
 *  @brief Sets application badge value
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setApplicationBadgeValue: (NSArray *) arguments;

/** @method getApplicationBadgeValue
 *  @brief Gives application badge value
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) getApplicationBadgeValue: (NSArray *) arguments;

/** @method setApplicationInitilizationEvents
 *  @brief Sets application Initialization events
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setApplicationInitializationEvents: (NSArray *) arguments;

/** @method exit
 *  @brief Ends the application
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) exit: (NSArray *) arguments;


/** @method getApplicationMode
 *  @brief Gets the application mode
 *  @param 
 *  @returns Application mode.
 **/
+ (NSArray *) getApplicationMode: (NSArray *) arguments;

/** @method setApplicationMode
 *  @brief Sets the application mode
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setApplicationMode: (NSArray *) arguments;

/** @method setGestureRecognizerForAllForms
 *  @brief Sets gesture recognizers for all the Forms
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setGestureRecognizerForAllForms: (NSArray *) arguments;

/** @method removeGestureRecognizerForAllForms
 *  @brief Removes gesture recognizers for all the Forms
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) removeGestureRecognizerForAllForms: (NSArray *) arguments;

/** @method setAppMenuBadgeValue
 *  @brief Sets the appMenu's badge value
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) setAppMenuBadgeValue: (NSArray *) arguments;

/** @method getAppMenuBadgeValue
 *  @brief Gives the appMenu's badge value
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) getAppMenuBadgeValue: (NSArray *) arguments;

/** @method showLoadingScreen
 *  @brief shows loading screen
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) showLoadingScreen: (NSArray *) arguments;

/** @method dismissLoadingScreen
 *  @brief dismisses loading screen
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) dismissLoadingScreen: (NSArray *) arguments;


/** @method openURLAsync:withCallback:
 *  @brief opens the URL of the APP Scheme provided, in asyc manner
 *  @param
 *  @returns nil.
 **/
+(NSArray*) openURLAsync: (NSURL*)url withCallback: (id) callbackFunction;

/** @method openURL
 *  @brief opens the URL in the browser
 *  @param 
 *  @returns nil.
 **/
+(NSArray *) openURL: (NSArray *) args;

/** @method setDefaultTextboxPadding
 *  @brief sets default padding for textbox
 *  @param
 *  @returns nil.
 **/
+(NSArray *) setDefaultTextboxPadding: (NSArray *) args;

/** @method setDefaultComboboxPadding
 *  @brief sets default padding for Combobox
 *  @param
 *  @returns nil.
 **/
+(NSArray *) setDefaultGroupWidgetPadding: (NSArray *) args;


/** @method setApplicationBehaviors
 *  @brief initialize the invokePreshowPostShowEventsOnDeviceBack, isPopupModel, retainSpaceOnHide behaviors
 *  @param 
 *  @returns nil.
 **/
+(NSArray *)setApplicationBehaviors:(NSArray *)args;

/** @method getApplicationBehavior
 *  @brief return the value of invokePreshowPostShowEventsOnDeviceBack, isPopupModel, retainSpaceOnHide behaviors
 *  @param
 *  @returns value for cooresponding key.
 **/
+(NSArray *)getApplicationBehavior:(NSArray *)args;

/** @method openMediaURL
 *  @brief opens the media url.(formats supported :  .mov, .mp4, .mpv, and .3gp , refer document for compression standards and more info. )
 *  @param
 *  @returns nil.
 **/
+(NSArray *) openMediaURL: (NSArray *) args;

/** @method setStartupFormByID
 *  @brief sets startupForm of specified appMenuItem in the appMenu
 *  @param argumentss An array of arguments from JSRuntime.
 *		=> appMenuId - string – mandatory
 *  @returns nil.
 **/
+ (NSArray *) setStartupFormByID: (NSArray *) arguments;

+ (NSArray *) announceAccessibilityHint: (NSArray *) arguments;

+ (void) postAccessibilityNotification: (NSArray *)arguments;

+ (NSArray *) setCheckBoxSelectionImageAlignment:(NSArray *)args;

+ (NSArray *) setRespectImageSizeForImageWidgetAlignment:(NSArray *)args;

/** @method getApplicationState
 *  @brief Gives the current state of the application
 *  @param
 *  @returns Application state. i.e; active, inactive or background.
 **/
+ (NSArray *)getApplicationState:(NSArray *)arguments;

/** @method beginBackgroundTask
 *  @brief Begins a background task so that iOS doesn't suspend the app while the app is running in the background.
 *  @param An array of arguments from JSRuntime.
 *		=> taskName - string – mandatory
 *      => expiration Handler - callback method - optional
 *  @returns a background task identifier(number) which needs to be passed back to endKonyBackgroundTask.
 **/
+ (NSArray *)beginBackgroundTask:(NSArray *)arguments;

/** @method endBackgroundTask
 *  @brief ends a background task that was begun using beginKonyBackgroundTask API.
 *  @param An array of arguments from JSRuntime.
 *		=> backgroundTaskIdentifier - number – mandatory
 *  @returns nil.
 **/
+ (NSArray *)endBackgroundTask:(NSArray *)arguments;

/**
 *FTR1066 - Statusbar Configuration
 *kony.application.setApplicationProperties() JS API is provided
 *to set application level preferences in form of key value pairs.
 *For more technical details, read the brief below.
 */
/** @method setApplicationProperties
 *  @brief Sets application property dictionary for application level default properties.
 *         Use of this is to set the property values accross forms, if the respective properties
 *         are not defined at form level.
 *         If specific property is not defined in the application level preferences as well as at the
 *         form level, then the iOS/Kony default value would be set.
 *  @param argumentss An array of dictionary from JSRuntime.
 *  @returns nil.
 **/
+ (NSArray *)setApplicationProperties:(NSArray *)arguments;

/** @method checkPermission
 *  @brief checks whether the permission are available for given resource ID.
 *  @param An array of arguments from JSRuntime.
 *		=> resourceId - constant – mandatory
        => options - JSObject - optional
 *  @returns response status.
 **/
+ (NSArray*)checkPermission:(NSArray *)arguments;


/** @method requestPermission
 *  @brief request for the permission are available for given resource ID.
 *  @param An array of arguments from JSRuntime.
 *		=> resourceId - constant – mandatory
        => statusCakkback - callback method - optional
        => options - JSObject - optional
 **/
+ (void)requestPermission:(NSArray *)arguments;

/** @method openApplicationSettings
 *  @brief Open thes Application settings for various services.
 **/
+ (void)openApplicationSettings: (NSArray *) arguments;

/** @method registerMaster
 *  @brief registers a master with the JSEngine.
 *  @param A dictionary of arguments.
 *		=> namespace - string/Mandatory - namespace where the new class is available in the JS Engine.
        => classname - string/Mandatory - classname of the master.
        => name - string/Mandatory - name of the master. must match with the master's friendly name mentioned in kony.mvc.registry.add.
 **/
+ (void)registerMaster:(NSArray *)arguments;

+(void) requestReview;

+ (void)sendLibraryResultToNativeApp:(NSArray *)arguments;

+ (void)exitLibrary;

+ (void) setLibraryHeadlessModeCallback:(NSArray *)arguments;

+(void)getApplicationSettingsForType:(NSArray *)arguments;
/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation: Adding widget(flex) to window with the given top & height. This will be only called from child app.
*  @param flex which needs to be added to window.
*  @return nil
*/
+(void) addWidgetToWindowForAppViewer:(NSArray *)arguments;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation: Removes widget(flex) from window . This will be only called from child app.
*  @param flex which needs to be removed from window.
*  @return nil
*/
+(void) removeWidgetFromWindowForAppViewer:(NSArray *)arguments;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting titleBarHeight
*  @return returns  titleBarHeight
*/
+(NSArray *) getTitleBarHeight;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting statusBarHeight
*  @return returns  statusBarHeight
*/
+(NSArray *) getStatusBarHeight;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting tabBarHeight
*  @return returns  tabBarHeight
*/
+(NSArray *) getTabBarHeight;

/** @method recommendApp
 *  @brief Recommends an App Store application in a store overlay.
 *  @param A dictionary of arguments.
 *        => appIdentifier - string/Mandatory - PARENT_APP_IDENTIFIER / iTunes Identifer of the App Store application.
        => position - enum - Position at which the overlay needs to be displayed.(Default : STORE_OVERLAY_POSITION_BOTTOM )
 **/
+(void)recommendApp:(NSArray *)arguments;


#if DEBUGINFO
/** @method setupWidgetDataRecording
 *  @brief Enables setup for runtime data generation into xml
 *  @param A dictionary with key value pair specifying mode of xml generation. mode = 0 generates xml automatically for every layout update. mode = 1 generates xml on click of button provided to user.
 **/
+ (void) setupWidgetDataRecording:(NSArray *)arguments;
#endif

@end
