//
//  DataGridHeaderView.h
//  DataGridTrial
//
//  Created by Girish Haniyamballi on 11/02/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataGridDelegate.h"

@interface DataGridHeaderView : UIView {
	NSInteger nuOfColumns;
	NSMutableArray*	headerControls;
}

- (id)initWithFrame:(CGRect)frame delegate:(id <DataGridDelegate>)adelegate ;

@property (nonatomic,retain) 	NSMutableArray*	headerControls;
@property(nonatomic,readwrite)	NSInteger nuOfColumns;
@property(nonatomic, weak) id <DataGridDelegate> delegate;
@end

