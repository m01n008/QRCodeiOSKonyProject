//
//  KNYGlobalNetworkParams.h
//  SDKCommons
//
//  Created by Archana Narahari on 03/01/18.
//  Copyright © 2018 kony. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KNYGlobalNetworkParams : NSObject

+ (instancetype)sharedInstance;

//---------------------------
//Setters for Global Params..
//---------------------------
- (void)addHeaders:(NSDictionary *)header;
- (void)removeHeaderForKey:(NSString *)key;
- (void)addQueryParams:(NSDictionary *)queryParam;
- (void)removeQueryParamForKey:(NSString *)key;

//---------------------------
//Getters for Global Params..
//---------------------------
- (NSDictionary *)getHeaders;
- (NSDictionary *)getQueryParams;

- (void)removeHeaders;
- (void)removeQueryParams;

@end
