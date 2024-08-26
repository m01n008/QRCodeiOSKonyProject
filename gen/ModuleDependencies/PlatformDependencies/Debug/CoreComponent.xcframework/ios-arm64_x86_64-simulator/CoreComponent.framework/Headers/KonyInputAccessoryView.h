//
//  KonyInputAccessoryView.h
//  VM
//
//  Created by User on 14/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Widget.h"
#import "WheelWidgetHandler.h"
#import "KonyTypes.h"
#import "SkinManager.h"

#define DEFAULT_INPUTACCESSORYVIEW_HEIGHT   44  // shud see if the same height holds good for both orientations?
#define DEFAULT_TITLE   @"Cancel"
#define DEFAULT_INPUTACCESSORYVIEW_TYPE KonyInputAccessoryViewTypeNextPrevToolbar


@protocol KonyInputAccessoryViewProtocol <NSObject>
@required
-(void) setDelegate:(Widget <WheelWidgetProtocol>*) widget;
-(KonyInputAccessoryViewTypes) getKonyInputAccessoryViewType;
-(void)setKonyInputAccessoryViewType:(KonyInputAccessoryViewTypes)aType;
-(UIView*) getWidgetView;
-(void) reloadView;

@property (nonatomic,retain) NSString *skin;

@end

@interface KonyInputAccessoryView : UIView <KonyInputAccessoryViewProtocol>
{
    @protected
    Widget <WheelWidgetProtocol> __weak *delegate;
    KonyInputAccessoryViewTypes type;
}

@property (nonatomic,retain) NSString *skin;

+(id <KonyInputAccessoryViewProtocol>) getSharedInputAccessoryView;
+(id <KonyInputAccessoryViewProtocol>) getSharedInputAccessoryView:(KonyInputAccessoryViewTypes) type;

+(CGFloat) getInputAccessoryViewHeight:(KonyInputAccessoryViewTypes) aType;

@end
