//
//  KonyWidgetProtocol.h
//  VM
//
//  Created by KH206 on 20/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallBack.h"

@protocol CallBackListenerProtocol <NSObject>

@optional
- (void) willExecuteCallBack: (CallBack*) aCallBack;
- (void) didExecuteCallBack: (CallBack*) aCallBack;
- (void) failedToExecuteCallBack:(CallBack*) aCallBack error: (NSError*) error;
@end
