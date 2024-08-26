//
//  SegmentedUIModel.h
//  VM
//
//  Created by KH206 on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/WidgetModel.h>
#import "SegmentUIDatamodel.h"

#define SEGUI_EDIT_STYLE_ICON					@"icon"
#define SEGUI_EDIT_STYLE_SWIPE					@"swipe"
#define SEGUI_EDIT_STYLE_NONE					@"none"
#define SEGUI_SEARCH_CRITERIA					@"searchCriteria"
#define SEGUI_SEARCH_CRITERIA_STARTSWITH		@"startsWith"
#define SEGUI_SEARCH_CRITERIA_CONTAINS			@"contains"
#define SEGUI_SEARCH_CRITERIA_ENDSWITH			@"endswith"

#define SEGUI_SELECTION_BEHAVIOR_SINGLE_SELECT			@"singleselect"
#define SEGUI_SELECTION_BEHAVIOR_MULTI_SELECT			@"multiselect"

#define SEGUI_INDICATOR_ROW_SELECT			@"rowSelect"
#define SEGUI_INDICATOR_ROW_CLICK			@"rowClick"

#define PROG_INDICTOR_COLOR_WHITE				@"white"
#define PROG_INDICTOR_COLOR_GRAY				@"gray"

@class KeyFrameAnimationModel;


@interface AnimationAPIOperationData : NSObject

//The following arrays hold the animation data and the corresponding indexPaths
//configArray = [[anim, idxPath], [anim1, indxPath],...]
//The multiple objects inside the array denote the multiple invocations of apis at the model stage which haven't
//yet reflected in the view. Once the animations are played and output gets mapped to the views, the array is made empty
@property (nonatomic, retain) NSMutableArray *addDataAtConfiguartion;
@property (nonatomic, retain) NSMutableArray *removeAtConfiguartion;
@property (nonatomic, retain) NSMutableArray *setDataAtConfiguartion;

//Different format from above
@property (nonatomic, retain) NSMutableArray *addAllConfiguartion;
@property (nonatomic, retain) NSMutableArray *setDataConfiguartion;
@property (nonatomic, retain) NSMutableArray *removeAllConfiguartion;

@property (nonatomic, retain) NSMutableArray *addSectionAtConfiguartion;
@property (nonatomic, retain) NSMutableArray *removeSectionAtConfiguartion;
@property (nonatomic, retain) NSMutableArray *setSectionAtConfiguartion;

@end
@class SegmentSearch;
@interface SegmentedUIModel : WidgetModel
{
    NSDictionary *widgetDataMap;
    id rowTemplate;
    WidgetModel *rowTemplateObj;
    id sectionTemplate;
    WidgetModel *sectionTemplateObj;
    NSArray     *tempSegData; // Will be there untill the full fledged data model implementation is done...
    SegmentUIDatamodel  *segmentData;
    SegmentedUIViewType viewType;
    NSString            *oldViewType;
    NSString *widgetSkinID;
    NSString *rowSkinID;
    NSString *rowFocusSkinID;
    NSString *alternateRowSkinID;
    NSString *pageSkinID;
    NSDictionary* scrollingEvents;
    NSString *sectionSkinID;
    NSString *oldEditStyle;
    SegmentedUIEditStyle editStyle;
    BOOL     editable;
    NSString* searchBy;
    NSString* oldSearchCriteria;
    SegmentedUISearchCriteria searchCriteria;
    
    NSDictionary *viewConfig;
    NSString *oldSelectionBehavior;
    NSString *selectImage;
    NSString *unselectImage;
    NSString *selectionIndicator;
    SegmentedUISelectionBehavior selectionBehavior;
    NSDictionary *selectionBehaviorConfig;
    NSInteger segmentSectionUniqueIdCounter;
    SegmentedUIScrollPosition retainScrollPositionMode;
    NSArray *selectedIndex;
    NSArray *selectedRowIndex;
    NSNumber *selectedSectionIndex;
    id       selectedItems;
    NSArray  *selectedIndices;
    NSArray  *selectedRowIndices;
    NSArray *focusedIndex;
    id       focusedItem;
    NSNumber *oldFocusedindex;
    NSArray  *oldSelectedIndices;

