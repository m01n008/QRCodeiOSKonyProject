//
//  CustomKVOArrayProxy.h
//  KVOChecks
//
//  Created by Shiva on 31/12/12.
//  Copyright (c) 2012 Shiva. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjCPropertyInfo.h"
@interface CustomKVOArrayProxy : NSProxy
{
@private
    NSMutableArray *arrYToproxy;
    NSArray *observers;
    ObjCPropertyInfo *propertyInfo;
}

- (id) initWithArray: (NSMutableArray*) array  propertyInfo: (ObjCPropertyInfo*) propInfo andObservers:(id) observers_;
- (void) notifyChange: (NSDictionary*) change withContext:(id) context;
@end
