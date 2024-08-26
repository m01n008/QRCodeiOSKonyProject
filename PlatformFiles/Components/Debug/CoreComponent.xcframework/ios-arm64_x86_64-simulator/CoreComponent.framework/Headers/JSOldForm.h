//
//  JSOldForm.h
//  VM
//
//  Created by KH206 on 31/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//
#import "JSWidget.h"

#define BAR_IMAGE           @"image"
#define BAR_METRICS         @"barMetrics"
#define ADJUSTMENT          @"adjustment"
#define HIDES_BACK_BUTTON   @"hidesBackButton"
#define ANIMATED            @"animated"
#define ITEMS               @"items"

@interface JSOldForm : JSWidget
{
    
    
}

- (void) add: (NSArray*) arguments;
- (void) show: (NSArray*) arguments;
-(id) destroy:(NSArray*) arguments;

-(id) setTitleBarSkin:(NSArray*) arguments;
-(id) showTitleBar:(NSArray*) arguments;
-(id) hideTitleBar:(NSArray*) arguments;

- (id) formProxyClass;

@end
