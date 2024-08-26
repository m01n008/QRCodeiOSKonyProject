//
//  TableViewHelper.h
//  VM
//
//  Created by KH206 on 17/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreComponent/KonyUtil.h>

@interface TableViewHelper : NSObject <UITableViewDataSource,UITableViewDelegate>
{
    UITableView *groupedtableView;
    UITableView *nonGroupedtableView;
    UITableViewCellAccessoryType cellAccessoryType;
}

- (CGFloat) getContentViewWidthForGivenWidth: (CGFloat) width groupCells:(BOOL) groupCells withEditing:(BOOL) editing withIndicatorType: (UITableViewCellAccessoryType) indicatorType;

@end
