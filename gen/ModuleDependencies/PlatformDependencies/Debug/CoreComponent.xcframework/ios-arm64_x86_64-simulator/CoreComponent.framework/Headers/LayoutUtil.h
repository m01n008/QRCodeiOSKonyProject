//
//  LayoutUtil.h
//  VM
//
//  Created by on 3/13/12.
//  Copyright (c) 2012. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LayoutModel.h"

/** Layout Types */
typedef enum{
    BoxLayoutType   /** Box Layout Model */
}LayoutType;

@class WidgetModel;

@interface LayoutUtil : NSObject

+(id) layoutModelForLayoutType: (LayoutType) layoutType forConfig: (NSDictionary*) config forWidgetModel:  (WidgetModel*) widgetModel;

+(id) getValueForProperty: (NSString*) property  forLayoutModel:  (LayoutModel*) layoutModel;

+(void) setValue : (id) value ForProperty: (NSString*) property forLayoutModel:  (LayoutModel*) layoutModel;


@end
