//
//  PickerViewWidgetModel.h
//  VM
//
//  Created by Rajeeva Ranjan on 15/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>

@interface PickerViewModel : WidgetModel {
   
    NSMutableArray      *masterData;
    NSMutableArray      *masterDataMap;
    NSMutableArray      *selectedKeys;
    NSMutableArray      *selectedKeyValues;
    
    CallBack            *onDone;
    
    
    NSInteger           compIndex;
    NSString            *selecKey;
    NSMutableArray      *compData;
    BOOL                supportSkins;
}

@property (nonatomic, retain) NSMutableArray       *masterData;
@property (nonatomic, retain) NSMutableArray       *masterDataMap;
@property (nonatomic, retain) NSMutableArray       *selectedKeys;
@property (nonatomic, retain) NSMutableArray       *selectedKeyValues;

@property (nonatomic, retain) CallBack             *onDone;


@property (nonatomic)         NSInteger            compIndex;
@property (nonatomic, retain) NSString             *selecKey;
@property (nonatomic, retain) NSMutableArray       *compData;
@property (nonatomic, readwrite) BOOL               supportSkins;
@end
