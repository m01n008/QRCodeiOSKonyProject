//
//  SegmentUIDatamodel.h
//  VM
//
//  Created by KH206 on 06/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SegmentedUISectionDataModel.h"
#import "SegmentedUIRowDataModel.h"
@interface SegmentUIDatamodel : NSObject <NSCopying>
{
    NSMutableArray *sections;
    BOOL isDataWithSections;
}

@property (nonatomic) BOOL isDataWithSections;
@property (nonatomic, readonly)     NSMutableArray *sections;
-(NSInteger) sectionCount;
-(void) addSections: (NSArray*) sections;
-(void) addSection: (SegmentedUISectionDataModel*) section;
-(void) insertSection: (SegmentedUISectionDataModel*) section at:(NSInteger) index;
-(void) updateSection: (SegmentedUISectionDataModel*) section at:(NSInteger) index;
-(void) deleteSectionAt:(NSInteger) index;
-(void) deleteAllSections;
- (SegmentedUISectionDataModel*) getSectionWithId: (NSInteger) sectionId;
- (NSInteger) indexForSection: (SegmentedUISectionDataModel*) section;

-(SegmentedUISectionDataModel*) getSectionAt: (NSInteger) index;

- (void) setHighlightedRowAtIndexPath: (NSIndexPath*) indexPath;

- (void) setEventTriggeredRowAtIndexPath: (NSIndexPath*) indexPath;

- (SegmentedUIRowDataModel*) getHighlightedRow;
- (SegmentedUIRowDataModel*) getEventTiggeredRow;
- (NSIndexPath*) getIndexPathOfHighlightedRow;
- (NSIndexPath*) getIndexPathOfEventTriggeredRow;
- (NSIndexPath*) getIndexPathRow: (SegmentedUIRowDataModel*) row;
- (NSIndexPath*) getIndexPathOfRowWithId: (NSInteger) rowId;
- (SegmentedUIRowDataModel*) getRowWithId: (NSInteger) rowId;
- (SegmentedUIRowDataModel*) getRowAtindexPath: (NSIndexPath*) indexPath;

- (NSMutableArray*) getIndexPathsForSelectedRows;
- (NSMutableArray*) getIndexPathsForSelectedRowsInSection:(NSInteger) section;
- (void) resetAllSelectedRows;
- (void) resetAllEventTriggeredRows;
- (void) resetAllHighlightedRows;
- (void) selectRowsAtIndexPaths: (NSArray*) indexPaths;
- (void) resetSelectionForRowAtIndexPath: (NSIndexPath*) indexPath;
- (void) selectrowAtIndexPath: (NSIndexPath*) indexPath;


@end
