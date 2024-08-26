//
//  FlexLayoutUtil.h
//  VM
//
//  Created by Sunil Phani Manne on 29/06/14.
//
//

#import <Foundation/Foundation.h>

#import "KonyTypes.h"
#import "FlexLayoutInfoProtocol.h"

@class Widget;
@class LayoutModel;

/*!
 enum indicating the Layout size encapsulating criterion.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutSizeEncapsulatingCriterion) {
    FlexLayoutSizeEncapsulatingCriterionFrame,
    FlexLayoutSizeEncapsulatingCriterionWidgetDimensions
};

/*!
 enum indicating the Autogrow Height encapsulating criterion.
 */
typedef NS_ENUM(NSUInteger, FlexLayoutAutogrowHeightComputingCriterion) {
    FlexLayoutAutogrowHeightComputingCriterionMaxHeightOfWidgets,
    FlexLayoutAutogrowHeightComputingCriterionSumOfHeightOfWidgets
};

/*!
 enum indicating the types of the axis values
 */
typedef NS_ENUM(NSUInteger, FlexLayoutAxisValueType) {
    FlexLayoutAxisValueTypeX,
    FlexLayoutAxisValueTypeY
};

/*!
 enum indicating the types of the dimensional values
 */
typedef NS_ENUM(NSUInteger, FlexLayoutDimensionalValueType) {
    FlexLayoutDimensionalValueTypeWidth,
    FlexLayoutDimensionalValueTypeHeight
};

typedef void (^onParsingSuccessfulBlock)(float value, FlexLayoutDisplayUnit valueUnit, FlexLayoutModelPropertyValueType valueType);

typedef struct {
    CGFloat min;
    CGFloat max;
}FlexLayoutDimensionRange;

CG_INLINE FlexLayoutDimensionRange
RangeMake(CGFloat min, CGFloat max)
{
    FlexLayoutDimensionRange range;
    range.min = min;
    range.max = max;
    return range;
}

@interface FlexLayoutUtil : NSObject

//Various Utility methods used by Flex Layout module

//TODO: Write appledoc comments

#define PORTRAIT @"portrait"
#define LANDSCAPE @"landscape"

#define SPAN @"span"
#define OFFSET @"offset"

#define SPAN_DIVIDEND 12

#define GET_DEFAULT_RESPONSIVE_CONFIG [[NSDictionary alloc] initWithObjectsAndKeys:@{PORTRAIT:@12,LANDSCAPE:@12}, SPAN, @{PORTRAIT:@0,LANDSCAPE:@0}, OFFSET, nil];



+ (BOOL)isAFlexLayoutModel:(LayoutModel *)layoutModel;
+ (BOOL)isAFlexContainer:(Widget *)widget;
+ (BOOL)isAResponsiveFlexContainer:(Widget*)widget;
+ (BOOL)doesResponsiveFlexRequirePadding:(Widget*)widget;
+ (void)addPaddingLayerForResponsiveFlexContainer:(Widget*)widget;
+ (void)removePaddingLayerForResponsiveFlexContainer:(Widget*)widget;

+ (CGRect)CGRectFromDict:(NSDictionary *)frame;
+ (CGPoint)CGPointFromDict:(NSDictionary *)point;
+ (CGSize)CGSizeFromDict:(NSDictionary *)size;
+ (NSDictionary *)frameDictForRect:(CGRect)frame;
+ (NSDictionary *)pointDictForPoint:(CGPoint)point;

+ (FlexLayoutDisplayUnit)displayUnitForString:(NSString *)unitInString;
+ (NSString *)stringForDisplayUnit:(FlexLayoutDisplayUnit)displayUnit;
+ (NSString *)stringForLayoutPropertyType:(FlexLayoutPropertyType)propertyType;
+ (FlexLayoutPropertyType)flexLayoutPropertyTypeForString:(NSString *)propertyTypeInString;

//Important methods required for Flex Layout Calculations

+ (CGFloat)getStandardDPI;
+ (CGFloat)getDeviceScreenDPI;

+ (FlexLayoutDisplayUnit)getFlexLayoutPlatformDefaultDisplayUnit;

+ (CGSize)getFlexPreferredSizeForWidget:(id <FlexLayoutInfoProtocol>)widget
                            forMinWidth:(float)minWidth maxWidth:(float)maxWidth
                           andMinHeight:(float)minHeight maxHeight:(float)maxHeight;

