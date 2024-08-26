//
//  LuaTable.h
//  VVM
//
//  Created by Srikanth Tamalampudi on 23/04/09.
//  Copyright 2009 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyCollection.h"

@interface LuaTable : NSObject <KonyCollection, NSSecureCoding, NSCopying> {
@public
	NSMutableArray *array;
	NSMutableDictionary *dict;
}

+(LuaTable *) luaTableWithArraySize: (NSUInteger) aSize hashSize: (NSUInteger) hSize;

-(void) addObject:(id)value;
-(NSString *) toString;

@end

LuaTable*	getLuaTableFromNSDictionary(NSDictionary* nsDict);
LuaTable*	getLuaTableFromNSArray(NSArray* nsArray);
