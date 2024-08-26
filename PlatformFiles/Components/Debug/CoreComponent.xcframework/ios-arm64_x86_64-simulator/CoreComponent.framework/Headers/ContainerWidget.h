//
//  ContainerWidget.h
//  VM
//
//  Created by KH206 on 09/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Widget.h"
#import "KonyTypes.h"
#import "ContainerWidgetLayout.h"
#import "AccessibilityDelegate.h"

@interface ContainerWidget : Widget <AccessibilityDelegate>
{
    NSMutableArray *masterSubWidgetList;
    NSMutableArray *subWidgetList;
    NSMutableArray *childWidgetListForAccessibility;
    BOOL            synchronizeSubWidgets;
    NSMutableArray *widgetsMarkedForRemoval;
    
    BOOL preformDefaultLayouts;
    
    @private
    CGRect          previousLayoutRect;
}

@property (nonatomic, readonly) NSMutableArray* subWidgetList;
@property (nonatomic, readonly) CGRect headerFrame;
@property (nonatomic, readonly) CGRect footerFrame;
@property (nonatomic, readonly) CGRect wholeFrame;
@property (nonatomic, readonly) NSMutableArray* widgetsMarkedForRemoval;
@property (nonatomic) BOOL preformDefaultLayouts;
@property (nonatomic, retain) NSMutableArray *childWidgetListForAccessibility;
@property (nonatomic) CALayer *paddingLayer;

- (void) performDefaultLayouts: (BOOL) layoutFlag forceChildWidgets:(BOOL) forceChildren;

- (Widget*) getWidgetWithID : (NSString*) widgetID;

- (void) widgetAdded : (Widget*) widget;
- (void) widgetRemoved : (Widget*) widget;

-(BOOL) bringWidgetToViewport:(Widget*) aWidget;
-(BOOL) validateOffsetFor:(Widget*) aWidget;

- (Widget*) getWidgetForGivenWidgetModel: (WidgetModel*) aWidgetModel;
- (void) addWidgetContextInfo:(NSDictionary *)objects recursive:(BOOL) isRecursive;
- (void) addWidgetConstraintsInfo:(NSDictionary *)objects recursive:(BOOL) isRecursive;
- (void) removeWidgetConstraintsForKey:(NSString *) constraintKey recursive:(BOOL) isRecursive;
- (void) removeAllConstraintsRecursive:(BOOL) isRecursive;
- (void) updateWidgetHighlight:(BOOL) value recursive:(BOOL) isRecursive;

-(BOOL) isWidgetContainedInHeaders: (Widget*) widget;
-(BOOL) isWidgetContainedInFooters: (Widget*) widget;

-(float) getTopAndBottomMarginSpace;
-(float) getRightAndLeftMarginSpace;

- (void) synchronizeWidgets;
- (void) forceLayoutForChildWidgetsIfNeeded:(UIView*)view;
- (void) destroySubWidgets;

- (void) widgetFinishedAnimation:(Widget*) subWidget;
- (Widget*) getWidgetToBeRemovedForWidget:(Widget*) subWidget;
- (void) removeWidget:(Widget*) subWidget;
- (void) markWidgetForRemoval:(Widget*) subWidget;

- (Widget*) getScreenLevelWidgetinWidgets: (NSArray*) widgetList;

- (void)reorderSubwigetsBasedOnZIndices;
-(Widget*) searchRecursively:(BOOL) searchRecursively_ InArray:(NSArray*) widgetArray_ andCompareWithWidget:(Widget*) compareWidget_;

- (void)updateChildWidgetListAfterConsideringAccessibilityIndices;
- (UIView*) getContentViewForWidget;
/* DOCKING FEATURE :: THIS API IS USED ONLY FOR WIDGETS REGISTERED FOR onScrollWidgetPosition to retrive the position coordinates*/
-(void)onScrollingWidgetPositionCallback:(WidgetModel*)wdgMdl callBackOptions:(NSDictionary*)keyboardState withRefView:(UIView*)refView byDeducting:(CGFloat)deduction;
- (void) addAccessibiltyIdentifierforWidget:(NSString*)accessibilityIdentifier;
@end
