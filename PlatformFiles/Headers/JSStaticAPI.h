//
//  JSStaticAPI.h
//  VM
//
//  Created by Amba on 20/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol JSStaticAPI <NSObject>

@required
+ (NSString *) jsStaticAPINamespace;
+ (NSDictionary *) staticAPIMethodMapping;

@optional
+ (BOOL) requiresRuntimeForMethod:(NSString*) methodName;
@end
