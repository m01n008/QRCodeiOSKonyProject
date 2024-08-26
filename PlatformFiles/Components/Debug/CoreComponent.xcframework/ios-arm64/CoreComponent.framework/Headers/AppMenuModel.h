//
//  AppMenuModel.h
//  VM
//
//  Created by KH206 on 08/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppMenuItemModel.h"
#import "KonyTypes.h"
@interface AppMenuModel : NSObject
{
    NSMutableArray *appMenuItems;
    AppMenuItemModel *focussedItem;
    NSString         *menuID;
    NSDictionary     *appMenuProperties;
    NSString         *skinID;
    NSString         *focusSkinID;
}

@property (nonatomic, readonly) NSMutableArray* appMenuItems;
@property (nonatomic, readonly) AppMenuItemModel* focussedItem;
@property (nonatomic, readonly) NSString* menuID;
@property (nonatomic, readonly) NSDictionary*   appMenuProperties;
@property (nonatomic, readonly) NSString *skinID;
@property (nonatomic, readonly) NSString *focusSkinID;
@property (nonatomic, assign) BOOL clearAppMenuStack;


- (id) initWithAppMenuItems: (NSArray*) menuItems  withID: (NSString*) tMenuID withSkin:(NSString*) askinID withFocusSkin:(NSString*)afocusSkinID andProperties:(NSDictionary*) appMenuProps;
- (void) insertAppMenuItem: (AppMenuItemModel*) menuItem At:(NSInteger) index;
- (void) removeAppMenuItemAt: (NSInteger) index;
- (void) removeAppMenuItemWithID: (NSString*) menuId;
- (void) setAppMenuFocussedItemWithID: (NSString*) menuItemID;
- (void) setAppMenuFocussedItemWithIndex: (NSInteger) menuItemIndex;
- (void) setAppMenuItem:(NSString*) menuItemID withStartupForm:(NSString*) startupFormID;
- (AppMenuItemModel*) getAppMenuItemByID: (NSString*) menuItemID;
- (AppMenuItemModel*) getAppMenuItemByIndex: (NSInteger) menuItemIndex;
- (AppMenuType) getAppMenuType;
- (AppMenuItemAlignment) getAppMenuItemAlignment;
- (NSInteger) appMenuItemSpacing;
- (void)setAppMenuWithFontName:(NSString *)fontName andFontSize:(CGFloat)fontSize;
@end
