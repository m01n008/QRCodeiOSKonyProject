//
//  JSApplicationAPI.h
//  VM
//
//  Created by Amba on 19/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>
#import "CommonApplicationAPI.h"
#import <CoreComponent/KonyApplicationContext.h>

@interface JSApplicationAPI : CommonApplicationAPI <JSStaticAPI>

// Methods are moved to CommonApplicationAPI.h

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

/** @method openURL
 *  @brief opens a custom URL provided
 *  @param 
 *  @returns nil.
 **/
+ (NSArray *) openURL:(NSArray *)args;

/** @method launchApplication
 *  @brief launches kony application
 *  @param
 *  @returns nil.
 **/
+(NSArray *) launchApplication:(NSArray *) arguments;

/**
 *  @brief sets defaultPadding for textbox
 *  @param 
 *  @return nil
 */
+(NSArray*) setDefaultTextboxPadding:(NSArray*) args;


+ (NSArray *) setCheckBoxSelectionImageAlignment:(NSArray *)args;
/**
 *  @brief sets defaultPadding for textbox
 *  @param 
 *  @return nil
 */
+(NSArray*) setDefaultTextboxPadding:(NSArray*) args;

+ (NSArray *) setRespectImageSizeForImageWidgetAlignment:(NSArray *)args;

+(void) requestReview : (NSArray *) arguments;

+(void) sendResultToNativeApp:(NSArray *) arguments;

+(void)exitLibrary:(NSArray *)arguments;

+(void)getApplicationSettingsForType:(NSArray *)arguments;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation: Adding widget(flex) to window with the given top & height. This will be only called from child app.
*  @param flex which needs to be added to window.
*  @return nil
*/
+(void) addWidgetToWindowForAppViewer:(NSArray *)args;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation: Removes widget(flex) from window . This will be only called from child app.
*  @param flex which needs to be removed from window.
*  @return nil
*/
+(void) removeWidgetFromWindowForAppViewer:(NSArray *)args;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting titleBarHeight
*  @return returns  titleBarHeight
*/
+(NSArray *) getTitleBarHeight:(NSArray *)args;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting statusBarHeight
*  @return returns  statusBarHeight
*/
+(NSArray *) getStatusBarHeight:(NSArray *)args;

/**
*  @brief Appviewer-MADPIOS-4578:Implementation of 80% view area for child application inside app viewer. Implementation:  Exposed this API for getting tabBarHeight
*  @return returns  tabBarHeight
*/
+(NSArray *) getTabBarHeight:(NSArray *)args;

@end
