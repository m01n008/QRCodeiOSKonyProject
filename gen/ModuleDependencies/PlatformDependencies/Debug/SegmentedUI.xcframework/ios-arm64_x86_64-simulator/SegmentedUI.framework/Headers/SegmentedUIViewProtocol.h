//
//  SegmentedUIViewProtocol.h
//  VM
//
//  Created by KH206 on 19/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "SegmentedUIViewDelegateProtocol.h"
#import "SegmentedUIViewDataSourceDelegateProtocol.h"
#import <CoreComponent/KonyWrapperDS.h>

typedef enum
{
    ProgressIndicatorTypeWhite,
    ProgressIndicatorTypeGrey
}ProgressIndicatorType;

@class KeyFrameAnimationModel;

@protocol SegmentedUIViewProtocol <NSObject>

@property (nonatomic, weak) id<SegmentedUIViewDelegateProtocol> delegate;
@property (nonatomic, weak) id<SegmentedUIViewDataSourceDelegateProtocol> dataSourceDelegate;

- (UIView*) view;
- (void) loadView;
- (void) reloadSectionAt:(NSInteger) sectionindex;
- (void) insertSectionAt:(NSInteger) sectionindex;
- (void) removeSectionAt:(NSInteger) sectionindex;
- (void) reloadRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) removeRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) reloadRowAt: (NSInteger) rowIndex;
- (void) removeRowAt: (NSInteger) rowIndex;
- (void) insertRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) appendRowInSection: (NSInteger) sectionIndex;
- (void) focusRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) focusSectionAt: (NSInteger) sectionIndex;
- (void) setViewFrame: (CGRect) frame;
- (void) setReferenceWidth: (float) width;
- (CGSize) getContentSize;
- (void) reloadSkins;
-(void) updateContextInfoForAllRows;
- (NSDictionary *)getContextInfoForPreviewTouchAtLocation:(CGPoint)location;
@optional
- (CGFloat)getSearchBarHeight;
- (BOOL) supportsScrollEvents;
- (UIScrollView*) getScrollView;
- (void) reloadHeaderFooterView;
- (void) insertRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex;
- (void) deleteRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex;
- (void) reloadRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex;

- (void) insertRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex withRowAnimation:(UITableViewRowAnimation)rowAnimation;
- (void) deleteRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex withRowAnimation:(UITableViewRowAnimation)rowAnimation;
- (void) reloadRowsAt: (NSArray*) rowIndexes inSection: (NSInteger) sectionIndex withRowAnimation:(UITableViewRowAnimation)rowAnimation;

- (void) focusRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex animate:(BOOL) animate;

- (void) insertSectionsAt: (NSIndexSet*) sectionIndexes;
- (void) deleteSectionsAt: (NSIndexSet*) sectionIndexes;
- (void) reloadSectionsAt: (NSIndexSet*) sectionIndexes;

- (void) insertSectionsAt: (NSIndexSet*) sectionIndexes withRowAnimation:(UITableViewRowAnimation)rowAnimation;
- (void) deleteSectionsAt: (NSIndexSet*) sectionIndexes withRowAnimation:(UITableViewRowAnimation)rowAnimation;
- (void) reloadSectionsAt: (NSIndexSet*) sectionIndexes withRowAnimation:(UITableViewRowAnimation)rowAnimation;

-(void) reloadSegmentRowAtIndex:(NSInteger*)rowIndex inSection:(NSInteger*)sectionIndex;

- (UIView*) viewForSegmentRowAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) performPostClosureActivityAtRow:(NSInteger)row inSection:(NSInteger)section;

- (void) selectRowAt:(NSInteger)rowIndex inSection:(NSInteger)sectionIndex;
- (void) clearSelectionAt: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;

- (void) showProgressIndicator: (ProgressIndicatorType) type atRow: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;
- (void) stopProgressIndicatorAtRow: (NSInteger) rowIndex inSection: (NSInteger) sectionIndex;

- (void) willAppearOnScreen;
- (void) didAppearOnScreen;

- (void) setContentInsetForScreenLevelWidget:(UIEdgeInsets)insets;

- (void) beginDataUpdates;
- (void) endDataUpdates;
- (void) viewConfigUpdated :(NSDictionary*)viewConfig;
- (void) updateScrollsToTopWithValue:(BOOL)value;
- (void) setScrollEnabledInAccessibilityMode;

- (Widget *)getWidgetForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;
- (UIView *)getViewForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;

- (UIView*)getViewForSectionHeaderOrFooterForWidgetID:(NSString *)widgetID forType:headerFootertype forSectionIndex:(NSInteger)sectionIndex;

- (NSMutableDictionary *)getFirstVisibleRow;
- (NSMutableDictionary *)getLastVisibleRow;
- (NSMutableArray *)indexPathsOfVisibleCells;
- (NSDictionary *)contentOffsetMeasured;
- (void)setContentOffsetVal:(NSDictionary *) contentOffsetSeg;
- (void)setScrollPositionForRow:(NSInteger)rowIndex inSection:(NSInteger)sectionIndex;
- (void)updateVisibleAnimationModelUsingAnimModel:(KeyFrameAnimationModel *)animModel;
- (void)updateInvisibleAnimationModelUsingAnimModel:(KeyFrameAnimationModel *)animModel;
- (void) setRequireDataReload:(BOOL)flag;


//KonyScrollContainer methods to be used for forwarding from segment widget to its views

-(UIView*) scrollView;

-(void) setContentOffset:(CGPoint)aPoint animated:(BOOL)animated;

-(CGPoint) contentOffset;

-(CGSize) contentSize;

- (BOOL) canScrollHorizontally;

- (BOOL) canScrollVertically;

-(void) setDefaultContentBottomInset: (CGFloat) bottom;

@end

