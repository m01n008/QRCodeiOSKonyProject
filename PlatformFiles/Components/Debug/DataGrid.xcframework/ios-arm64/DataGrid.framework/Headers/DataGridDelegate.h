//
//  DataGridDelegate.h
//  VM
//
//  Created by Girish Haniyamballi on 18/02/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DataGridModel.h"
#define PADDING_FOR_CELL 3
@protocol DataGridDelegate <NSObject>
@required
-(DataGridModel*) getDataGridModel;
- (NSInteger)		getNoOfColumns;
- (NSDictionary*)	getInfoForColumn:(NSInteger) columnNo;
- (Skin*)           getHeaderSkin;
- (Skin*)           getSkinWithID:(NSString*) skinID;
- (NSString*)		getSkinForRowIndex:(NSIndexPath*) rowIndex;
- (NSString*)       getSkinForCellIndex:(NSInteger)cellIndex withRowIndex:(NSIndexPath*) rowIndex;
- (NSString*)		getColumnIDforColumnName:(NSString*) name;
- (NSArray*)		getColumnNames;
- (NSArray*)		getColumnIDs;
- (NSArray*)		getColumnWidths;
- (NSArray*)		getRowHeights;
- (float)           caluclateXOffsetForWidgetWidth: (float) wx widgetAlignment: (KonyWidgetContentAlignment) align maxWidth: (float) maxw;
- (float)           caluclateYOffsetForWidgetHeight: (float) wy widgetAlignment: (KonyWidgetContentAlignment) align maxHeight: (float) maxh;
- (NSString*)       getMappedKeyForConfigKey: (NSString*) configKey;
@end