//
//  CommonDsAPI.h
//  VM
//
//  Created by KH707 on 18/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "LuaAPI.h"
#define KONY_APP_GROUP_ID @"konyAppGroupID"
@interface CommonDsAPI : NSObject

+(NSArray *) dsSave: (NSArray *) args;
+(NSArray *) dsRead: (NSArray *) args;
+(NSArray *) dsDelete: (NSArray *) args;

@end
