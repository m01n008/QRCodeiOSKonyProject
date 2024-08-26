//
//  AnimationUtils.h
//  VM
//
//  Created by Prabhakar K on 04/09/14.
//
//

#import <Foundation/Foundation.h>
#import "AnimationModel.h"
#import "KeyFrameAnimationModel.h"
#import "NSException+KonyErrorException.h"
#import "KonyTypes.h"
#import "Widget.h"

@interface AnimationUtils : NSObject
+(NSDictionary *)getGradientPointsDictionaryFromGradientAngle:(float)angle andWidgetFrame:(CGRect)frame;
+(BOOL)validateSkinAnimationValue:(id)value forKey:(NSString *)key andRaiseException:(BOOL)isExceptionNeeded;
+(UIColor*) colorFromHexString:(NSString*) hexStr_;
+(BOOL) isStringANumber:(NSString*) str_;
+(BOOL) isValueStringTypeOrNumber:(id) value_;
+(NSString*) negateAlphaFromHexString:(NSString*) hexStr_;
+(BOOL) isStringAHex:(NSString*) str_;
+(NSString *)hexValueFromCGColorRef:(CGColorRef)color;
+(BOOL) isTimingFucntionValid:(id) timingFunc_;
+(BOOL) isArrayCompatibleWithGradientLocations:(NSArray*) locations;
+(BOOL) isDictionaryCompatibleWithShadowOffset:(NSDictionary*) dict;
+(NSValue*) getNSValueFromDictionaryOfShadowOffset:(NSDictionary*) dict_;
+(NSValue*) getCGPointValueFromGradientPointDictionary:(NSDictionary*) dict;
+(NSDictionary *)getGradientPointDictionaryFromCGPoint:(CGPoint)point;
+(NSArray *)getCGColorArrayFromHexstringArray:(id) hexcolorArray;
+(NSMutableArray *)getKeysCorrespondingToAnimationsPresent:(int)animationTypesPresent;
+(BOOL) doesDictionaryHaveSkinProperties:(NSDictionary*) dict_;
+(BOOL) isPropertySkinType:(NSString*) property_;
+(BOOL) doesSelfHaveHorizontalOrVerticalLayout:(Widget*) widget_;
+(BOOL) doesParentHaveHorizontalOrVerticalLayout:(Widget*) widget_;
+(NSArray*) getChildWidgetListForWidget:(Widget*) widget_;
+(BOOL) areAllRectsSame:(NSArray*) rects toRect:(CGRect) compareRect;
+(BOOL) areAllValues:(NSArray*) values_ sameAs:(NSValue*) compareValue;
+(Widget*) getAssociatedWidget:(WidgetModel*) model_;
+(NSArray*) getSizeArrayFromRectArray:(NSArray*) rectArray_;
+(BOOL) areAllSizesSame:(NSArray*) sizes toSize:(CGSize) compareSize;
+(Widget*)getParentWidgetFor:(Widget*)wdg;
+(UIView*)getSuperView:(UIView*)view byMatchingClass:(NSString*)matchingClass byBreakingAt:(NSString*)breakingClass;
@end
