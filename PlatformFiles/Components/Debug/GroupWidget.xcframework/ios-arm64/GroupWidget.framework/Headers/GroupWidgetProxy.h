//
//  GroupWidgetProxy.h
//  VM
//
//  Created by Uday Bheema on 02/04/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/BaseProxy.h>

@interface GroupWidgetProxy : BaseProxy {
	
}

+(id) createWidget: (NSDictionary*) config;
+ (void)setDefaultView:(NSMutableDictionary *)dict;

@end
