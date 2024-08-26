//
//  JSKonyWidget.h
//  APIComponent
//
//  Created by Adithya Ram on 15/01/21.
//  Copyright © 2021 Kony Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JSKonyWidget : NSObject

+(void)reloadWidget:(NSArray *)args API_AVAILABLE(ios(14));
+(void)reloadAllWidgets:(NSArray *)args API_AVAILABLE(ios(14));

@end

NS_ASSUME_NONNULL_END
