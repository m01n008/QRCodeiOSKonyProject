//
//  LuaAPI.h
//  Coda
//
//  Created by Srikanth Tamalampudi on 11/08/11.
//  Copyright 2011 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LuaTable;

extern NSString *apiError;


@interface LuaAPI : NSObject

+(void) loadLibInto: (LuaTable *) apiTable
			ofClass: (id) apiClass
	  withSelectors: (SEL *) selectors
		   andNames: (NSString **) funcNames
				num: (int) n;
+(LuaTable *) loadLibInto: (LuaTable *) globalTable
			  withLibName: (NSString *) name
				  ofClass: (id) apiClass
			withSelectors: (SEL *) selectors
				 andNames: (NSString **) funcNames
					  num: (int) n;

@end
