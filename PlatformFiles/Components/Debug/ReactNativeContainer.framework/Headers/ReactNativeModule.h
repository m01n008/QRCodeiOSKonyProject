//
//  ReactNativeModule.h
//  ReactNativeProject
//
//  Created by Saianuhya Kodimela on 29/11/18.
//  Copyright © 2018 Kony. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CallBack.h"

NS_ASSUME_NONNULL_BEGIN

@interface ReactNativeModule : NSObject

+ (void)executeKonyCallbackFromReactAppId:(NSString *)reactAppId :(NSDictionary *)args;
+ (void)invokeReactNativeCallbackWithAppId:(NSString *)appId :(NSDictionary *)args;
+ (void)storeKonyCallback:(CallBack *)callback;

@end

NS_ASSUME_NONNULL_END
