//
//  FormWidget.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ContainerWidget.h"
#import "ContainerBackgroundView.h"
#import "ContentView.h"
#import "ViewLayoutDelegate.h"
#import "ViewDrawingDelegate.h"
#import "WheelWidgetHandler.h"
#import "KonyInputAccessoryView.h"
#import "FormModel.h"
#import "KonyScrollViewDelegate.h"
#import "KonyScrollViewDelegateProxy.h"
#import "KonyScrollViewOffsetHandler.h"
#import "ExtendedView.h"
#import "FlexLayoutContainer.h"
@interface RootContainerWidget : ContainerWidget <ViewLayoutDelegate,ViewDrawingDelegate,ActionDelegate,KonyScrollContainer>

{
    ContainerBackgroundView *containerBackGroundView;
    NSMutableArray *globalHeaderWidgets;
    NSMutableArray *globalFooterWidgets;
    NSMutableArray *headerWidgets;
    NSMutableArray *footerWidgets;
    NSMutableArray *widgets;
    BOOL widgetListModified;
    
    NSMutableArray *wheelWidgetList;
    Widget< WheelWidgetProtocol> *activeWheelWidget;
    Widget< WheelWidgetProtocol> *nextWheelWidget;
    KonyInputAccessoryViewTypes inputAccessoryViewType;
    KonyScrollViewDelegateProxy<UIScrollViewDelegate>* scrollDelegateProxy;
    BOOL enableAnimations;
    BOOL hasScreenLevelWidget; //Form or popup has screen level widget or not

    BOOL isInitialLayout;
//    CGRect prevFormFrame;
    
    ContentView* contentView;

}
@property(nonatomic,retain)NSMutableArray* subWidgetListExcludingHeaderAndFooter;
@property (readonly) ContainerBackgroundView *containerBackGroundView;
@property (nonatomic, strong) ContentView* contentView;
@property (nonatomic,assign)     BOOL widgetListModified;
@property (nonatomic,assign)     BOOL hasScreenLevelWidget;
@property (nonatomic,retain)     ExtendedView *extendedView;

//Redeclared widgetModel. This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly)  ScrollContainerModel *widgetModel;

- (void) layoutContentView;
- (void) layoutContentBackGroundView;
- (float) caluclateXOffsetForWidgetWidth: (float) wx widgetAlignment: (int) align maxWidth: (float) maxw;
-(float) layoutWidgets:(NSArray*) widgetList xPosition:(float)x yPosition:(float) y withWidth:(float) width withContentRect:(CGRect) rect;
-(float) caluclateHeightForWidgets:(NSArray*) widgetList withWidth:(float) width;
-(void) initInputAccessoryViewType;
-(Widget<WheelWidgetProtocol>*) nextWheelWidget:(id<WheelWidgetProtocol>) aWidget;
-(Widget<WheelWidgetProtocol>*) prevWheelWidget:(id<WheelWidgetProtocol>) aWidget;

-(KonyInputAccessoryViewTypes) getFormLevelInputAccessoryViewType;
-(Widget<WheelWidgetProtocol>*) getActiveWheelableWidget;
-(Widget<WheelWidgetProtocol>*) getNextActiveWheelableWidget;
-(void) refreshWheelWidgetList;
-(void) setNextActiveWheelableWidget:(Widget<WheelWidgetProtocol>*) aWidget;
-(void) disableScrolling;
-(void) enableScrolling;

-(BOOL) registerActiveWheelableWidget:(Widget <WheelWidgetProtocol>*) aWidget;
-(BOOL) unregisterActiveWheelableWidget;
-(void) dismissActiveSIP;

-(void) showActivityIndicator;  // method added for backward compatibility.
-(void) stopActivityIndicator;  // method added for backward compatibility.
-(BOOL) shouldRetainScrollPosition;

-(CGRect) getHeaderRect;
-(CGRect) getFooterRect;
-(NSArray*)getAppLevelHeaders;
-(NSArray*)getAppLevelFooters;
-(BOOL)shouldOverlapAppLevelHeaderWidget;
-(BOOL)shouldOverlapAppLevelFooterWidget;
-(void)addAppLevelHeaderToWindow:(float)yPosition;
-(void)addAppLevelFooterToWindow:(float)footerHeight;
-(BOOL)isAppLevelWidgetAvailableOnForm:(NSString*)placement;
-(void)addAppLevelHeaderAndFooter;

-(void) tryInitializeGlobalHeadersAndFooters;

- (float)statusBarInsetAdjustmentWithYPosition:(float)y;
- (float)navigationBarInsetAdjustmentWithYPosition:(float)y;
- (float)tabBarInsetAdjustmentWithYPosition:(float)y;
- (float)statusAndNavBarAdjustmentForHeader;
- (float)tabBarAdjustmentForFooter;
-(BOOL)shouldOverlapTop;
-(BOOL)shouldOverlapBottom;
- (CGSize)adjustContentSizeAccordingToScrollDirection:(CGSize)newContentSize;
-(void) addWheelWidgetsFromBox:(Widget*) aWidget;
-(void) removeWheelWidgetsFromBox:(Widget*) aWidget;
- (UIView*) getContentViewForWidget;
-(FlexLayoutContainer*) getModalFlexContainerFacade;
@end
