//
//  FunctionExecuterDelegate.h
//  VM
//
//  Created by Amba on 09/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Runtime;

@protocol FunctionExecuterDelegate <NSObject>

@optional

@required
-(NSArray*) execute:(NSArray*) parameters;
-(NSArray *) executeWithContext:(Runtime*)rt withParameters:(NSArray *)parameters;
-(NSArray*) executeFunctionWithName: (NSString *)functionName withParameters:(NSArray*) parameters;

@end
