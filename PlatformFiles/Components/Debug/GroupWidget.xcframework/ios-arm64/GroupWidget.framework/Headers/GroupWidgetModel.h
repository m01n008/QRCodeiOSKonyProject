//
//  GroupWidgetModel.h
//  VM
//
//  Created by Rajeeva Ranjan on 13/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/CallBack.h>

@interface GroupWidgetModel : WidgetModel {
    
    NSMutableArray  *masterData;
    NSMutableArray  *masterDataMap;
    NSString        *selectedKey;
    NSMutableArray  *selectedKeys;
    NSMutableArray  *selectedKeyValue;
    NSMutableArray  *selectedKeyValues;
    
    NSString        *focusSkinID;
    GroupWidgetViewType viewType;
    CallBack        *onDone;
    KonyContainerOrientation widOrientation;
    BOOL            multiple;
    NSDictionary    *viewConfig;
   
    //CheckBoxGroup related
    id        tickedImage;
    id        unTickedImage;
    BOOL            groupCells;
    
    /*SingleItemPicker properties */
	CallBack        *onSelection;
    id        dropDownImage;
    NSString        *placeHolder;
    NSString        *wheelBackgroundColor;
    
    KonyWidgetContentAlignment contentAlignment;
    KonyTextTruncatePosition textTruncatePosition;
    KonyInputAccessoryViewTypes inputAccessoryViewType;
    
    BOOL shouldAccessibilityFocusChangeToInputView;
}

@property (nonatomic, retain)  NSMutableArray    *masterData;
@property (nonatomic, retain)  NSMutableArray    *masterDataMap;
@property (nonatomic, retain)  NSString          *selectedKey;
@property (nonatomic, retain)  NSMutableArray    *selectedKeys;
@property (nonatomic, retain)  NSMutableArray    *selectedKeyValue;
@property (nonatomic, retain)  NSMutableArray    *selectedKeyValues;

@property (retain, nonatomic)  NSString          *focusSkinID;
@property (nonatomic)          GroupWidgetViewType viewType;
@property (retain, nonatomic)  CallBack          *onDone;
@property (nonatomic)          KonyContainerOrientation widOrientation;
@property (nonatomic)          BOOL              multiple;
@property (retain, nonatomic)  NSDictionary      *viewConfig;

@property (retain, nonatomic)  id          tickedImage;
@property (retain, nonatomic)  id          unTickedImage;
@property (readwrite, nonatomic) BOOL            groupCells;

@property (retain, nonatomic) CallBack* onSelection;
@property (retain, nonatomic) id dropDownImage;
@property (retain, nonatomic) NSString* placeHolder;
@property (retain, nonatomic) NSString* wheelBackgroundColor;
@property (nonatomic)     KonyWidgetContentAlignment contentAlignment;
@property (nonatomic,assign) KonyTextTruncatePosition textTruncatePosition;
@property (nonatomic, assign) KonyInputAccessoryViewTypes inputAccessoryViewType;
@property (nonatomic)          BOOL   shouldAccessibilityFocusChangeToInputView;

- (void)setModelWithSelection:(id)arg;
- (id)getSelectionFromModel;

- (void)setSelectedKeysUtil:(NSMutableArray *)newSelectedKeys;
- (void)setSelectedKeyUtil:(NSString *)newSelectedKey;
- (void)updateTheSelectedKeyInsideSegment;
- (void)updateTheSelectedKeyInsideCollectionView;
@end
