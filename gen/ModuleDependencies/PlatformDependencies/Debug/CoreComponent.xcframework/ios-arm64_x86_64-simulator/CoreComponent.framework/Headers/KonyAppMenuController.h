//
//  KonyCustomTabBarController.h
//  VM
//
//  Created by KH206 on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppMenuModel.h"
#import "AppMenuObservingProtocol.h"
#import "CallBackListenerProtocol.h"

@interface KonyAppMenuController : UITabBarController <UITabBarControllerDelegate, CallBackListenerProtocol>
{
    AppMenuModel *appMenuModel;
    NSMutableDictionary *menuItemsDict;
}

@property (nonatomic, retain) AppMenuModel* appMenuModel;
@property (nonatomic, readwrite) BOOL shouldSelectTabItem;
@property  (nonatomic,readonly)NSMutableDictionary *menuItemsDict;

- (id) initWithAppMenu : (AppMenuModel*) tAppMenuModel;
- (void) setAppMenuModel:(AppMenuModel *)appMenuModel withChangeType:(AppMenuChangeType) changeType;


@end
