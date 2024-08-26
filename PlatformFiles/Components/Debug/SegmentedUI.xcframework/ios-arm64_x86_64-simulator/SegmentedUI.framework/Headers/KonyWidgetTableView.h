//
//  KonyWidgetTableView.h
//  VM
//
//  Created by KH206 on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SegmentedUIViewProtocol.h"
#import "SegmentedUIViewDelegateProtocol.h"
#import "SegmentedUIViewDataSourceDelegateProtocol.h"
#import <CoreComponent/KonyTypes.h>
#import <CoreComponent/KonyWidgetEventListenerProtocol.h>
#import <CoreComponent/CustomCellBackgroundView.h>
#import <CoreComponent/FlexContainerModel.h>

#define SEGUI_MIN_SEGMENT_HEIGHT	40.
#define SEGUI_DELETE_CONFIRMATION_KEY				@"platform.segui.deletebuttontext"
#define SEGUI_DELETE_CONFIRMATION_DEFAULT_TEXT		@"Delete"

@class  KeyFrameAnimationModel;

@interface KonyWidgetTableView : NSObject <SegmentedUIViewProtocol, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate,KonyWidgetEventListenerProtocol>
{
    UITableView *tableView;
    UISearchBar *searchBar;
    UIView *backGroundView;
    id <SegmentedUIViewDelegateProtocol> __weak delegate;
    id <SegmentedUIViewDataSourceDelegateProtocol> __weak dataSourceDelegate;

    NSString *widgetSkinID;
    NSString *rowSkinID;
    NSString *rowFocusSkinID;
    NSString *alternateRowSkinID;
    NSString *sectionHeaderSkinID;
    BOOL enableReordering;
    
    SegmentedUIEditStyle editingStyle;
    UIColor *seperatorColor;
    BOOL    seperatorRequired;
    float   seperatorThickness;
    float   sectionHeaderTopPadding;
    
    BOOL    showSearchBar;
    BOOL    groupCells;
    BOOL    showScrollBars;
    BOOL    enableDictionary;
    BOOL    enableOptimization;
    float   referenceWidth;
    float   contentWidth;
    BOOL    retainSelection;
    
    BOOL    bounces;
    BOOL    isSegmentRowCacheEnabled;
    
    NSArray *headerList;
    NSArray *footerList;

    KonySegmentedUIIndicatorType indicatorType;
    
    BOOL isRowHeightFixed;
    
    BOOL scrollsToTop;
    
    SegmentedUISelectionBehavior selectionBehavior;
    
    CallBack *onRowClick;
    CallBack *onDragCompleted;
}

@property (nonatomic, retain) UITableView *tableView;
@property (nonatomic, weak) id <UITableViewDelegate> scrollViewDelegate;

@property (nonatomic, retain) KeyFrameAnimationModel *visibleAnimationModel;
@property (nonatomic, retain) KeyFrameAnimationModel *invisibleAnimationModel;

-(id) initWithScrollDelegate: (id) delegate_;
- (void)refreshSkinForVisibleCells;
- (id) initWithGroupCells: (BOOL) shouldGroupCells withDataSourceDelegate:(id)dataSourceDelg;
#if DEBUGINFO
- (NSArray*)visibleCells;
#endif

@end

@interface KonyWidgetTableView (Private)

- (void) loadConfig;
- (CustomCellBackgroundViewPosition) determineCellPositionForRow: (NSInteger) row AndCount: (NSInteger) count;
- (CustomCellBackgroundView*) CustomCellBackgroundViewWithSkin: (Skin*) skin separatorColor: (UIColor*) separatorColor withPosition: (CustomCellBackgroundViewPosition) position andGroupedMode: (BOOL) groupedMode;
- (CGSize) getPreferredSizeForTemplate:(WidgetModel*) templateModel forData: (NSDictionary*) dataDict givenWidth: (float)givenWidth;
- (void) registerForEventType: (KonyWidgetEventType) eventType forWidget: (Widget*) widget recursive: (BOOL) isRecursive;
-(void) updateCustomCellBackgroundView:(CustomCellBackgroundView*) cellBgView withSkin: (Skin*) skin separatorColor: (UIColor*) separatorColor withPosition: (CustomCellBackgroundViewPosition) position andGroupedMode: (BOOL) groupedMode;
-(void) resetCellBackgroundView:(CustomCellBackgroundView*) bgView;


@end
