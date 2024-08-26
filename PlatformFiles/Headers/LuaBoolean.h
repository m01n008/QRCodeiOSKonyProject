//
//  LuaBoolean.h
//  VVM
//
//  Created by Srikanth Tamalampudi on 22/04/09.
//  Copyright 2009 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LuaBoolean : NSObject<NSSecureCoding, NSCopying> {
@public
	BOOL value;
}

+(LuaBoolean *) luaBooleanWithValue: (BOOL) v;

-(id) copyWithZone: (NSZone *) zone;

@end
