/*
 *  This file is intended to be THE INTERFACE for API
 *  developers.  It exposes few VM internal structures
 *  and the ability to execute closures.
 *
 *  Created by Srikanth Tamalampudi on 23/04/09.
 *  Copyright 2009 Kony Labs. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>


NSArray* executeClosure(id callback, NSArray *args, BOOL spawn);
NSArray* executeClosureWithOptions(id callback, NSArray *args, BOOL spawn, NSDictionary *optionsDict_);

@interface ClosureExecuter : NSObject
{
	
}

+(NSArray *) executeClosure: (NSMutableArray*) funcArgs;
+(NSArray *) executeClosureWithContext: (NSMutableArray*) funcArgs;


@end
