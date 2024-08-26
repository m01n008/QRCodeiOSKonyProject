//
//  SegmentedUIRowDataModel.h
//  VM
//
//  Created by KH206 on 06/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SegmentedUIRowDataModel : NSObject <NSCopying>
{
    NSInteger    rowID;
    id           rowData;
    BOOL         isSelected;
    BOOL         isHighlighted;
    BOOL         isEventTriggered;
}

@property (nonatomic, readonly) NSInteger rowID;
@property (nonatomic, readonly) id rowData;
@property (nonatomic)           BOOL isSelected;
@property (nonatomic)           BOOL isHighlighted;
@property (nonatomic)           BOOL isEventTriggered;
@property (nonatomic,readonly, getter = isEditable) BOOL isEditable;
- (id) initWithData: (id) data andId: (NSInteger) uniqueID; ;

- (void)copyAttributesToRowModel:(SegmentedUIRowDataModel *)aRowModel;

@end
