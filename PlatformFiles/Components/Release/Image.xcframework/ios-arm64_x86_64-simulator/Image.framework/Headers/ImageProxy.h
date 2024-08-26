//
//  ImageProxy.h
//  VM
//
//  Created by Sunil Nimmagadda on 17/03/12.
//  Copyright (c) 2012 Kony Labs. All rights reserved.
//

#import <CoreComponent/BaseProxy.h>

@interface ImageProxy : BaseProxy

+(id) createWidget: (NSDictionary*) config;
- (void) addOverlayWidgets:(NSArray*)widgets;
- (void) removeOverlayWidgets:(NSArray*)widgets;
@end
