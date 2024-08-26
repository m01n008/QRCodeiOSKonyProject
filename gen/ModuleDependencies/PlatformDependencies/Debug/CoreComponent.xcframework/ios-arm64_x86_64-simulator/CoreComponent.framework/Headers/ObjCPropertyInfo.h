//
//  PropertyInfo.h
//  VM
//
//  Created by KH206 on 03/02/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "KonyTypes.h"

@interface ObjCPropertyInfo : NSObject
{
    BOOL isPrimitive;
    BOOL isReadOnly;
    BOOL isCopy;
    BOOL isRetained;
    id   objectType;
    NSString *iVarName;
    SEL   getter;
    SEL   setter;
    SEL   updateSelector;
    NSString *name;
    DataType dataType;
}

@property (nonatomic, readonly) BOOL isPrimitive;
@property (nonatomic, readonly) BOOL isReadOnly;
@property (nonatomic, readonly) BOOL isCopy;
@property (nonatomic, readonly) BOOL isRetained;
@property (nonatomic, readonly) id   objectType;
@property (nonatomic, readonly) NSString *iVarName;
@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) SEL getter;
@property (nonatomic, readonly) SEL setter;
@property (nonatomic, readonly) SEL updateSelector;
@property (nonatomic, readonly) DataType dataType;



- (id) initWithProperty : (objc_property_t) property;
+ (ObjCPropertyInfo*) propertyInfoForProperty:(objc_property_t) property;
@end
