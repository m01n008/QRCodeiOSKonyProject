//
//  JSBackgroundJobsAPI.h
//  VM
//
//  Created by Praveen Basu Satyam on 22/06/14.
//  Copyright (c) 2012 Kony. All rights reserved.
//
//

#import <Foundation/Foundation.h>
#import "JSStaticAPI.h"


@interface JSBackgroundJobsAPI : NSObject<JSStaticAPI>


+(NSArray *) registerBackgroundFetch: (NSArray *) args;
+(NSArray *) setBackgroundFetchCompletionStatus: (NSArray *) args;
+(NSArray *) setBackgroundFetchInterval: (NSArray *) args;



@end
