//
//  KonyCustomAppMenuItem.h
//  VM
//
//  Created by KH1244 on 30/05/13.
//
//

#import "KonyCustomNavigationController.h"
#import "AppMenuItemModel.h"

@class KonyTabItem;
@class KonyTabBarController;

@interface KonyCustomAppMenuItem : KonyCustomNavigationController

@property (nonatomic, readonly) AppMenuItemModel* menuItemModel;
@property (nonatomic, retain) KonyTabItem *tabItem;
@property (nonatomic, unsafe_unretained)   KonyTabBarController *customTabBarController;


- (id) initWithAppMenuItemModel: (AppMenuItemModel*) tMenuItemModel;

@end
