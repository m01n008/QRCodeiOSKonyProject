//
//  IPersistor.h
//  Logger
//
//  Created by kony on 05/05/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol IPersistor <NSObject>

@property NSMutableDictionary *configProperties;

@required

-(NSNumber *) getType;

-(void) updateConfig: (id<IPersistor>) newConfig;

@end
