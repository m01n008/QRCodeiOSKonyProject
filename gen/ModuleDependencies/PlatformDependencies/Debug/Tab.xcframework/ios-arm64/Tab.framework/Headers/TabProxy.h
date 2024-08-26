//
//  TabProxy.h
//  VM
//
//  Created by KH250 on 16/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/BaseProxy.h>

@interface TabProxy : BaseProxy {
    
}

- (void) addTab: (NSArray *) aTabItem;
- (void) removeTabAt: (NSNumber*) aIndex;
- (void) removeTabById: (NSString*) aTabItemIdentifier;
- (void) addTabAt: (NSArray *) arguments;
- (void)setTabTitle:(NSString *)title withId:(NSString *)tabID;

@end
