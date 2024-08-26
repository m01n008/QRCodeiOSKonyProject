//
//  KonyWidgetEventSenderProtocol.h
//  VM
//
//  Created by KH206 on 01/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "KonyWidgetEventListenerProtocol.h"

@protocol KonyWidgetEventSenderProtocol <NSObject>

- (BOOL) canNotifyEvent:(KonyWidgetEventType) eventType;
- (void) registerListener: (id<KonyWidgetEventListenerProtocol>) listener forEventType: (KonyWidgetEventType) eventType;
- (void) deRegisterListener: (id<KonyWidgetEventListenerProtocol>) listener forEventType: (KonyWidgetEventType) eventType;

@end