    BOOL    seperatorRequired;
    NSNumber *seperatorThickness;
    NSString *seperatorColor;
    
    NSNumber *sectionHeaderTopPadding;
    
    BOOL    screenLevelWidget;
    
    BOOL    groupCells;
    BOOL    showScrollBars;
    BOOL    enableDictionary;
    BOOL    showProgressIndicator;
    /* for backward compatibility, this is used to convert old string way to the new BOOL showProgressIndicator */
    NSString *needProgressIndicator;
    BOOL    needPageIndicator;
    BOOL    retainsHeaderFooter;
    BOOL    bounces;
    BOOL    needsSectionHeader;
    BOOL    retainSelection;
    BOOL    animateFocusChanges;
    BOOL    isSegmentRowCacheEnabled;
    BOOL a11yEnableTableStructure;
    id pageOnDotImage;
    id pageOffDotImage;
    id pageOnTintColor;
    id pageOffTintColor;
    
    SegmentedUIProgressIndicatorColor progressIndicatorColor;
    NSString                     *oldProgressIndicatorColor;
    
    KonySegmentedUIIndicatorType indicatorType;
    NSString                     *oldIndicatorType;
    
    KonyContentInsetAdjustmentType contentInsetAdjustmentBehaviour;
    
    CallBack *onRowClick;
    CallBack *onDragCompleted;
    CallBack *onRowSelect;
    CallBack *onInsertClick;
    CallBack *onDeleteClick;
    CallBack *onSwipe;
    CallBack *onEditing;
    CallBack *onDidFinishDataLoading;
    BOOL isRowHeightFixed;
    BOOL isCircular;
    BOOL scrollsToTop;

    NSDictionary *metaInfo;
    
    //For Drag and Drop
    BOOL enableReordering;

