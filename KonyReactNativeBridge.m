//
//  KonyReactNativeBridge.m
//  KRelease
//
//  Created by Saianuhya Kodimela on 13/12/18.
//

#import "KonyReactNativeBridge.h"

NSDictionary *reactNativeCallbackDictionary = nil;

@implementation KonyReactNativeBridge

NSString *reactId = nil;

// To export a module named CalendarManager
RCT_EXPORT_MODULE(reactNative);

// This would name the module AwesomeCalendarManager instead
// RCT_EXPORT_MODULE(AwesomeCalendarManager);

RCT_EXPORT_METHOD(invokeKonyCallback:(NSString *)reactAppId args:(NSDictionary *)args)
{
    [ReactNativeModule executeKonyCallbackFromReactAppId:reactAppId :args];
}

RCT_EXPORT_METHOD(setCallback:(NSString *)reactAppId :(RCTResponseSenderBlock)callback)
{
    static dispatch_once_t once_token = 0;
    dispatch_once(&once_token, ^{
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(invokeReactNativeCallback:) name:@"sendResultToReactNative" object:nil];
        reactNativeCallbackDictionary = [[NSMutableDictionary alloc] init];
    });
    if(reactNativeCallbackDictionary != nil && reactAppId != nil && callback != nil){
        [reactNativeCallbackDictionary setValue:[callback copy] forKey:reactAppId];
    }
}

- (void)invokeReactNativeCallback:(NSNotification *)notification{
    NSDictionary *args = [notification userInfo];
    if(args[@"id"] != nil && args[@"data"] != nil){
        RCTResponseSenderBlock callback = reactNativeCallbackDictionary[args[@"id"]];
        callback(@[args[@"data"]]);
    }
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"sendResultToReactNative" object:nil];
}

@end
