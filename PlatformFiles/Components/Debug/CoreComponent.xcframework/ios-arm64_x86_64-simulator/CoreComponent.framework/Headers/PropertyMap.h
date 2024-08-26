//
//  PropertyMap.h
//  VM
//
//  Created by User Kasturi on 07/03/12.
//  Copyright (c) 2012 Kony Solutions. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

#define PROPERTYMAP_LANGUAGETYPE_JS @"JS"
#define PROPERTYMAP_LANGUAGETYPE_LUA    @"Lua"

#define PROPERTYMAP_PATH    @"PropertyMaps"
#define PROPERTYMAP_FILE_SUFFIX @"PropertyMap"
#define PROPERTYMAP_FILE_EXTENSION  @"plist"
#define PROPERTYMAP_COMMONPROPERTIES_FILE   @"CommonPropertiesMap"
#define PROPERTYMAP_COMMONPROPERTES_ID  @"commonproperties"

#define PROPERTYMAP_WIDGET_CONFIG_KEY_MAPPINGS   @"WidgetConfigKeyMappings"

#define PROPERTYMAP_EXTERNAL_NAME   @"ext_name"
#define PROPERTYMAP_EXTERNAL_IN_TYPE   @"ext_in_type"
#define PROPERTYMAP_EXTERNAL_OUT_TYPE   @"ext_out_type"
#define PROPERTYMAP_INTERNAL_NAME   @"int_name"
#define PROPERTYMAP_INTERNAL_TYPE   @"int_type"
#define PROPERTYMAP_EXTERNAL_ACCESS_TYPE   @"ext_acc_type"
#define PROPERTYMAP_DEFAULT_PROPERTY   @"default_property"

#define PROPERTYMAP_EXTERNAL_ACCESS_TYPE_READONLY   @"ReadOnly"
#define PROPERTYMAP_EXTERNAL_ACCESS_TYPE_READWRITE   @"ReadWrite"

typedef enum KonyInternalPropertyType
{
    KonyInternalPropertyTypeNSString = 0,
    KonyInternalPropertyTypeNSDictioanry = 1,
    KonyInternalPropertyTypeNSArray = 2,
    KonyInternalPropertyTypeBOOL = 3,
    KonyInternalPropertyTypeNSNumber = 4,
    KonyInternalPropertyTypeIndex = 5
}KonyInternalPropertyType;

typedef enum KonyExternalPropertyType   
{
    KonyExternalPropertyTypeLuaString = 0,
    KonyExternalPropertyTypeLuaTable = 1,
    KonyExternalPropertyTypeLuaBoolean = 2,
    KonyExternalPropertyTypeLuaNumber = 3,
    KonyExternalPropertyTypeLuaClosure = 4,
    KonyExternalPropertyTypeJSString = 5,
    KonyExternalPropertyTypeJSBoolean = 6,
    KonyExternalPropertyTypeJSNumber = 7,
    KonyExternalPropertyTypeJSArray = 8,
    KonyExternalPropertyTypeJSHash = 9,
    KonyExternalPropertyTypeLuaCompositeBoolNumber = 10,
    KonyExternalPropertyTypeLuaCompositeStringNumber = 11,
    KonyExternalPropertyTypeJSCompositeBoolNumber = 12,
    KonyExternalPropertyTypeJSCompositeStringNumber = 13
    
}KonyExternalPropertyType;


@interface PropertyMap : NSObject
{

@private
    NSMutableDictionary *internalProperties;
    NSArray *allInternalProperties;
    NSMutableDictionary *externalProperties;
    NSArray *allExternalProperties;
    NSMutableDictionary *configKeys;
    NSDictionary *allConfigEntries;
    NSString *widgetString;
    NSString *languageType;
    
    //These arrays will hold all the properties of a particular kind per widget type
    //They will once get filled and reused later for sake of better performance
    NSArray *matchingPropsContructor;
    NSArray *matchingPropsReadOnly;
    NSArray *matchingPropsReadWrite;
    NSArray *matchingPropsSegUI;
    NSArray *matchingPropsCollectionView;
    
}

+(PropertyMap*) propertyMapForWidget:(NSString*) aWidgetType languageType:(NSString*) aLanguageType;

-(id) initWithWidget:(NSString*) aWidgetString forLanguage:(NSString*) aLanguageType;

-(NSString*) internalPropertyNameForExternalPropertyName:(NSString*) aExternalProperty;
-(NSString*) externalPropertyNameForInternalPropertyName:(NSString*) aInternalProperty;

-(NSString*) internalPropertyTypeForExternalPropertyName:(NSString*) aExternalProperty;
-(NSString*) externalPropertyInTypeForInternalPropertyName:(NSString*) aInternalProperty;
-(NSString*) externalPropertyOutTypeForInternalPropertyName:(NSString*) aInternalProperty;
-(NSString*) externalPropertyInTypeForExteranlPropertyName:(NSString*) aExternalProperty;
-(NSString*) externalPropertyOutTypeForExteranlPropertyName:(NSString*) aExternalProperty;
- (BOOL) isAccessModifiertype:(KonyPropertyAccessModifier) aKonyPropertyAccessModifier supportedForExternalProperty:(NSString*) aExternalProperty;
-(BOOL) isValidExternalPropertyInType: (NSString*) aExtrenalPropertyType forExternalProperty: (NSString*) aExternalProperty;

-(NSArray*) allInternalProperties;
-(NSArray*) allExternalProperties;
- (NSString*) defaultExternalProperty;
- (NSDictionary*) allConfigEntries;
-(NSArray*) allExternalPropertiesForAccessModifierType:(KonyPropertyAccessModifier) aKonyPropertyAccessModifier;
-(NSString*) stringAccessModifierTypeForExternalProperty: (NSString*) aExternalProperty;
-(KonyPropertyAccessModifier) accessModifierTypeForExternalProperty: (NSString*) aExternalProperty;

@end