    CallBack *onScrollStart;
    CallBack *onScrollTouchReleased;
    CallBack *onScrolling;
    CallBack *onScrollEnd;
    NSMutableDictionary *templateCache;
    SegmentSearch *searchObj;
    BOOL searchResultsUpdated;
    BOOL isRowPanSwipeTrigerred;
}
@property (nonatomic)         BOOL     searchResultsUpdated;
@property (nonatomic, retain) SegmentSearch *searchObj;
@property (nonatomic, retain) NSDictionary *widgetDataMap;
@property (nonatomic, retain) id rowTemplate;
@property (nonatomic, retain) WidgetModel *rowTemplateObj;
@property (nonatomic, retain) id sectionTemplate;
@property (nonatomic, retain) WidgetModel *sectionTemplateObj;
@property (nonatomic, retain) NSArray     *tempSegData;
@property (nonatomic, retain) SegmentUIDatamodel      *segmentData;
//dataResetDictForSensitiveData dictionary is populated only when isSensitive property is enabled for Textbox/TextArea/SearchBox widgets in Segment
//dataResetDictForSensitiveData dictionary contains row and section data of Textbox/TextArea/SearchBox widgets placed in segment.
@property (nonatomic, retain) NSMutableDictionary *dataResetDictForSensitiveData;
@property (nonatomic, assign)         NSArray      *rawData;
@property (nonatomic)         SegmentedUIViewType      viewType;
@property (nonatomic, retain) NSString     *oldViewType;
@property (nonatomic)         SegmentedUIEditStyle     editStyle;
@property (nonatomic)         BOOL     editable;
@property (nonatomic, retain) NSString *oldEditStyle;
@property (nonatomic, retain) NSString *widgetSkinID;
@property (nonatomic, retain) NSString *rowSkinID;
@property (nonatomic, retain) NSString *rowFocusSkinID;
@property (nonatomic, retain) NSString *alternateRowSkinID;
@property (nonatomic, retain) NSString *pageSkinID;
@property (nonatomic, retain) NSDictionary* scrollingEvents;
@property (nonatomic, retain) NSString *sectionSkinID;
@property (nonatomic, retain) NSString *searchBy;
@property (nonatomic, retain) NSString *oldSearchCriteria;
@property (nonatomic)         SegmentedUISearchCriteria     searchCriteria;
@property (nonatomic, retain) NSString *oldSelectionBehavior;
@property (nonatomic, retain) NSString *selectImage;
@property (nonatomic, retain) NSString *unselectImage;
@property (nonatomic, retain) NSString *selectionIndicator;
@property (nonatomic)         SegmentedUISelectionBehavior     selectionBehavior;
@property (nonatomic, retain) NSDictionary* selectionBehaviorConfig;
@property (nonatomic, retain) NSArray* selectedIndex;
@property (nonatomic, retain) NSArray* selectedRowIndex;
@property (nonatomic, retain) NSNumber* selectedSectionIndex;
@property (nonatomic, retain) id selectedItems;
@property (nonatomic, retain) NSArray *selectedIndices;
@property (nonatomic, retain) NSArray *selectedRowIndices;
@property (nonatomic, retain) NSArray* focusedIndex;
@property (nonatomic, retain) id focusedItem;
@property (nonatomic, retain) NSNumber* oldFocusedIndex;
@property (nonatomic, retain) NSArray *oldSelectedIndices;
@property (nonatomic)         SegmentedUIScrollPosition retainScrollPositionMode;
@property (nonatomic,retain) NSDictionary *viewConfig;
@property (nonatomic, retain) NSNumber* seperatorThickness;
@property (nonatomic)         BOOL     seperatorRequired;
@property (nonatomic, retain) NSString *seperatorColor;
@property (nonatomic, retain) NSNumber *sectionHeaderTopPadding;

/*
 MADPIOS-5230:MADPIOS-5229 - If this flag is on then tablestruture for the segment(viewType tableview) will be enabled.
 */
@property (nonatomic)         BOOL     a11yEnableTableStructure;

@property (nonatomic)         BOOL     screenLevelWidget;
@property (nonatomic)         BOOL     groupCells;
@property (nonatomic)         BOOL     showScrollBars;
@property (nonatomic)         BOOL     enableDictionary;
@property (nonatomic)         BOOL     enableOptimization;
@property (nonatomic)         BOOL     showProgressIndicator;
@property (nonatomic)         BOOL     needPageIndicator;
@property (nonatomic)         BOOL     retainsHeaderFooter;
@property (nonatomic)         BOOL     bounces;
@property (nonatomic)         BOOL     needsSectionHeader;
@property (nonatomic)         BOOL     retainSelection;
@property (nonatomic)         BOOL     animateFocusChanges;
@property (nonatomic)         BOOL     isSegmentRowCacheEnabled;
@property (nonatomic)         BOOL     retainScrolledPage;
@property (nonatomic, retain) id  pageOnDotImage;
@property (nonatomic, retain) id pageOffDotImage;
@property (nonatomic, retain) id  pageOnTintColor;
@property (nonatomic, retain) id pageOffTintColor;

@property (nonatomic)         SegmentedUIProgressIndicatorColor     progressIndicatorColor;
@property (nonatomic, retain) NSString *oldProgressIndicatorColor;

@property (nonatomic) KonySegmentedUIIndicatorType indicatorType;
@property (nonatomic, retain) NSString *oldIndicatorType;

@property (nonatomic, retain) CallBack *onRowClick;
@property (nonatomic, retain) CallBack *onDragCompleted;

