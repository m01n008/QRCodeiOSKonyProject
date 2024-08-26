//
//  KonyCustomAppMenuController.h
//  VM
//
//  Created by KH1244 on 28/05/13.
//
//

#import <UIKit/UIKit.h>
#import "AppMenuModel.h"
#import "KonyTabBarController.h"
#import "KonyCustomAppMenuItem.h"
#import "AppMenuObservingProtocol.h"


@interface KonyCustomAppMenuController : KonyTabBarController<KonyTabBarControllerDelegate>
{
    AppMenuModel *appMenuModel;
    NSMutableDictionary *menuItemsDict;
}

@property (nonatomic, retain) AppMenuModel* appMenuModel;
@property (nonatomic,readonly)NSMutableDictionary *menuItemsDict;

- (id) initWithAppMenu : (AppMenuModel*) tAppMenuModel;
- (void) setAppMenuModel:(AppMenuModel *)appMenuModel withChangeType:(AppMenuChangeType) changeType;

@end
