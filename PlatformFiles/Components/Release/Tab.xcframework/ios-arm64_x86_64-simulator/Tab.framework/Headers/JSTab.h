//
//  JSTab.m
//  VM
//
//  Created by KH250 on 16/07/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <CoreComponent/RuntimeObject.h>
#import <CoreComponent/JSWidget.h>
#import "TabProxy.h"

/** Proxy object which we will registering as "JSTab" to the Javscript world */

@interface JSTab : JSWidget {
    
}

-(void) addTab: (NSArray *) arguments;
-(void) removeTabAt: (NSArray *) arguments;
-(void) removeTabById: (NSArray *) arguments;
-(void) addTabAt: (NSArray *) arguments;


@end