@property (nonatomic, retain) CallBack *onRowSelect;
@property (nonatomic, retain) CallBack *onInsertClick;
@property (nonatomic, retain) CallBack *onDeleteClick;
@property (nonatomic, retain) CallBack *onSwipe;
@property (nonatomic, retain) CallBack *onEditing;
@property (nonatomic, retain) CallBack *onDidFinishDataLoading;
@property (nonatomic, retain) NSString *needProgressIndicator;

@property (nonatomic, assign) BOOL isRowHeightFixed;
@property (nonatomic)         BOOL scrollsToTop;
@property (nonatomic)         BOOL isCircular; // used for wrapping the carousel views
@property (nonatomic)         BOOL enableReordering; // used for Segment Drag and Drop

@property (nonatomic, retain) NSString *pullToRefreshI18NKey;
@property (nonatomic, retain) NSString *releaseToPullRefreshI18NKey;
@property (nonatomic, retain) NSString *releaseToPushRefreshI18NKey;
@property (nonatomic, retain) NSString *pushToRefreshI18NKey;
@property (nonatomic, retain) NSString *pullToRefreshSkin;
@property (nonatomic, retain) NSString *pushToRefreshSkin;

//Aniamtion data to be used when a cell becomes visible
@property (nonatomic, retain) KeyFrameAnimationModel *visibleAnimationModel;

//Aniamtion data to be used when a cell becomes invisible, currently not being used
@property (nonatomic, retain) KeyFrameAnimationModel *invisibleAnimationModel;

@property (nonatomic, retain) AnimationAPIOperationData *animAPIOperationData;

@property (nonatomic, retain) CallBack *onRowDisplayListener;


@property (nonatomic, retain) NSDictionary *metaInfo;

@property (nonatomic, retain) CallBack *onScrollStart;
@property (nonatomic, retain) CallBack *onScrollTouchReleased;
@property (nonatomic, retain) CallBack *onScrolling;
@property (nonatomic, retain) CallBack *onScrollEnd;
@property (nonatomic, retain) NSNumber* numberOfVisibleItems;
@property (nonatomic, readonly) NSDictionary *contentOffsetMeasured;
@property (nonatomic, retain) NSDictionary *contentOffsetVal;
@property (nonatomic) KonyContentInsetAdjustmentType contentInsetAdjustmentBehaviour;
@property(nonatomic, retain) NSMutableDictionary *templateCache;
@property (nonatomic) BOOL isRowPanSwipeTrigerred;
-(void)updateSegmentSwipeOccured:(id)bVal;
- (void) setData : (NSArray*) data;
- (void) addAll : (NSArray*) data;
- (void) addData: (NSDictionary*) data AtRow: (NSNumber*) row InSection: (NSNumber*) section;
- (void) addSectionsData:(NSArray*)data At: (NSNumber*) sectionIndex;
- (void) removeSectionAt: (NSNumber*) sectionIndex;
- (void) removeRowAt: (NSNumber*) row InSection: (NSNumber*) section;
- (void) removeRowAtIndexPath:(NSIndexPath *)rowIndexPath;
- (void) setSectionData:(NSArray*)data At: (NSNumber*) sectionIndex;
- (void) setData: (NSDictionary*) data AtRow: (NSNumber*) row InSection: (NSNumber*) section;
- (void) removeAll;
// For Segment Row Drag and Drop, Dragging a row from one location to another location
- (void) reorderRowFromRow :(NSIndexPath*) oldRowLocation toRow: (NSIndexPath*) newRowLocation;
- (void) setSelectedRowIndexForRow:(NSNumber*) row InSection:(NSNumber*) section withAnimation:(BOOL) animate;
- (NSNumber *) removeRowsInRangeStartingFrom:(NSNumber *)startRowIndex To:(NSNumber *)endRowIndex inSection:(NSNumber *)sectionIndex;

//Gets a widget's model from a row at given row and section index with the given widgetID
- (WidgetModel *)getWidgetModelForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;

/**
 @brief : This function is used to retrive the view for the row cell of particular row and section.
 */
- (UIView *)getViewForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;
/**
 @brief : This function is used to retrive the view for the section header/footer for section.
 */
