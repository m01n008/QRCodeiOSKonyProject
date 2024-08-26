//
//  CollapsibleView.h
//  VM
//
//  Created by Uday Bheema on 13/07/12.
//  Copyright (c) 2012 KONY SOLUTIONS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/Widget.h>
#import <CoreComponent/KonyTypes.h>
#import "TabWidget.h"
#import "TabSkin.h"


#define COLL_ITEM_X 0.0
#define COLL_ITEM_WIDTH [UIScreen mainScreen].bounds.size.width

#define COLL_BUTTON_X 0.0
#define COLL_BUTTON_Y 0.0
#define COLL_BUTTON_HEIGHT 40.0

#define COLL_VIEW_X 0.0
#define COLL_VIEW_Y 40.0

typedef enum CollapsibleItemState
{
	CollapsibleItemStateExpanded = 0,
	CollapsibleItemStateCollapsed
}CollapsibleItemState;




@class CollapsibleItem;
@interface CollapsibleView : UIScrollView<TabViewProtocol>
{

@protected
    float leftPadding, rightPadding, topPadding, bottomPadding;
    NSUInteger lastClickedTabIndex;
    NSUInteger currentClickedTabIndex;
    
    BOOL isMutuallyExclusiveExpansionEnabled;
    TabSkin *activeSkin,*activeFocusSkin,*inActiveSkin;
    NSArray *activeTabs;
    UIImage *collapsedIndicatorImage;
	UIImage *expandedIndicatorImage;
    TabViewCollapsibleTabNameAlignment tabNameAlignment;
    TabViewCollapsibleImagePosition indicatorAllignment;
}

@property (nonatomic)            NSMutableArray* items;
@property (nonatomic, retain)          NSArray* activeTabs;
@property (nonatomic, assign)          NSUInteger lastClickedTabIndex;
@property (nonatomic, assign)          NSUInteger currentClickedTabIndex;
@property (nonatomic, retain)          UIImage* collapsedIndicatorImage;
@property (nonatomic, retain)          UIImage* expandedIndicatorImage;
@property (nonatomic, assign)          BOOL isMutuallyExclusiveExpansionEnabled;
@property (nonatomic, weak)            id<TabViewDelegateProtocol> tabDelegate;
@property (nonatomic)                  TabViewCollapsibleTabNameAlignment tabNameAlignment;
@property (nonatomic)                  TabViewCollapsibleImagePosition indicatorAllignment;

- (TabSkin*) activeSkin;
- (TabSkin*) activeFocusSkin;
- (TabSkin*) inActiveSkin;
- (void) updateActiveSkin:(TabSkin*) aSkin;
- (void) updateActiveFocusSkin:(TabSkin*) aSkin;
- (void) updateInactiveSkin:(TabSkin*) aSkin;
- (void) initPadding:(NSDictionary*) aDict;
- (void) loadViewConfig:(NSDictionary*) aDict;
- (void) updatePaddings:(NSDictionary*) paddings;
- (void) updateViewConfig:(NSDictionary*) aConfig;
- (void) performMutuallyExclusiveExpansion :(id) obj;
- (BOOL) isTabCollapsedAtIndex: (NSUInteger) index;
- (void) onClick: (CollapsibleItem*) anItem;
- (void) setActiveItems: (NSArray*) kActiveItems;
- (void) collapseAllItems;
- (void) layoutSubviews;
- (void) setItemState:(CollapsibleItem*) anItem AtIndex:(NSUInteger) index;

@end
