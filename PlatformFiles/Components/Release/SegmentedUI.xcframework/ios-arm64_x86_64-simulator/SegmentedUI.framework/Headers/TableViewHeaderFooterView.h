//
//  TableViewHeaderFooterView.h
//  konylib
//
//  This class is derived from UITableViewHeaderFooterView which can be used to handle section header view in UITableView.
//
//  Created by Aravind Macharla on 10/11/17.
//

#import <UIKit/UIKit.h>
#import <CoreComponent/WidgetModel.h>
#import <CoreComponent/Widget.h>

@interface TableViewHeaderFooterView : UITableViewHeaderFooterView
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