- (UIView*)getViewForSectionFooterHeaderWidgetID:(NSString *)widgetIdentifier forType:(NSString*)headerFootertype forSectionIndex:(NSInteger)sectionIndex;
//Added to append data to an existing row data... Used for animation output updates in the model
/**
@brief : This function is used to retrive the view for the section header/footer for section.
 @param data: A dictionary of data which needs to be updated in the segment master data.
 @param row: rowIndex of the segment.
 @param section: sectionIndex of the segment.
 @param flag: A boolean, whether the update occured because of user action(YES) or animation(NO).
 @param widgetDataMapKey: A string refers to the alias key of the widget in the widgetDataMap.
 @param layoutNeeded : A boolean flag tells us whether layout is needed or not.(For animations, need to send this flag as false because view is already updated by the
 time animation gets over. Hence no need of layout again. If there is a component inside row, and it can updated using this.view, here data will be updated but view is not updated. Hence need to layout so send this flag as true ).
 */
- (void) appendData: (NSDictionary*) data AtRow: (NSNumber*) row InSection: (NSNumber*) section triggerredByUserInput:(BOOL)flag withWidgetDataMapKey:(NSString *) widgetDataMapKey andLayoutNeeded:(BOOL) layoutNeeded;


//The following apis return the row/section indices in a dictionary/array of dictionaries, with our custome keys ROW_INDEX/SECTION_INDEX
- (NSMutableDictionary *)getFirstVisibleRow;
- (NSMutableDictionary *)getLastVisibleRow;
- (NSMutableArray *)indexPathsOfVisibleCells;

//Used to store the operating data of animated versions of data operations apis
- (void)updateApiConfiguration:(NSMutableArray *)cofig usingAnimationModel:(KeyFrameAnimationModel *)animModel row:(NSNumber *)row section:(NSNumber *)section;
- (void)updateApiConfiguration:(NSMutableArray *)config usingAnimationModel:(KeyFrameAnimationModel *)animModel;
- (void)updateApiConfiguration:(NSMutableArray *)config usingAnimationModel:(KeyFrameAnimationModel *)animModel section:(NSNumber *)section;
- (void)updateApiConfiguration:(NSMutableArray *)config usingNativeAnimation:(NSNumber *)rowAnimation;
- (void)updateApiConfiguration:(NSMutableArray *)config usingNativeAnimation:(NSNumber *)rowAnimation section:(NSNumber *)section;
- (void)updateApiConfiguration:(NSMutableArray *)config usingNativeAnimation:(NSNumber *)rowAnimation row:(NSNumber *)row section:(NSNumber *)section;

-(void)setIsSegmentRowCacheEnabledPrivate:(BOOL)isSegmentRowCacheEnabled1;
/** @method searchTextWithCondition:(NSArray*)condition usingConfig:(NSDictionary*)config
 *  @brief Searching a text in segment with the condition and the config
 *  @param condition : Searching condition in the form equation like (A & ((B | C) & D))
 *  @param config : configuration realated to updateSegment and showSectionHeaderFooter
 *  @returns NSArray : returns the list of search item indices from master data.
 **/
- (NSArray*)searchTextWithCondition:(NSArray*)condition usingConfig:(NSDictionary*)config;
/** @method clearSearch
 *  @brief clearing the search results from the segment if filter results are showing
 **/
-(void)clearSearch;
-(void)resetSwipeMove:(WidgetModel*)widgetId inContext:(NSDictionary*)context;
/**
 @brief  Used to return current the filtered set
 @return NSArray returns the list of filtered data setin the form of [[secIndex,rowIndex],[secIndex,rowIndex],.....]
 */
-(NSArray*)getUpdatedSearchResults;

/**
  
     If rowDataKey (is a widget info) is not availale in the widgetDataMap(inversed ) then it returns false
     Used to fiiteri row data with the valid widgets for a given row.
*/
- (BOOL)isValidWidgetKey:(NSString*)rowDataKey;

