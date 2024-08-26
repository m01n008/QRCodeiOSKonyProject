//
//  WrapperUtils.h
//  VM
//
//  Created by Amba on 13/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@interface WrapperUtils : NSObject

+(NSDictionary*) convertArgs:(NSDictionary*)argsDict forWidget:(KonyWidgetType)widgetType;

@end
