//
//  FlexLayoutModelProperty.h
//  VM
//
//  Created by Sunil Phani Manne on 26/06/14.
//
//

#import <Foundation/Foundation.h>

#import "KonyTypes.h"

/*!
    Enumeration indicating the various types of values that can be held by a <code>FlexLayoutModelProperty</code>.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutModelPropertyValueType) {
    FlexLayoutModelPropertyTypeUndefined,
    FlexLayoutModelPropertyTypeConstant,
    FlexLayoutModelPropertyTypeAttributeValue,
    FlexLayoutModelPropertyTypeUnknown
};

/*!
@brief This enum indicates the type of FlexLayoutPropertyType this FlexLayoutModelProperty is holding. This indicates whether the value corresponding to X, Y, Width or Height. This meta info comes handy when performing conversions. The conversion Utilities make use of this meta info while calculating percentage conversions.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutPropertyType) {
    FlexLayoutPropertyTypeX,
    FlexLayoutPropertyTypeY,
    FlexLayoutPropertyTypeWidth,
    FlexLayoutPropertyTypeHeight,
    FlexLayoutPropertyTypeUnknown
};

/*!
    FlexLayoutModelProperty is an object which ...
 */
@interface FlexLayoutModelProperty : NSObject <NSCopying>

@property (nonatomic, assign) FlexLayoutModelPropertyValueType valueType;

//Attributes related to Value
@property (nonatomic, assign) float attributeValue;
@property (nonatomic, assign) FlexLayoutDisplayUnit attributeValueUnit;
@property (nonatomic, assign) float convertedAttributeValue;

//Default Attribute Value which would be specified from a config file per widget. This would be used as a default value while computing preferredSize calculations.
@property (nonatomic, assign) float defaultAttributeValue;
@property (nonatomic, assign) FlexLayoutDisplayUnit defaultAttributeValueUnit;
@property (nonatomic, assign) float convertedDefaultAttributeValue;

//referenceValue is used a reference for doing % conversions.
@property (nonatomic, assign) float referenceValue;

//propertyType indicates whether the property is holding info about x, y, width or height. This is used during % conversions.
@property (nonatomic, assign) FlexLayoutPropertyType propertyType;

//Attributes related to Constant
@property (nonatomic, assign) FlexLayoutModelPropertyConstantType constantValue;

//Convenience Properties
@property (nonatomic, readonly, getter = isConstant) BOOL constant;
@property (nonatomic, readonly, getter = isUndefined) BOOL undefined;
@property (nonatomic, readonly, getter = isAttributeValue) BOOL isAttributeValue;
@property (nonatomic, readonly, getter = isUsePreferredSizeProperty) BOOL usePreferredSize;
@property (nonatomic, readonly, getter = isUseAvailableSpaceProperty) BOOL useAvailableSpace;

/*!
 @brief Initializes and returns a FlexLayoutModelProperty object and represents the object carries value of given propertyType.
 @param A property type indicating the meta info about the value (x, y, width or height) this object will be containing.
 @return Returns object of FlexLayoutModelProperty.
 */
- (instancetype)initWithPropertyType:(FlexLayoutPropertyType)propertyType;

/*!
 @brief Populates with the information contained in the object.
 @param A object which acts as the provider of data for the Model property object.
 @param Error object passed as a reference.
 */
- (BOOL)populateWithObject:(id)object error:(NSError **)error;

/*!
 @brief Populates with the information contained in the object.
 @param A object which acts as the provider of data for the Model property object.
 @param Error object passed as a reference.
 */
- (BOOL)populateWithNSNumber:(NSNumber *)object error:(NSError **)error;

/*!
 @brief Populates with the information contained in the object.
 @param A object which acts as the provider of data for the Model property object.
 @param Error object passed as a reference.
 */
- (BOOL)populateWithString:(NSString *)object error:(NSError **)error;

/*!
 @brief Sets the referenceValue by inferring whether to take width or height based on the propertyType of this object.
 @param A size object from which either width or height is inferred and set as referenceValue.
 */
- (void)setReferenceValueFromSize:(CGSize)referenceSize;

//TODO: Update the appledoc...
/*!
 @brief Performs the conversion on the data contained if the valueType is an AttributeValue and populates the convertedAttributedValue.
 @param
 */
- (void)performConversionWithDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;

- (void)performConversionWithDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit andReferenceSize:(CGSize)referenceSize;

- (void)performDefaultAttributeValueConversionWithDefaultUnit:(FlexLayoutDisplayUnit)defaultUnit;

@end
