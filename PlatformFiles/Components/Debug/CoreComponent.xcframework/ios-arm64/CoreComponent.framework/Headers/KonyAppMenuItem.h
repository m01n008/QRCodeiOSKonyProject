//
//  KonyAppMenuItem.h
//  VM
//
//  Created by KH206 on 09/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "KonyCustomNavigationController.h"
#import "AppMenuItemModel.h"

@interface KonyAppMenuItem : KonyCustomNavigationController
{
    AppMenuItemModel *menuItemModel;
}

@property (nonatomic, readonly) AppMenuItemModel* menuItemModel;

- (id) initWithAppMenuItemModel: (AppMenuItemModel*) tMenuItemModel;
- (void)setFontToMenuItem;

@end
