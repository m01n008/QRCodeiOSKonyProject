//
//  JSAppConfigAPI.h
//  VM
//
//  Created by KH165 on 07/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreComponent/JSStaticAPI.h>

@interface JSAppConfigAPI : NSObject <JSStaticAPI>

+(NSArray*) read:(NSArray *)parameters;
+(NSArray*) write:(NSArray *)parameters;

@end
