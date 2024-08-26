//
//  FilePersistorConfig.h
//  Logger
//
//  Created by kony on 27/04/17.
//  Copyright © 2017 kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IPersistor.h"


@interface FilePersistorConfig : NSObject <IPersistor>

-(instancetype)init;

-(void) updateConfig: (id<IPersistor>) newConfig;

-(void) setDumpLocation : (NSString *)location;

-(NSString *) getDumpLocation;

-(void) setLogFileNamePrefix: (NSString*)prefix;

-(NSString *) getLogFileNamePrefix;

-(void) setMaxNumberOfLogFiles: (NSNumber *) maxNoOfLogFiles;

-(NSNumber *) getMaxNumberOfLogFiles;

-(void) setMaxFileSize: (NSNumber *) size;

-(NSNumber *) getMaxFileSize;


@end
