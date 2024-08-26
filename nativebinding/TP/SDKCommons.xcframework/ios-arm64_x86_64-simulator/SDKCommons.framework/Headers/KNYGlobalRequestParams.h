//
//  KNYGlobalRequestParams.h
//  SDKCommons
//
//  Created by Nikhil Kolhe on 05/11/20.
//  Copyright © 2020 kony. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface KNYGlobalRequestParams : NSObject


+ (void)setGlobalRequestParam:(NSString *)paramName
                   paramValue:(NSString *)paramValue
                    paramType:(NSString *)paramType;


+ (NSDictionary *)getGlobalRequestParams:(NSString *)paramType;


+ (void)removeGlobalRequestParam:(NSString *)paramName
                       paramType:(NSString *)paramType;


+ (void)resetGlobalRequestParams;


@end
