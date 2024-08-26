//
//  KonyTypeUtils.h
//  VM
//
//  Created by KH206 on 14/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@interface KonyTypeUtils : NSObject

+ (NSString*) stringForWidgetType: (KonyWidgetType) widgetType;
+ (NSString*) stringForLanguageType: (KonyLanguageType) langType;
+ (KonyValueType) konyValueTypeForStringType:(NSString*) typeName;
+ (BOOL) isKonyValueTypeExternal:(KonyValueType) valueType;
+ (NSString*) stringForPropertyAccessModifier: (KonyPropertyAccessModifier) aPropertyAccessModifier;
@end


@interface LuaObject : NSObject
{
    id value;
}

@property (nonatomic, retain) id value;


-(id) initWithValue:(id) value_;
@end
