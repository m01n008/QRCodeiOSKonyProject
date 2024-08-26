//
//  SegmentedUIWidget.h
//  VM
//
//  Created by KH206 on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import "SegmentedUIViewDelegateProtocol.h"
#import "SegmentedUIViewDataSourceDelegateProtocol.h"
#import "SegmentedUIViewProtocol.h"
#import "SegmentedUIModel.h"
#import <CoreComponent/KonyScrollViewDelegateProxy.h>
#import "SegmentUIDatamodel.h"
#import <CoreComponent/KonyScrollViewOffsetHandler.h>
//#import "SegmentSearch.h"

#define ROW_INDEX       @"rowIndex"
#define SECTION_INDEX   @"sectionIndex"
#define ROW_RECT        @"rowRect"
#define DRAG_START_CONTEXT @"dragstartcontext"
#define DRAG_END_CONTEXT @"dragendcontext"

@class SegUIHostView;
@class SegmentSearch;
@interface SegmentedUIWidget : Widget <SegmentedUIViewDelegateProtocol, SegmentedUIViewDataSourceDelegateProtocol, KonyScrollContainer>
{
    id<SegmentedUIViewProtocol> segmentedUIView;
    
    BOOL requireDataReload;
    CGSize prevGivenSize;

    SegmentUIDatamodel *segmentWidgetInfo;
    
    KonyScrollViewDelegateProxy <UITableViewDelegate> *scrollProxy;
    
    WidgetModel *defaultTemplate;
    
    SegmentedUIRowDataModel *previousSelectedRowModel;
    SegmentedUISectionDataModel *previousSelectedSectionmodel;
    
    NSMutableDictionary *segmentRowCache;
    
    BOOL searchInProgress;
    NSArray *segmentDataForSearching;

    NSString *widgetSkinID;
    NSString *rowSkinID;
    NSString *rowFocusSkinID;
    NSString *alternateRowSkinID;
    NSString *sectionHeaderSkinID;
    NSString *pageSkinID;
    
    NSDictionary *viewConfig;
    NSArray *headerList;
    NSArray *footerList;
    
    NSString *searchString;
    
    NSIndexPath *clickedIndexPath;
    
    SegUIHostView *segUIHostView;
    
    BOOL focusSelectedRow;
    BOOL dataReloadInProgress;
    BOOL animateFocusChanges;
    NSMutableDictionary *segmentedUISectionObserverList;
    BOOL requireContextInfoRefresh;
    NSMutableArray *previousRowSwipeWdgs;
}

//Redeclared widgetModel, This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly)  id<SegmentedUIViewProtocol> segmentedUIView;
@property (nonatomic, readonly)  SegmentedUIModel *widgetModel;
@property (nonatomic, retain) NSString *widgetSkinID;
@property (nonatomic, retain) NSString *rowSkinID;
@property (nonatomic, retain) NSString *rowFocusSkinID;
@property (nonatomic, retain) NSString *alternateRowSkinID;
@property (nonatomic, retain) NSString *sectionHeaderSkinID;
@property (nonatomic, retain) NSString *pageSkinID;
@property (nonatomic, retain) NSDictionary *viewConfig;
@property (nonatomic, retain) NSMutableArray *previousRowSwipeWdgs;

- (void) segmentDataUpdatedWithNewValue: (id) newValue oldValue: (id) oldValue;
- (BOOL) isViewTypeCarousel:(SegmentedUIViewType) viewType;
- (void) clearSelection;
-(void)addObserverIntoTempDict:(id)observerObject forKey:(NSString*)key;
-(void)removeObserverIntoTempDict:(id)observerObject forKey:(NSString*)key;

- (Widget *)getWidgetForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;
- (UIView *)getViewForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;

- (NSMutableDictionary *)getFirstVisibleRow;
- (NSMutableDictionary *)getLastVisibleRow;
- (NSMutableArray *)indexPathsOfVisibleCells;
#if DEBUGINFO
-(NSArray*) getSegmentTableViewVisibleRows;
#endif

- (void)animationForComposedWidgetDidStart;
- (void)animationForComposedWidgetDidEnd;

- (void)performAnimatedApiRelatedTaksUsingConfiguration:(NSMutableArray *)config forOperation:(OPERATION_TYPE)operation;

- (void)performRemovalActivityUsingConfiguration:(NSMutableArray *)config forOperation:(OPERATION_TYPE)operation;

- (void)dataUpdatedByAnimationEffect;

- (void)reloadSegment:(NSNotification*)aNotification;
- (void)setFocusToSubView;
@end




