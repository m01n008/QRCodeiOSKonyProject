//
//  DataGridWidget.h
//  VM
//
//  Created by Girish Haniyamballi on 24/06/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/Widget.h>
#import "DataGridDelegate.h"
#import "DataGridLayer.h"


@class DataGridModel;
@class DataGridSkin;
@interface DataGridWidget : Widget<UITableViewDataSource,UITableViewDelegate,DataGridDelegate>{
    
    UITableView* dataGridView;
    DataGridLayer*  gridLayer;
    
}
@property ( nonatomic, retain) UITableView* dataGridView;
@property (nonatomic,retain) 	DataGridLayer*  gridLayer;
+ (CGSize) suggestSizeForText: (NSString*) text withFont: (UIFont*) font  forWidth: (float) width;
+(void) applySkin:(DataGridSkin*) skin OnRect:(CGRect) rect;
- (CGFloat) heightForHeaderInSection:(NSInteger)section ForWidth:(CGFloat) width;
- (CGFloat)heightForRowAtIndexPath:(NSIndexPath *)indexPath forWidth:(CGFloat)width;
@end
