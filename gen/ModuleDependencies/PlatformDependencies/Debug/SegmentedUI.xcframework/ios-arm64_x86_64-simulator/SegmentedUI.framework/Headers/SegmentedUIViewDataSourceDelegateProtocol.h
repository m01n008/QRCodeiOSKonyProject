//
//  SegmentedUIViewDataSourceDelegateProtocol.h
//  VM
//
//  Created by KH206 on 19/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

#define SEGUI_CONFIG_KEY_SKIN @"skin"
#define SEGUI_CONFIG_KEY_ROW_SKIN @"rowSkin"
#define SEGUI_CONFIG_KEY_PAGE_SKIN @"pageSkin"
#define SEGUI_CONFIG_KEY_ROW_FOCUS_SKIN @"rowFocusSkin"
#define SEGUI_CONFIG_KEY_ALTERNATE_ROW_SKIN @"alternateRowSkin"
#define SEGUI_CONFIG_KEY_SECTION_HEADER_SKIN @"sectionHeaderSkin"
#define SEGUI_CONFIG_KEY_EDITING_STYLE @"editingStyle"
#define SEGUI_CONFIG_KEY_SHOW_SEARCH_BAR @"showSearchBar"
#define SEGUI_CONFIG_KEY_EDIT_MODE @"editMode"
#define SEGUI_CONFIG_ENABLESCROLLING @"enableScrolling"

#define SEGUI_CONFIG_KEY_LINEAR_CONFIG @"linearConfig"
#define SEGUI_CONFIG_KEY_ROTATORY_CONFIG @"rotatoryConfig"
#define SEGUI_CONFIG_KEY_INVERTED_ROTATORY_CONFIG @"invertedRotatoryConfig"
#define SEGUI_CONFIG_KEY_CYLINDER_CONFIG @"cylinderConfig"
#define SEGUI_CONFIG_KEY_INVERTED_CYLINDER_CONFIG @"invertedCylinderConfig"
#define SEGUI_CONFIG_KEY_COVER_FLOW_CONFIG @"coverflowConfig"
#define SEGUI_CONFIG_KEY_STACK_CONFIG @"stackConfig"

#define SEGUI_CONFIG_KEY_VIEW_CONFIG @"viewConfig"
#define SEGUI_CONFIG_KEY_SEPERATOR_REQUIRED @"seperatorRequired"
#define SEGUI_CONFIG_KEY_SEPERATOR_THICKNESS @"seperatorThickness"
#define SEGUI_CONFIG_KEY_SEPERATOR_COLOR @"seperatorColor"
#define SEGUI_CONFIG_KEY_SHOW_SCROLLBARS @"showScrollBars"
#define SEGUI_CONFIG_KEY_INDICATOR_TYPE @"indicatorType"
#define SEGUI_CONFIG_KEY_ENABLE_DICTIONARY @"enableDictionary"
#define SEGUI_CONFIG_KEY_ENABLE_OPTIMIZATION @"enableOptimization"
#define SEGUI_CONFIG_KEY_NEED_PAGE_INDICATOR @"needPageIndicator"
#define SEGUI_CONFIG_KEY_PAGE_ON_DOT_IMAGE @"pageOnDotImage"
#define SEGUI_CONFIG_KEY_PAGE_OFF_DOT_IMAGE @"pageOffDotImage"
#define SEGUI_CONFIG_KEY_PAGE_ON_TINT_COLOR @"pageOnTintColor"
#define SEGUI_CONFIG_KEY_PAGE_OFF_TINT_COLOR @"pageOffTintColor"
#define SEGUI_CONFIG_KEY_RETAIN_SELECTION @"retainSelection"
#define SEGUI_CONFIG_KEY_BOUNCES @"bounces"
#define SEGUI_CONFIG_KEY_ENABLE_REORDERING @"enableReordering"
#define SEGUI_CONFIG_KEY_SECTION_HEADER_TOP_PADDING @"sectionHeaderTopPadding"

#define SEGUI_CONFIG_KEY_FIXEDROWHEIGHT @"fixedRowHeight"
#define SEGUI_CONFIG_KEY_SELECTIONBEHAVIOR @"selectionBehavior"
#define SEGUI_CONFIG_KEY_ONROWCLICK @"onRowClick"
#define SEGUI_CONFIG_KEY_SCROLLSTOTOP @"scrollsToTop"
#define SEGUI_CONFIG_KEY_IS_SEGMENT_ROW_CACHE_ENABLED @"isSegmentRowCacheEnabled"
#define SEGUI_CONFIG_KEY_RETAIN_SCROLLED_PAGE         @"retainScrolledPage"

#define SEGUI_CONFIG_KEY_EDIT_MODE @"editMode"
#define SEGUI_CONFIG_EDIT_MODE_DELETE						@"delete"
#define SEGUI_CONFIG_EDIT_MODE_INSERT						@"insert"

/**********  EDITMODE_CUSTOM_CONFIG     **********/
#define SEGUI_CONFIG_EDIT_MODE_CUSTOMCONFIG                 @"editModeCustomConfig"
#define SEGUI_CONFIG_EDIT_MODE_CUSTOMCONFIG_TITLE           @"title"
#define SEGUI_CONFIG_EDIT_MODE_CUSTOMCONFIG_CALLBACK        @"callback"
#define SEGUI_CONFIG_EDIT_MODE_CUSTOMCONFIG_BACKGROUNDCOLOR @"backgroundColor"

#define SEGUI_CONFIG_KEY_TOPPADDING @"topPadding"
#define SEGUI_CONFIG_KEY_BOTTOMPADDING @"bottomPadding"
#define SEGUI_CONFIG_KEY_LEFTPADDING @"leftPadding"
#define SEGUI_CONFIG_KEY_RIGHTPADDING @"rightPadding"

#define SEGUI_CONFIG_KEY_CLICKABLE  @"clickable"

#define SEGUI_CONFIG_KEY_ISCIRCULAR @"isCircular"

@protocol SegmentedUIViewDataSourceDelegateProtocol <NSObject>

- (BOOL) shouldDisplaySections;
- (BOOL) shouldGroupRowsInSection;
- (NSInteger) numberOfSections;
- (NSInteger) numberOfRowsInSection: (NSInteger) sectionIndex;
- (NSDictionary*) dataForRow: (NSInteger) rowIndex inSection:(NSInteger) sectionIndex;
- (NSDictionary*) configForRow: (NSInteger) rowIndex inSection:(NSInteger) sectionIndex;
- (NSDictionary*) configForSection:(NSInteger)sectionIndex;
- (id) dataForSection:(NSInteger) sectionIndex;
- (id) templateForSection: (NSInteger) sectionIndex;
- (WidgetModel*) templateForRowAt: (NSInteger) rowIndex inSection:(NSInteger) sectionIndex;
- (NSDictionary*) getViewConfig;
- (NSArray*) headerWidgets;
- (NSArray*) footerWidgets;
- (void) setCache: (id) cache forRow: (NSInteger) rowIndex inSection:(NSInteger) sectionIndex;
- (id) getCacheForRow: (NSInteger) rowIndex inSection:(NSInteger) sectionIndex;
- (BOOL) shouldRecognizeGestures;
- (void) deleteSectionsFromWidgetInfo:(NSInteger) index;
- (void) updateDataPostReorderFromRow: (NSIndexPath *) row toRow: (NSIndexPath *) newRow;

@optional

- (NSMutableDictionary *)accessibilityDataForRow:(NSInteger)rowIndex inSection:(NSInteger)sectionIndex;
- (NSMutableDictionary *)accessibilityDataForSection:(NSInteger)sectionIndex;

@end

