//
//  KonyPasteBoard.h
//  VM
//
//  Created by Rajeeva Ranjan on 10/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum KonyPasteboadType 
{
    KonyPasteboadTypeDefault = 1,
    KonyPasteboadTypeSystemLevel = 2,
    KonyPasteboadTypeAppLevelPersistant = 3,
    KonyPasteboadTypeAppLevelNonPersistant = 4,
    KonyPasteboadTypeNoPasteboard = 5,
}
KonyPasteboadType;



@interface KonyPasteBoard : NSObject
+ (void) setupAppLevelPasteBoards;
+ (NSString*) getUniqueIdentifierForPasteBoard;
+ (void) setupPersistentPasteBoard;
+ (void) setupNonPersistentPasteBoard;
+ (BOOL) isValidPasteBoardType:(id) value;
@end
