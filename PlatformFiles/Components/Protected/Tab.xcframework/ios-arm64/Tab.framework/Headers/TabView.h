//
//  TabView.h
//  VM
//
//  Created by KH250 on 18/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TabWidget.h"
#import <CoreComponent/BoxWidget.h>
#import "TabSkin.h"

typedef enum _TabItemType 
{
	TAB_TYPE_NORMAL,
	TAB_TYPE_MORE_LEFT,
	TAB_TYPE_MORE_RIGHT
}TabItemType;

@class TabView;

@interface TabButtonItem : UIButton 
{

@private
    NSDictionary *properties;
    BOOL isMasterDataLoaded;
	TabView *konyTabController;
	NSUInteger tabIndex;
	TabItemType tabItemType;
    BOOL isActiveFocus;
    UIScrollView *contentView;
    CGPoint offset;
}

@property (nonatomic,assign) NSUInteger tabIndex;
@property (nonatomic,retain) NSDictionary *properties;
@property (nonatomic,assign) CGPoint offset;
@property (nonatomic,retain) UIScrollView *contentView;

- (id)initWithAttribute:(NSDictionary*)attrib withTabController:(id)controller withType:(TabItemType)type;

@end

@interface TabItemsBar : UIView

@property (nonatomic, weak) TabView *konyTabBarController;

@end

@interface TabView : NSObject <TabViewProtocol>
{
    id<TabViewDelegateProtocol> delegate;    
@private
    UIView *view_;
    TabItemsBar* tabItemsBar;
    CGRect tabItemsBarRect;
	NSMutableArray* tabItemArray;
	NSUInteger activeTabItem;
	BOOL tabBarShown;
	BOOL leftMoreTabItemPresent;
	BOOL rightMoreTabItemPresent;
	NSUInteger shownTabItemsStartIndex;
	NSUInteger shownTabItemsEndIndex;
}

@property (nonatomic,assign) CGRect tabItemsBarRect;
@property (nonatomic,assign) NSUInteger shownTabItemsStartIndex;
@property (nonatomic,assign) NSUInteger shownTabItemsEndIndex;
@property (nonatomic,assign) BOOL   leftMoreTabItemPresent;
@property (nonatomic,assign) BOOL   rightMoreTabItemPresent;
@property (nonatomic) TabButtonItem *leftMoreTabItem;
@property (nonatomic) TabButtonItem *rightMoreTabItem;
@property (nonatomic,assign) BOOL tabBarShown;
@property (nonatomic,readonly) UIView *view;
@property (nonatomic,assign) NSUInteger activeTabItem;
@property (nonatomic,retain) NSMutableArray *tabItemArray;

-(TabSkin*) activeSkin;
-(TabSkin*) inactiveSkin;
-(TabSkin*) activeFoucsSkin;
- (void)unSetTabItem;
-(void) resetTabViews;
-(void) clickedOnTab;
-(BOOL) isScreenLevelWidget;
- (BOOL)containerHeightRespected;

@end
