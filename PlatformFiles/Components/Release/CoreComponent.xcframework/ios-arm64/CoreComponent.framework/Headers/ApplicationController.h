//
//  ApplicationController.h
//  VM
//
//  Created by KH206 on 05/12/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UserInterfaceManager.h"

@interface ApplicationController : NSObject
{
    UserInterfaceManager *uiManager;
}

@property (nonatomic, readonly) UserInterfaceManager *uiManager;

@end
