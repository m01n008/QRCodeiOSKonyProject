//
//  KonyTintUtil.h
//  VM
//
//  Created by Saianuhya Kodimela on 03/06/17.
//
//

#import <Foundation/Foundation.h>
#import "KonyTypes.h"

#define TINT_COLOR @"color"
#define TINT_ADJUSTMENT_MODE @"mode"

@interface KonyTintUtil : NSObject

/*!
 @brief gives tinted image of given image if valid tintConfig is passed else returns same image.
 
 @param The image to which tinted image is required.
 @param The tintConfig which has the color and mode of tinting.
 @return Returns tinted image or same image depending on validity of tintconfig
 */
+ (UIImage *)imageWithImage:(UIImage *)image tintedWithTintConfig:(NSDictionary *)tintConfig;

/*!
 @brief checks the validity of given tintConfig.
 
 @param The tintConfig which has the color and mode of tinting.
 @return Returns YES if tintConfig is valid else returns NO
 */
+ (BOOL)isValidTintConfig:(NSDictionary *)tintConfig;

/*!
 @brief applies TintAdjustmentMode and tint color to a given view.
 
 @param The tintConfig which has the color and mode of tinting.
 @param The view to which tintConfig is being applied.
 */
+ (void)applyTintAdjustmentModeAndColorWithTintConfig:(NSDictionary *)tintConfig toView:(UIView *)view;

/*!
 @brief checks if the given tint mode is native type.
 
 @param The tintMode to be checked.
 @return Returns YES if tint mode is native type else returns NO
 */
+ (BOOL)isTintModeNative:(TintMode)tintMode;

@end
