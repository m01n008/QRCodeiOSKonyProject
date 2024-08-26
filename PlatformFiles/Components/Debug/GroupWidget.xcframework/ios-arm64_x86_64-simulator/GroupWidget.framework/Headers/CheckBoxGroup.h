//
//  CheckBoxGroup.h
//  VM
//
//  Created by Uday Bheema on 28/02/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroupWidget.h"
#import <CoreComponent/ViewDrawingDelegate.h>
#import "GroupWidgetModel.h"
#import "GroupWidgetSkin.h"
#import "CheckBoxTableViewCell.h"

#define CHECKBOX_MIN_X 15.0
#define CHECKBOX_MIN_Y 0.0
#define CHECKBOX_WIDTH 290.0
#define CHECKBOX_ADJ 25.0
#define CHECKBOX_GROUPCELLS_ADJ 30.0


@interface CheckBoxGroup : Widget <UITableViewDelegate, UITableViewDataSource,ViewDrawingDelegate> {

    UITableView                 *checkBoxTableView;
    NSMutableArray              *rowsSelected;
    NSString                    *checkMarkStyle;
    BOOL                        isChkBoxAddedToForm;
    BOOL                        dataLoaded;
    CGSize                      preferredSize;
    NSMutableArray              *masterData;
}

@property (readonly) UITableView* checkBoxTableView;
@property (nonatomic) BOOL isChkBoxAddedToForm;
@property (nonatomic) BOOL dataLoaded;
@property (nonatomic) KonyWidgetType widType;
@property (readonly, retain, nonatomic) NSString *checkMarkStyle;
@property (nonatomic, copy) NSMutableArray  *masterData;

- (BOOL) isTheWidgetMutuallyExclusive;
- (CGSize) sizeForTextAtIndex: (NSInteger) row;
- (CGSize) sizeForText: (NSString*) text;
- (float) adjustWidthForImages;
- (int) isIndexPathTicked: (NSIndexPath*) indexPath;
- (void) markTheCell: (CheckBoxTableViewCell*) cell AtIndexPath: (NSIndexPath*) indexPath;
- (void) tickTheCell: (CheckBoxTableViewCell*) cell;
- (void) unTickTheCell: (CheckBoxTableViewCell*) cell;
- (void) applyFocusSkin: (UITableViewCell*) cell;
- (void) applyNormalSkin: (UITableViewCell*) cell;
- (UIView*) getSubWidgetView;
- (id) getFocusSkin;
- (GroupWidgetModel*) getModel;
- (CGSize) suggestSizeForText: (NSString*) text withFont: (UIFont*) font  forWidth: (float) width;
- (void) reloadTheData;
- (NSMutableArray*) getSelectedKeys;
- (NSMutableArray*) getSelectedKeyValues;


@end
