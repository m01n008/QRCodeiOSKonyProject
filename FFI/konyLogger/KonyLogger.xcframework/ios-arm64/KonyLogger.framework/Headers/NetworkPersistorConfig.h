//
//  NetworkPersistorConfig.h
//  Logger
//
//  Created by kony on 27/04/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPersistor.h"

@interface NetworkPersistorConfig : NSObject <IPersistor>

-(instancetype)init;

-(void) updateConfig: (id<IPersistor>) newConfig;

-(void) setUrl: (NSString *) url;

-(NSString *) getUrl;

-(void) setBufferSize: (NSNumber *) bufferSize;

-(NSNumber *) getBufferSize;

@end