+ (CGSize)getFlexPreferredSizeForWidget:(id <FlexLayoutInfoProtocol>)widget
                            forMinWidth:(float)minWidth maxWidth:(float)maxWidth
                              andHeight:(float)height;

+ (CGSize)getFlexPreferredSizeForWidget:(id <FlexLayoutInfoProtocol>)widget
                               forWidth:(float)width
                              minHeight:(float)minHeight andMaxHeight:(float)maxHeight;

+ (CGSize)getFlexPreferredSizeForWidgetForMinAndMaxDimensions:(id <FlexLayoutInfoProtocol>)widget
                                             andGivenMaxWidth:(float)givenMaxWidth;

+ (CGSize)enforceGivenSize:(CGSize)givenSize
     isContainedInMinWidth:(float)minWidth maxWidth:(float)maxWidth
                 minHeight:(float)minHeight andMaxHeight:(float)maxHeight;

+ (float)enforceGivenDimension:(float)givenDimension
     isContainedInMinDimension:(float)minDimension maxDimension:(float)maxDimension;

+ (CGSize)updateSize:(CGSize)givenSize
 toEncapsulateWidget:(id <FlexLayoutInfoProtocol>)widget
         criterionAs:(FlexLayoutSizeEncapsulatingCriterion)criterion;

+ (CGSize)updateAutogrowSize:(CGSize)autogrowSize
               withChildSize:(CGSize)childSize
            basedOnCriterion:(FlexLayoutAutogrowHeightComputingCriterion)autogrowCriterion;

+ (CGSize)getSizeByDoingTransientLayoutForWidget:(Widget *)widget
                                withParentWidget:(Widget *)parent;

+ (BOOL)parseString:(NSString *)string
      populateValue:(float *)attributeValue
          valueUnit:(FlexLayoutDisplayUnit *)valueUnit
       andValueType:(FlexLayoutModelPropertyValueType *)valueType;

+ (BOOL)parseString:(NSString *)string
          onSuccess:(onParsingSuccessfulBlock)onSuccessblock;

//Some house-keeping APIs
+ (void)loadTheDefaultValuesForWidgets;
+ (FlexLayoutModelProperty *)getDefaultValueForWidgetType:(KonyWidgetType)widgetType
                                          forPropertyName:(NSString *)propertyName
                                                    error:(NSError **)error;
+ (FlexLayoutModelProperty *)getDefaultValueForWidgetTypeString:(NSString *)widgetTypeString
                                                forPropertyName:(NSString *)propertyName
                                                          error:(NSError **)error;

+ (BOOL)shouldPickDefaultValueForFlexLayoutModelProperty:(FlexLayoutModelProperty*)dimensionProperty
                                          andLayoutModel:(id <FlexLayoutInfoProtocol>)layoutModel;

+ (BOOL)isAPercentageProperty:(FlexLayoutModelProperty *)property
                ofLayoutModel:(id <FlexLayoutInfoProtocol>)layoutModel;


+ (BOOL)isHeightPercentageBasedForLayoutModel:(id <FlexLayoutInfoProtocol>)layoutModel;

+ (FlexLayoutDimensionRange)getRangeOfDimensionalValueType:(FlexLayoutDimensionalValueType)valueType
                                           fromLayoutModel:(id <FlexLayoutInfoProtocol>)layoutModel;

+ (BOOL)isAutogrowHeightEnabledForLayoutModel:(id <FlexLayoutInfoProtocol> )layoutModel;
+ (CGRect) roundOffRect:(CGRect) rect;

+ (BOOL)needMirrorLayout:(id <FlexLayoutInfoProtocol> )layoutModel;
/** @method getResponsiveDataValueFromModel
 *  @brief  Method which returns actual value for each type of property present in responsive config.
  Ex: "responsiveConfig": {
         "offset": {
             "landscape": 4,
             "portrait": 3
         },
         "span": {
             "landscape": 12,
             "portrait": 12
         }
    }
 *  @param  layoutModel - Child widget Layout Model
 *  @param  propertyName - Actual property name
 *  @returns Float value of property
**/
+(float)getResponsiveDataValueFromModel:(id <FlexLayoutInfoProtocol>)layoutModel andPropertyName:(NSString*)propertyName;

@end
