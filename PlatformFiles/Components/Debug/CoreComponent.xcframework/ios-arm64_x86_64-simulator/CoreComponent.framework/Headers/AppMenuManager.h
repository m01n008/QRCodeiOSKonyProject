//
//  AppMenuManager.h
//  VM
//
//  Created by KH206 on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyManager.h"
#import "AppMenuModel.h"


@interface AppMenuManager : KonyManager
{
    NSMutableDictionary *appMenuDict;
    AppMenuModel *currentAppMenu;
    NSMutableArray *observers;
    BOOL executeClosureOnActivatingItems;
}

@property (nonatomic,readonly) AppMenuModel* currentAppMenu;
@property (nonatomic) BOOL executeClosureOnActivatingItems;
- (void) createAppMenuWithID: (NSString*) menuID withMenuItems: (NSArray*) menuItems withSkin:(NSString*) skinID withFocusSkin:(NSString*)focusSkinID andProperties:(NSDictionary*) appMenuProperties;

- (void) setCurrentAppMenuWithID: (NSString*) menuID;

- (void) setCurrentAppMenuWithID: (NSString*) menuID focusItemID:(NSString*) focusItemID;

- (NSString*) getCurrentAppMenuID;

- (void) setAppMenuFocusByID :(NSString*) menuItemID;

- (void) setStartupForm:(NSString*) startupFormID forAppMenu:(NSString*) appMenuId withItemId:(NSString*) menuItemId;

- (void) addAppMenuItem : (NSArray*) menuItemFields At : (NSInteger) index;

- (void) addAppMenuItemToAppMenu :(NSString*) appMenuId  withItemDetails:(NSArray*) menuItemFields At : (NSInteger) index;

- (void) removeAppMenuItemFromAppMenu :(NSString*) appMenuId  withItemId:(NSString*) menuItemId;;

- (void) removeAppMenuItemFromAppMenu :(NSString*) appMenuId  atIndex:(NSInteger) index;

- (void) removeAppMenuItemAt: (NSInteger) index;

- (void) setDefaultAppMenuWithMenuItems: (NSArray*) menuItems withSkin:(NSString *)skinID withFocusSkin:(NSString *)focusSkinID;
- (void) setAppMenuFocusByIndex: (NSInteger) index;

- (void) showAppMenuItems:(NSArray*) items;

- (void) hideAppMenuItems: (NSArray*) items;

- (void) addObserver:(id) observer;
- (void) removeObserver:(id) observer;

- (void) removeAllAppMenus;

- (void)setAppMenuWithFontName:(NSString *)fontName andFontSize:(CGFloat)fontSize;
@end
