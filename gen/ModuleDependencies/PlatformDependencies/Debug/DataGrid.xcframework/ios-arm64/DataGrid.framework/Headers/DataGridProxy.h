//
//  DataGridProxy.h
//  VM
//
//  Created by Girish Haniyamballi on 24/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>

@interface DataGridProxy : BaseProxy


- (void) setData : (NSArray*) data; 
- (void) addAll : (NSArray*) data ;
- (void) addAt:(NSInteger) rowIndex :(NSDictionary*) rowData;
- (void) setDataAt:(NSInteger) rowIndex :(NSDictionary*) rowData ;
- (void) removeAt:(NSInteger) rowIndex ;
- (void) removeAll; 
- (void) applyCellSkin: (NSInteger) rowIndex :(NSString*) columnID :(NSString*) skinid;
- (void) selectAllRows: (BOOL) bSelectAll;
- (void) setCellDataAt: (NSInteger) rowIndex :(NSString*) columnID :(NSString*)columnData ;

@end
