//
//  FunctionExecuter.h
//  VM
//
//  Created by Amba on 09/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FunctionExecuterDelegate.h"

@class Runtime;
@interface FunctionExecuter : NSObject

@property (nonatomic, retain) id<FunctionExecuterDelegate> delegate;

+(FunctionExecuter*) sharedFunctionExecuter;
-(BOOL) setLanguageSpecificFunctionExecuter: (id<FunctionExecuterDelegate>) _executer;
-(NSArray*) execute: (NSArray*) parameters;
-(NSArray*) executeWithContext: (Runtime*) rt withParameters:(NSArray*) parameters;

-(NSArray*) executeFunctionWithName: (NSString *)functionName withParameters:(NSArray*) parameters;

@end
