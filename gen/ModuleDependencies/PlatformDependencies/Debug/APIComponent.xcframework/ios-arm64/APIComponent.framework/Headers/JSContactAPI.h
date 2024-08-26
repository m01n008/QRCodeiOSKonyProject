//
//  JSContactAPI.h
//  VM
//
//  Created by Amba on 21/07/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import "CommonContactAPI.h"

@interface JSContactAPI : CommonContactAPI

+(NSArray *) deleteContact: (NSArray *) args;
+(NSArray *) addContact: (NSArray *) args;
+(NSArray *) findContact: (NSArray *) args;
+(NSArray *) fetchDetails: (NSArray *) args;

@end
