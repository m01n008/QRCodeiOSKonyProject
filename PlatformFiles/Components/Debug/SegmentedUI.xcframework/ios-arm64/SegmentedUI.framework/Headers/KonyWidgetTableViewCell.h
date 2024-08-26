//
//  KonyWidgetTableViewCell.h
//  VM
//
//  Created by KH206 on 23/05/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/Widget.h>

@interface KonyWidgetTableViewCell : UITableViewCell
{
    WidgetModel *widgetModel;
    NSDictionary *widgetDataMapping;
    Widget *rootWidget;
    NSMutableDictionary *resetCache;
    BOOL isInGroupMode;
    BOOL editingInProgress;
}

@property (nonatomic, readonly) Widget *rootWidget;
@property (nonatomic, retain) NSDictionary* widgetContextInfo;
@property (nonatomic, readwrite) BOOL isInGroupMode;
@property (nonatomic) BOOL accessibilityDisabled;
//BugFix: 68612, In VoiceOver Mode ,it is reading theameID value in cell container, It is not a accessibility element (cell container) if theameID property is NSString data type.
@property (nonatomic, retain) id themeId;

- (id) initWithModel: (WidgetModel*) model andMapping: (NSDictionary*)mapping;
- (void) applyData: (NSDictionary*) data;
- (void) resetState;
@end
