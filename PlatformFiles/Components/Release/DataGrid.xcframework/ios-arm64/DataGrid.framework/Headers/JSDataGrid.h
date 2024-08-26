//
//  JSDataGrid.h
//  VM
//
//  Created by Girish Haniyamballi on 24/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/JSWidget.h>

@interface JSDataGrid : JSWidget
{
    
}
- (void) setData:       ( NSArray* )arguments;
- (void) addAll:        ( NSArray* )arguments;
- (void) addDataAt:         ( NSArray* )arguments;
- (void) setDataAt:     ( NSArray* )arguments;
- (void) removeAt:      ( NSArray* )arguments;
- (void) removeAll:     ( NSArray* )arguments;
- (void) applyCellSkin: ( NSArray* )arguments;
- (void) selectAllRows: ( NSArray* )arguments;
- (void) setCellDataAt: ( NSArray* )arguments;

@end
