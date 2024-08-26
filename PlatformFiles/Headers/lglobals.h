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

#import "LuaBoolean.h"
#import "LuaTable.h"

@class CallBack;

extern LuaBoolean *lTrue, *lFalse;
extern NSNull *lNil;
extern LuaTable *globalTable;

extern NSNumberFormatter *numberFormatter;
extern const char *invalidArg;

#ifdef __cplusplus
extern "C" {
#endif
	
    NSArray* executeClosure(CallBack *callback, NSArray *args, BOOL spawn);
    NSArray *doExecuteClosure(CallBack *callback, NSArray *args);
    
#ifdef __cplusplus
}
#endif
