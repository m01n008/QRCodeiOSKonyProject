//
//  MultiItemPicker.h
//  VM
//
//  Created by Uday Bheema on 09/04/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/ViewDrawingDelegate.h>
#import "GroupWidgetSkin.h"
#import "GroupWidgetModel.h"
#import <CoreComponent/Widget.h>
#import <CoreComponent/CustomCellBackgroundView.h>


@class MultiItemPicker;

@interface OnOffCell : UITableViewCell
{
	UISwitch* uiSwitch;
	UILabel*  label;
	NSIndexPath* index;
	BOOL isSelected;
    CallBack *closure;
    CGSize prevSize;
}

@property (readwrite, retain, nonatomic) UISwitch* uiSwitch;
@property (readwrite, retain, nonatomic) UILabel* label;
@property (readwrite, retain, nonatomic) NSIndexPath* index;
@property (readwrite, assign, nonatomic) BOOL isSelected;
@property (readwrite, retain, nonatomic) CallBack *closure;
@property (readwrite, weak, nonatomic) id switchControlListener;
@property (readwrite, assign, nonatomic) UIEdgeInsets paddingInfo;
@property (readwrite, assign, nonatomic) BOOL isLayoutDone;


-(id)initWithFrame:(CGRect)rect reuseIdentifier:(NSString*) reuseIdentifier withCallBack:(CallBack*) onSelection;
-(void) addLabelandSwitchToCell;
+ (CGSize) suggestSizeForText: (NSString*) text withFont: (UIFont*) font  forWidth: (float) width;

@end






@interface MultiItemPicker : Widget <UITableViewDelegate, UITableViewDataSource>
{
    UITableView* tableView;
    NSMutableDictionary* cellCache;
    CGSize preferredSize;
    BOOL dataChanged;
    NSMutableArray  *masterData;
}

@property (readwrite, retain, nonatomic) UITableView* tableView;
@property (readwrite, retain, nonatomic) NSMutableDictionary* cellCache;
@property (nonatomic, copy) NSMutableArray  *masterData;

- (GroupWidgetSkin*) getFocusSkin;
- (GroupWidgetModel*) getModel;
- (UIView*) getSubWidgetView;
- (void) reloadTheData;
- (void) applySkinLabelText:(NSString*) text forCell: (OnOffCell*) cell;
+ (CustomCellBackgroundViewPosition) determineCellPositionForRow: (NSInteger) row AndCount: (NSUInteger) count;
+ (CustomCellBackgroundView*) CustomBackgroundViewForCell: (OnOffCell*)cell withSkin: (Skin*) skin separatorColor: (UIColor*) separatorColor position: (CustomCellBackgroundViewPosition) position andGroupedMode: (BOOL) groupedMode;
- (void) switchStateChanged;// method to listen the UISwitch control which in present in OnOffCell

@end
