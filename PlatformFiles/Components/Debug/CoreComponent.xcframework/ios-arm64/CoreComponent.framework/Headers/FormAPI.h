//
//  FormAPI.h
//  Coda
//
//  Created by Uday Kiran Bheema on 24/11/11.
//  Copyright 2011 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "LuaAPI.h"

@interface FormAPI : NSObject  //: LuaAPI

+(NSArray *) showForm: (NSArray *) args;
+(NSArray *) addToForm: (NSArray *) args;
+(NSArray *) remove:(NSArray*) arguments;
+(NSArray *) removeAt:(NSArray*) arguments;
+(NSArray *) addAt:(NSArray*) arguments;
+(NSArray *) hideTitleBar: (NSArray *) args;
+(NSArray *) initForm: (NSArray *) args;
+(NSArray *) setTitleBarSkin: (NSArray *) args;
+(NSArray *) setTitleBarRightSideButton: (NSArray *) args;
+(NSArray *) setTitleBarLeftSideButton: (NSArray *) args;
+(NSArray *) setTitleBarRightSideButtonSkin: (NSArray *) args;
+(NSArray *) setTitleBarLeftSideButtonSkin: (NSArray *) args;
+(NSArray *) getPreviousForm: (NSArray *) args;
+(NSArray *) getCurrentForm: (NSArray *) args;
+(NSArray *) destroyForm: (NSArray *) args;
+(NSArray *) showTitleBar: (NSArray *) args;

+(NSArray *) scrollToWidget: (NSArray *) args;
+(NSArray *) scrollToBeginning: (NSArray *) args;
+(NSArray *) scrollToEnd: (NSArray *) args;

//+(void) loadLuaLib: (LuaTable *) globalTable;

@end

