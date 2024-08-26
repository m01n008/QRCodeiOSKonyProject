//
//  BaseProxy+PreviewingProxy.h
//  VM
//
//  Created by Mahesh/KH1128 on 31/12/15.
//
//

#import "BaseProxy.h"

@class CallBack;

@interface BaseProxy (PreviewingProxy)

- (void)registerForPeekAndPop;
- (void)setOnPeek:(CallBack *)callback;
- (void)setOnPop:(CallBack *)callback;
- (void)unregisterForPeekAndPop;

@end
