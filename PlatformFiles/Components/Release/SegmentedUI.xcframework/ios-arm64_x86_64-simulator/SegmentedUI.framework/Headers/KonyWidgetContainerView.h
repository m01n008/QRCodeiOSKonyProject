//
//  KonyScrollViewPage.h
//  VM
//
//  Created by KH206 on 05/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/Widget.h>

@interface KonyWidgetContainerView : UIView
{
    WidgetModel *widgetModel;
    NSDictionary *widgetDataMapping;
    Widget *rootWidget;
    NSMutableDictionary *resetCache;
    NSDictionary* widgetContextInfo;
    id target;
    SEL selector;
}

@property (nonatomic, readonly) Widget* rootWidget;
@property (nonatomic, retain) NSDictionary* widgetContextInfo;


- (id) initWithModel: (WidgetModel*) model;
- (id) initWithModel: (WidgetModel*) model createCopy: (BOOL) flag;
- (void) applyData: (NSDictionary*) data;
- (void) setTarget: (id) target_ selector:(SEL) selector_;
- (UIEdgeInsets) edgeInsets;
@end

@interface KonyWidgetContainerScrollView : UIScrollView
{
    WidgetModel *widgetModel;
    NSDictionary *widgetDataMapping;
    Widget *rootWidget;
    NSMutableDictionary *resetCache;
    id target;
    SEL selector;
}

@property (nonatomic) CGSize flexTemplateSize;
@property (nonatomic, readonly) Widget* rootWidget;
@property (nonatomic, retain) NSDictionary* widgetContextInfo;

- (id) initWithModel: (WidgetModel*) model;
- (id) initWithModel: (WidgetModel*) model createCopy: (BOOL) flag;
- (void) applyData: (NSDictionary*) data;
- (void) setTarget: (id) target_ selector:(SEL) selector_;
- (UIEdgeInsets) edgeInsets;
@end
