//
//  KonyMVCUtils.h
//  CoreComponent
//
//  Created by Naresh Kodumuri on 5/19/20.
//

#import <Foundation/Foundation.h>
#import "KonyUtil.h"
#import "RunTimeManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface KonyMVCUtils : NSObject

+ (void) createControllers:(id)widgetModel;
+ (void) configureEvents:(WidgetModel *) widgetModel controllerWidgetModel:(WidgetModel *) widgetModel;
+ (void) bindControllersForWidgetModel:(WidgetModel*) model isUserWidgetModel:(BOOL) isUserWidgetModel;
+ (NSString *) getFunctionNameFromCallBack:(CallBack *) callBack;
+ (id) getClonnedMasterController:(id)widgetID;
+ (void) bindMasterController:(id)args;


@end

NS_ASSUME_NONNULL_END
