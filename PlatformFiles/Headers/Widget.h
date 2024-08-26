//
//  Widget.h
//  VM
//
//  Created by KH206 on 08/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WidgetModel.h"


@interface Widget : NSObject
{
    WidgetModel *widgetModel;
}

@property (nonatomic, readonly) WidgetModel *widgetModel;

- (id) initWithModel: (WidgetModel*) model;
@end

