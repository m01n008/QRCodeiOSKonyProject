/*
 *  util.h
 *  VVM
 *
 *  Created by Srikanth Tamalampudi on 23/04/09.
 *  Copyright 2009 Kony Labs. All rights reserved.
 *
 */

#import <Foundation/Foundation.h>

//#import "lglobals.h"

uint64_t getNanoSeconds(uint64_t);
NSString *obj2String(id);
int obj2Number(id, double *);
int obj2Int(id, int *);
NSString *typeOfLuaValue(id);

// The following functions are kept to support legacy code (NCG etc)
NSString *concatValues(NSMutableArray *, int, int,  NSString *);
int compareValues(id val1, id val2, int op);
NSException *createException(const char *name, const char *reason);
void printValue(id luaValue);
