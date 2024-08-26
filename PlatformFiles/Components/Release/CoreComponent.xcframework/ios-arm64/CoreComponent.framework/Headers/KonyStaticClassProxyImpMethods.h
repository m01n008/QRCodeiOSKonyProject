//
//  KonyStaticClassProxyImpMethods.h
//  VM
//
//  Created by KH206 on 08/04/15.
//
//

#import <Foundation/Foundation.h>

//+ (NSString *) jsStaticAPINamespace;
//+ (NSDictionary *) staticAPIMethodMapping;

NSString* jsStaticNameSpaceImpl(id object, SEL selector);

NSDictionary* jsStaticAPIMethodMappingImpl(id object, SEL selector);

id jsStaticMethodCallImpl(id object, SEL selector, NSArray* arguments);
