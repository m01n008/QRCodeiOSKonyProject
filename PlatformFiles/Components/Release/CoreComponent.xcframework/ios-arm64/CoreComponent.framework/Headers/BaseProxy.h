//
//  BaseProxy.h
//  VM
//
//  Created by Sunil Phani Manne on 3/6/12.
//  Copyright (c) 2012 Sunil Phani Manne. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
@class WidgetModel;


@interface BaseProxy : NSObject {

@protected
    WidgetModel *model_;
}

@property (nonatomic, readonly) WidgetModel *model;

-(id) initWithModel: (WidgetModel*) model;
-(id) initWithModel: (WidgetModel*) aModel  andConfig: (NSDictionary*) config;

+(id) createWidget: (NSDictionary*) args;
- (void) setEnabled:(id) enbld;
- (void) setVisibility:(id) vsblty animConfig:(NSDictionary*) animConfig;
- (KonyWidgetType) getWidgetType;
-(void) setFocus:(id) aFocus;
- (void)setBadgeWithConfig:(NSArray *)badgeConfig;
- (NSString *)getBadge;
- (void)removeFromParent;
- (id)clone:(NSArray *)arguments;
- (NSDictionary *)convertPoint:(NSDictionary *)point toWidget:(WidgetModel *)toWidget;
- (NSDictionary *)convertPoint:(NSDictionary *)point fromWidget:(WidgetModel *)fromWidget;
@end
