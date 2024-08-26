//
//  SegmentedUISectionDataModel.h
//  VM
//
//  Created by KH206 on 06/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SegmentedUIRowDataModel.h"

@interface SegmentedUISectionDataModel : NSObject <NSCopying>
{
    id              sectionData;
    NSMutableArray *sectionRows;
    NSInteger       sectionID;
}

@property (nonatomic, readonly) id sectionData;
@property (nonatomic, readonly) NSInteger sectionID;
@property (nonatomic, readonly) NSMutableArray *sectionRows;

- (id) initWithSectionData: (id) data andId: (NSInteger) uniqueID; 

-(NSInteger) rowCount;
-(void) addRows: (NSArray*) rows;
-(void) addRow: (SegmentedUIRowDataModel*) row;
-(void) insertRow: (SegmentedUIRowDataModel*) row at:(NSInteger) index;
-(void) updateRow: (SegmentedUIRowDataModel*) row at:(NSInteger) index;

//Updation without triggering the widget's oberver methods - useful when the model
//gets populated back from the view which means there is no need of observer calls
-(void) updateHeaderQuietForKVO: (NSMutableDictionary*) compositDict;
-(void) updateRowQuietForKVO: (SegmentedUIRowDataModel*) row at:(NSInteger) index;
-(void) insertRowQuietForKVO: (SegmentedUIRowDataModel*) row at:(NSInteger) index;
-(void) deleteRowAtQuietForKVO:(NSInteger) index;

-(void) deleteRowAt:(NSInteger) index;
-(NSInteger) deleteRowsFrom:(NSInteger)startIndex to:(NSInteger)endIndex;
- (NSArray*) getArrayDataWithSectionInfo:(BOOL) getSectionInfo;

-(SegmentedUIRowDataModel*) getRowAt:(NSInteger) rowIndex;
@end
