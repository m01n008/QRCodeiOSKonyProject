//
//  ObservingProxy.h
//  VM
//
//  Created by KH206 on 27/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObserverProtocol.h"

@interface ObservingProxy : NSObject <ObserverProtocl>
{
    NSMutableArray *observerList1;
}

- (void) registerObserver: (id) observer;
- (void) deRegisterObserver: (id) observer;
-(NSArray*) getObservers;

@end
