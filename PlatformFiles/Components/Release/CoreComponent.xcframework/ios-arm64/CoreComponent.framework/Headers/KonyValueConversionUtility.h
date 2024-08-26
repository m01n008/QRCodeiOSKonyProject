//
//  KonyValueConversionUtility.h
//  VM
//
//  Created by KH206 on 15/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

@class ConversionUtility;
@class LanguageContext;

@interface KonyValueConversionUtility : NSObject
{
    ConversionUtility *converter;
}

+(void) resetSharedInstance;

//This is used to opt for some specific conditions implementation on conversion utility
//For eg: Boolean should be converted to NSNumber/KonyBoolean
-(id) initWithLanguageContext: (LanguageContext*) langContext options:(NSDictionary *)conditionalDict;


// Reset language context for switching contexts : In Preview
-(void) resetLanguageContextTo: (LanguageContext *) langContext;

// Returns a shared instance for the widget utility where the converter object will be intialized as per the current language context.
+(KonyValueConversionUtility*) sharedInstance;

// Converts the given value to the specified type. Returns nil and an appropriate error object if there is any failure.
- (id) convertValue : (id) sourceValue toType : (KonyValueType) valueType error: (NSError**) error;

// Converts the given value to the default internal type. Returns nil and an appropriate error object if there is any failure.
- (id) convertExternalValueToDefaultInternalType: (id) externalValue error: (NSError**) error;

// Converts the given value to the default external type. Returns nil and an appropriate error object if there is any failure.
- (id) convertInternalValueToDefaultExternalType: (id) internalValue error: (NSError**) error;

// Used to convert internal objects to default external type - (only if no defined mapping found).
- (void) registerExternalClass:(Class)externalClass forInternalClass:(Class)internalClass;

@end
