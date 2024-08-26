//
//  AppMenuObservingProtocol.h
//  VM
//
//  Created by KH206 on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum AppMenuChangeType
{
   AppMenuChangeTypeNone                = 0,
   AppMenuChangeTypeShowHide            = 1 << 0,
   AppMenuChangeTypeUpdatedAppMenu      = 1 << 1,
   AppMenuChangeTypeFocusedItemByIndex  = 1 << 2,
   AppMenuChangeTypeFocusedItemByID     = 1 << 3
}AppMenuChangeType;

@protocol AppMenuObservingProtocol <NSObject>

-(void) currentAppMenuChanged: (AppMenuChangeType) changeType;

@end