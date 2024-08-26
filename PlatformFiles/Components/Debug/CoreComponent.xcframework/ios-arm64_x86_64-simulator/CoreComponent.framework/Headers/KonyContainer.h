//
//  KonyContainer.h
//  VM
//
//  Created by Sathya Vennapusala on 25/11/08.
//  Copyright 2008 KonyLabs. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KonyUI.h"

@protocol KonyContainer

- (id) getWidgetWithID: (NSString*) widgetId;

- (void) checkForRelayout;

- (void) setNeedsRelayout;

- (void)releaseWidgets;


@end
