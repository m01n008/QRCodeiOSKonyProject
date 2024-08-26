//
//  TabWidget.h
//  VM
//
//  Created by KH250 on 16/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import <CoreComponent/KonyWrapperDS.h>

#import "TabModel.h"
#import <CoreComponent/KonyUtil.h>
#import "TabSkin.h"

#import <CoreComponent/AnimationBaseInterface.h>

#import <CoreComponent/KonyScrollViewOffsetHandler.h>

#import <CoreComponent/ContentView.h>

#define TAB_VIEWCONFIG_COLLAPSIBLEVIEW      @"collapsibleViewConfig"
#define TAB_VIEWCONFIG_TABVIEW              @"tabViewConfig"
#define TAB_VIEWCONFIG_PAGEVIEW             @"pageViewConfig"
#define COLLAPSIBLE_CONFIG_ACTIVE_TABS      @"activeTabs"
#define COLLAPSIBLE_CONFIG_EXPANDED_IMAGE   @"expandedImage"
#define COLLAPSIBLE_CONFIG_COLLAPSED_IMAGE  @"collapsedImage"
#define COLLAPSIBLE_CONFIG_IMAGE_POSITION   @"imagePosition"
#define COLLAPSIBLE_CONFIG_TOGGLE_TABS      @"toggleTabs"


#define TAB_NAME_ALIGNMENT      @"tabNameAlignment"
#define TAB_ITEM_NAME           @"tabItemName"
#define TAB_ITEM_ID             @"tabId"
#define TAB_ON_CLICK            Q"onClick"
#define TAB_ITEM_IMAGE          @"tabImage"
#define TAB_NAME                @"tabName"
#define TAB_ITEM_BOX            @"tabBox"
#define TAB_MASTERDATALOAD      @"masterDataLoad"

#define LEFT_PADDING            @"leftPadding"
#define RIGHT_PADDING           @"rightPadding"
#define TOP_PADDING             @"topPadding"
#define BOTTOM_PADDING          @"bottomPadding"
#define ACTIVE_SKIN             @"activeSkin"
#define ACTIVE_FOCUS_SKIN       @"activefocusSkin"
#define INACTIVE_SKIN           @"inactiveSkin"



@protocol TabViewDelegateProtocol <NSObject>

-(void) clickedOnTab:(NSUInteger) aIndex;
-(NSArray*) tabItems;
-(NSDictionary*) viewConfig;

-(Skin*) activeSkin;
-(Skin*) activeFocusSkin;
-(Skin*) inactiveSkin;
-(Skin*) pageSkin;
-(NSDictionary*) paddings;
-(NSArray*) activeTabs;
-(BOOL) isScreenLevelWidget;
-(BOOL)containerHeightRespected;
@end

@protocol  TabViewProtocol <NSObject>

@required
-(id) initWithDelegate:(id<TabViewDelegateProtocol>) aDelegate;
-(void) setViewFrame:(CGRect) aFrame;
-(CGSize) getPreferredSizeForGivenSize: (CGSize) givenSize;
-(UIView*) getWidgetView;
-(BOOL) addTabItem:(id) aItem atIndex:(NSUInteger) aIndex;
-(BOOL) deleteTabItemAtIndex:(NSUInteger) aIndex;
-(BOOL) selectTabItemAtIndex:(NSUInteger) aIndex;
-(NSArray*) getActiveTabs;

// Screen level widget related.
-(UIView*) scrollView;
-(void) setContentOffset:(CGPoint) aPoint animated:(BOOL)animated;
-(CGPoint) contentOffset;
-(CGSize) contentSize;
-(void) reloadSkins;

@optional
-(void) layoutView;
//These Methods are not implemented in PageView, hence changing them to optional form required
- (id)getViewAtIndex:(int)index;
- (void)renameTabTitleWith:(NSString *)title atIndex:(int)index;

-(void) updateActiveSkin:(TabSkin*) aSkin;
-(void) updateActiveFocusSkin:(TabSkin*) aSkin;
-(void) updateInactiveSkin:(TabSkin*) aSkin;
-(void) updatePageSkin:(TabSkin*) aSkin;
-(void) updatePaddings:(NSDictionary*) paddings;
-(void) updateViewConfig:(NSDictionary*) aConfig;
-(void) updateActiveTabs:(NSArray*) aActiveTabs;
- (void) updateScrollsToTopWithValue:(BOOL) value;

//Added to calculate the size of the template box in case of flexlayout
//TODO: to clean this up once transient layout is not required for this calculation
- (Widget *)getWidget;

@end

@interface TabWidget : Widget<ViewDrawingDelegate,TabViewDelegateProtocol,CallBackListenerProtocol,KonyScrollContainer,AnimationAndWidgetContract>
{
//Instance variable 'activeIndex_' in class 'TabWidget' is never used by the methods in its @implementation (although it may be used by category methods)
@private
    id<TabViewProtocol> tabView_;
    //NSUInteger activeIndex_;
    NSMutableArray *tabItems_;
    NSMutableArray *operationQueue;
    NSMutableArray *indices;
    //UIView* previousSrollView;      /** This is introduced to handle inset modifications. not so elegant way. need to revist and change. */

}
-(id<TabViewProtocol>)getTabItems;
-(NSArray*) activeTabWidgets;
- (Widget*) getWidgetForGivenWidgetModel: (WidgetModel*) aWidgetModel;
- (BOOL)isAutogrowSupportedForWidgetViewType;

@end
