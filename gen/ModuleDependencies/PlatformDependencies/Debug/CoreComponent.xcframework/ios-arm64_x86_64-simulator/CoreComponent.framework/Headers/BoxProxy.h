//
//  BoxProxy.h
//  VM
//
//  Created by Uday Bheema on 09/03/12.
//  Copyright (c) 2012 KONY LABS. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <Foundation/Foundation.h>
#import "BoxModel.h"
#import "BaseProxy.h"

@interface BoxProxy : BaseProxy {

}


-(NSArray *) addToBox: (NSArray *) widgetList withAnimationConfig:(NSDictionary*) animConfig;
-(NSArray *) addWidget: (BaseProxy*) widget at: (NSNumber*) location withAnimationConfig:(NSDictionary*) animConfig;
- (void) removeWidget: (BaseProxy*) widget;
- (BaseProxy*) removeWidgetAt: (NSNumber*) widgetLocation withAnimationConfig:(NSDictionary*) animConfig;
-(NSArray*) widgets;

//Redeclared model This avoids unnecessary typecastings in the code!
@property (nonatomic, readonly) BoxModel *model;

@end
