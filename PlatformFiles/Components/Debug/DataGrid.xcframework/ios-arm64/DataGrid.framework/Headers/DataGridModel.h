//
//  DataGridModel.h
//  VM
//
//  Created by Girish Haniyamballi on 23/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/WidgetModel.h>

@interface DataGridModel : WidgetModel{

    NSString*   headerSkin;
    NSString*   rowNormalSkin;
    NSString*   rowFocusSkin;
    NSString*   rowAlternateSkin;
    BOOL        showColumnHeaders;
    NSArray*    columnHeadersConfig;
    CallBack*   onRowSelected;
    BOOL        isMultiSelect;
    NSDictionary*  selectedItem;
    NSNumber*   selectedIndex;
//    NSMutableArray*    selectedItems;
//    NSMutableArray*    selectedIndices;
//    NSNumber*   rowCount;
    NSMutableArray*    data;
    NSString*   gridlineColor;
    BOOL viewNeedsUpdate;
 	NSMutableArray* selectedRowIndexes; //kep track of selected rows

}
@property (nonatomic, assign) BOOL viewNeedsUpdate;
@property (nonatomic, retain) NSString*   headerSkin;
@property (nonatomic, retain) NSString*   rowNormalSkin;
@property (nonatomic, retain) NSString*   rowFocusSkin;
@property (nonatomic, retain) NSString*   rowAlternateSkin;
@property (nonatomic)         BOOL        showColumnHeaders;
@property (nonatomic, retain) NSArray*    columnHeadersConfig;
@property (nonatomic, retain) CallBack*   onRowSelected;
@property (nonatomic)         BOOL        isMultiSelect;
@property (nonatomic, retain) NSDictionary*          selectedItem;
@property (nonatomic, retain) NSNumber*   selectedIndex;
@property (nonatomic, retain) NSArray*    selectedItems;
@property (nonatomic, retain) NSArray*    selectedIndices;
@property (nonatomic, retain) NSNumber*   rowCount;
@property (nonatomic, retain) NSMutableArray*    data;
@property (nonatomic, retain) NSString*   gridlineColor;

@property (nonatomic,retain) 	NSMutableArray* selectedRowIndexes;
@end
