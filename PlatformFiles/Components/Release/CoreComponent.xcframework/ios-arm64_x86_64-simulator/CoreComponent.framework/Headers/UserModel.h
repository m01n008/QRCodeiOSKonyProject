//
//  UserModel.h
//  VM
//
//  Created by Dhananjay on 14/12/16.
//
//

#import "WidgetModel.h"
#import "FlexContainerModel.h"
#import "UserProtocol.h"

@interface UserModel : WidgetModel <UserProtocol>
{
    FlexContainerModel *userTemplate;
    NSString * _konyControllerName;
    NSString *_appName;
    NSString *appName;
}

@property (nonatomic, retain) FlexContainerModel *userTemplate;
//this property will be used by konymvc_sdk framework to differentiate between different instances of uw controllers..
@property (nonatomic, retain) NSString *_konyControllerName;
@property (nonatomic, retain) NSString *_appName;
@property (nonatomic, retain) NSString *focusSkinID;
@property (nonatomic) konyMasterType masterType;
@property (nonatomic) NSString *appName;

- (void)setUserWidgetContract;
- (WidgetModel*) getWidgetWithId : (NSString*) subWidgetId;
- (void)changeUserWidgetReferenceView;

@end