@end
typedef enum
{
    STRING=1,
    STRING_IS_NUMBER,
    STRING_IS_DATE
}StringFormat;
/*!
 @class SegmentSearch
 
 @brief Segment search class to maintain the state of data indices
 
 @discussion    This class was designed and implemented to achieve the segement search.
 
 @superclass NSObject
 */
@interface SegmentSearch : NSObject
{
    /*! @brief This property is used to maintain the state of row indices based on the search results   */
    NSDictionary    *stateOfIndices;
    /*! @brief This property is maintain to copy the state of segment model  */
    SegmentedUIModel *segModel;
    /*! @brief This property helps in rendering the section header footer  */
    BOOL            showSectionHeaderFooter;
    /*! @brief This property helps in rendering the filtered data in the segment */
    BOOL            showSegmentWithSearchResults;
    /*! @brief This property holds the searchCondition which used later when data modifications are done  */
    NSArray*        searchCondition;
    /*! @brief This property holds the configuration which used later when data modifications are done  */
    NSDictionary*   configuration;
    /*! @brief This property holds the filtered results in the format of  [[secIndex,rowIndex],[secIndex,rowIndex],.....]*/
    NSArray         *currentFilteredData;
    /*! @brief This property holds the filtered segment datamodels*/
    NSMutableArray  *filteredSegmentData;
}
/*! @brief This property helps in rendering the section header footer  */
@property (nonatomic) BOOL  showSegmentWithSearchResults;
/**
 @brief resetting the current segment search object
 
 @discussion This method is used for resetting the properties.
 */
-(void)resetConfigurations;
/**
 @brief Will search the results based on the configuration and condition
 
 @discussion Based on the condition and configuration the search process will start.
 @param  condition Which is in the equation support contains the searching object
 @param  config UpdateSegment and ShowSectionHeaderFooter values
 @param  wdgRef Reference to segmentedUIModel
 
 @return NSArray returns the list of filtered indices
 */
-(NSArray*)searchTextWithCondition:(NSArray*)condition usingConfig:(NSDictionary *)config usingSegWid:(SegmentedUIModel*)wdgRef;
/**
 @brief  Used to return the number of sections from filtered data
 @return NSUInteger returns the number of sections
 */
-(NSUInteger) numberOfSectionInSearch;
/**
 @brief  Used to return the number of rows in a particulat sections from filtered data
 @param  sectionIndex section index
 @return NSUInteger returns the number of sections
 */
-(NSUInteger) numberOfRowsInSearchSection:(NSUInteger)sectionIndex;
/**
 @brief  This method helps in rendering the header footer in segment when filter data is preseting
 @return NSUInteger returns the number of sections
 */
-(BOOL)isHeaderDataNeedsRender;
/**
 @brief  This method helps in rendering the header footer in segment and return the changed section Index from filtered data
 @param  sectionIndex section index
 @return NSUInteger Modified Section index
 */
-(NSUInteger)getUpdtaedSectionHeaderIndex:(NSUInteger)sectionIndex;
/**
 @brief  Used to return the row model from the filtered set
 @param  sectionIndex section index
 @param  rowIndex row index
 @return NSUInteger returns the rowmodel for particular row in the section from the filtered data
 */
-(SegmentedUIRowDataModel*) searchItemData:(NSUInteger)sectionIndex rowIndex:(NSUInteger)rowIndex;
/**
 @brief  Used to clear the search results and reset the segment with master data
 */
-(void)clearSearch;
/**
 @brief  This method helps in calling the search API when any data operations like add/delete/set called.
 */
-(void)loadSearchData;
/**
 @brief  Used to return current the filtered set
 @return NSArray returns the list of filtered data setin the form of [[secIndex,rowIndex],[secIndex,rowIndex],.....]
 */
-(NSArray*)getUpdatedSearchResults;

@end
