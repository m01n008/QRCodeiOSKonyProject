//
//  SegmentedUIProxy.h
//  VM
//
//  Created by KH206 on 04/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>
#import "SegmentedUIModel.h"

@interface OldSegmentedUIProxy : BaseProxy
{
    
}

+(id) createWidget: (NSDictionary*) config;
- (void) setData : (NSArray*) data;
- (void) addAll : (NSArray*) data;
- (void) removeRowAt: (NSNumber*) row InSection: (NSNumber*) section;
- (void) setData: (NSDictionary*) data AtRow: (NSNumber*) row InSection: (NSNumber*) section;
- (void) addData: (NSDictionary*) data AtRow: (NSNumber*) row InSection: (NSNumber*) section;
- (void) removeAll;
- (void) clearSelection;
- (void) removeSectionAt: (NSNumber*) sectionIndex;

- (NSMutableArray *)indexPathsOfVisibleCells;
- (NSMutableDictionary *)getFirstVisibleRow;
- (NSMutableDictionary *)getLastVisibleRow;

@end


@interface SegmentedUIProxy : OldSegmentedUIProxy
{

}

- (void) addSectionsData:(NSArray*)data At: (NSNumber*) sectionIndex;
- (void) setSectionData:(NSArray*)data At: (NSNumber*) sectionIndex;
- (void) setSelectedRowIndexForRow:(NSNumber*) row InSection:(NSNumber*) section withAnimation:(BOOL) animate;
- (NSNumber *) removeRowsInRangeStartingFrom:(NSNumber *)startRowIndex To:(NSNumber *)endRowIndex inSection:(NSNumber *)sectionIndex;

- (WidgetModel *)getWidgetModelForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;


- (UIView *)getViewForWidgetID:(NSString *)widgetID forSectionIndex:(NSInteger)sectionIndex andRowIndex:(NSInteger)rowIndex;
- (UIView*)getViewForSectionFooterHeaderWidgetID:(NSString *)widgetID forType:(NSString*)headerFootertype forSectionIndex:(NSInteger)sectionIndex;
/** @method searchTextWithCondition:(NSArray*)condition usingConfig:(NSDictionary*)config
 *  @brief Searching a text in segment with the condition and the config. This Calls the model class
 *  @param condition : Searching condition in the form equation like (A & ((B | C) & D))
 *  @param config : configuration realated to updateSegment and showSectionHeaderFooter
 *  @returns NSArray : returns the list of search item indices from master data.
 **/
- (NSArray*)searchTextWithCondition:(NSArray*)condition usingConfig:(NSDictionary*)config;
/** @method clearSearch
 *  @brief clearing the search results from the segment if filter results are showing. This method calls the model class
 **/
-(void)clearSearch;
-(void)resetSwipeMove:(NSString*)widgetId inContext:(NSDictionary*)context;
/**
 @brief  Used to return current the filtered set
 @return NSArray returns the list of filtered data setin the form of [[secIndex,rowIndex],[secIndex,rowIndex],.....]
 */
-(NSArray*)getUpdatedSearchResults;
@end
