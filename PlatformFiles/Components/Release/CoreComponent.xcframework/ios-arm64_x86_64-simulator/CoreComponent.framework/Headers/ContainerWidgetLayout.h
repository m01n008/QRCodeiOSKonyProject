//
//  ContainerView.h
//  VM
//
//  Created by KH206 on 30/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WidgetLayout.h"

@protocol ContainerWidgetLayout <WidgetLayout>

- (NSArray*) widgets;
- (BOOL) forceChildWidgetsLayout;

@end
