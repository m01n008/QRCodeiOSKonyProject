//
//  TabModel.h
//  VM
//
//  Created by KH250 on 16/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

#define TAB_TABITEM_ADD_NOTIFICATION        @"TabItemAdded"
#define TAB_TABITEM_REMOVE_NOTIFICATION     @"TabItemRemoved"
#define TAB_TABITEM_RENAME_NOTIFICATION     @"TabRename"



@interface TabModel : WidgetModel 
{
    NSString    *activeSkin;
    NSString    *activeFocusSkin;
    NSString    *inactiveSkin;
    NSString    *pageSkinID;
    TabViewType viewType;
    NSDictionary    *viewConfig;
    CallBack    *onTabClick;
    BOOL    screenLevelWidget;
    NSArray *activeTabs;
    BOOL    showProgressIndicator;
    BOOL    progressIndicatorColor;

@private 
    NSMutableArray *tabItems_;
    
}

@property (nonatomic,retain)    NSString*   activeSkin;
@property (nonatomic,retain)    NSString*   activeFocusSkin;
@property (nonatomic,retain)    NSString*   inactiveSkin;
@property (nonatomic,retain)    NSString*   pageSkinID;
@property (nonatomic,assign)    TabViewType viewType;
@property (nonatomic,retain)    NSDictionary*   viewConfig;
@property (nonatomic,retain)    CallBack*   onTabClick;
@property (nonatomic,assign)    BOOL    screenLevelWidget;
@property (nonatomic,retain)    NSArray  *activeTabs;
@property (nonatomic,assign)    BOOL    showProgressIndicator;
@property (nonatomic,assign)    BOOL    progressIndicatorColor;
@property (nonatomic,readonly)  NSMutableArray *tabItems;
@property (nonatomic) BOOL scrollsToTop;

-(void) setActiveTabsPrivate:(NSArray*)selectedTabIndex;

-(void) addTabItem:(NSArray*) aTabItem;

-(void) addTabItem:(NSArray*) aTabItem atIndex:(NSInteger) aIndex;

-(void) removeTabItemAtIndex:(NSInteger) aIndex;

-(void) removeTabItemWithIdentifier:(NSString*) aIdentifier;

-(void) setTabItemsPrivate:(NSMutableArray*) aTabItems;

- (void)setTabTitle:(NSString *)title withId:(NSString *)tabID;

@end
