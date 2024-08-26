//
//  ValidationAndConversionUtility.h
//  VM
//
//  Created by KH206 on 14/03/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"
#import "KonyValueConversionUtility.h"
#import "PropertyMapStore.h"

@interface KonyWidgetUtility : NSObject
{
    KonyValueConversionUtility *converter;
    PropertyMapStore *widgetPropertyMapStore;
    
}

// Returns a shared instance for the widget utility where the converter and the widgetPropertyMapStore objects will be intialized as per the current language context.
+(KonyWidgetUtility*) sharedInstance;

+(void) resetSharedInstance;

// Validates and converts the given external value to appropriate internal value as per the configuration specified in the widget property configuration list. Returns nil and an appropriate error object if there is any failure. 
- (id) getInternalValueForExternalValue: (id) extrenalValue forExternalPropertyName: (NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;

// Validates and converts the given internal value to appropriate external value as per the configuration specified in the widget property configuration list. Returns nil and an appropriate error object if there is any failure. 
- (id) getExternalValueForInternalValue: (id) internalValue forExternalPropertyName: (NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;

- (id) getExternalPropertyNameForInternalPropertyName:(NSString*) internalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) retError;

// Returns the internal property name for a given external property name as per the configuration specified in the widget property configuration list. Returns nil and an appropriate error object if there is any failure.
- (id) getInternalPropertyNameForExternalPropertyName:(NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;

- (KonyValueType) getInternalDataTypeForExternalPropertyName:(NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;
- (KonyValueType) getExternalInputlDataTypeForExternalPropertyName:(NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;
- (KonyValueType) getExternalOutputDataTypeForExternalPropertyName:(NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;


- (BOOL) isAccessModifierType: (KonyPropertyAccessModifier) aAccessModifierType supportedForExternalproperty: (NSString*) extProperty forWidgetType: (KonyWidgetType) widgetType;

// Returns all the external properties of a widget which are matching to the given access modifier type (readonly, readwrite).
- (NSArray*) getAllPropertiesForAccessModifierType: (KonyPropertyAccessModifier) accessModifierType forWidgetType: (KonyWidgetType) widgetType;

// Returns all the external properties of a widget
- (NSArray*) getAllExternalPropertiesForWidgetType: (KonyWidgetType) widgetType;

// Returns default external property name
- (NSString*) getDefaultExternalPropertyForWidgetType: (KonyWidgetType) widgetType;

- (NSDictionary*) getAllConfigEntriesForWidgetType: (KonyWidgetType) widgetType;

/**
@brief  This method gets  internal value type for the external proerty
@param  externalProperty externalProperty name of the widget
@param  widgetType type of widget
@return internal value type for external property
*/
- (KonyValueType) getKonyValueTypeForExternalPropertyName: (NSString*) externalProperty forWidgetType: (KonyWidgetType) widgetType error: (NSError**) error;

/**
@brief  This method converts  external property value to internal value type
@param  value for a property which is sent from JavaScript side
@param  valueType refers type to convert
@return returns the internal(obj-c) type value
*/
- (id) getInternalValueForExternalValue: (id) externalValue forKonyValueType: (KonyValueType) valueType error: (NSError**) error;



@end
