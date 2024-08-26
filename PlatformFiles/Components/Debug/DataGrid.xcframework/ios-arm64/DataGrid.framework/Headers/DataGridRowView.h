//
//  DataGridRowView.h
//  DataGridTrial
//
//  Created by Girish Haniyamballi on 11/02/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataGridDelegate.h"

@interface DataGridRowView : UITableViewCell {
	NSDictionary* rowDataItems;
	NSIndexPath* rowNo;
	BOOL isSelected;
}
@property (nonatomic,retain) 	NSDictionary* rowDataItems;
@property(nonatomic, weak)	id <DataGridDelegate> delegate;
@property(nonatomic, retain)	NSIndexPath* rowNo;
@property(nonatomic, assign)    BOOL isSelected;

@end

