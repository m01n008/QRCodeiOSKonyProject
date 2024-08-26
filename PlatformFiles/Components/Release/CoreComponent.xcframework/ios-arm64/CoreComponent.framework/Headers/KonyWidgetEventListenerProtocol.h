//
//  KonyWidgetEventListenerProtocol.h
//  VM
//
//  Created by KH206 on 01/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@protocol KonyWidgetEventListenerProtocol <NSObject>
- (void) handleEvent: (KonyWidgetEventType) eventType onWidget: (Widget*) widget withContext: (NSDictionary*) context;

@end
