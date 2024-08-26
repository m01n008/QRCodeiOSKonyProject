//
//  UILabel+labelExtension.h
//  VM
//
//  Created by Deepti Kaushal on 05/04/13.
//
//

#import <UIKit/UIKit.h>

@interface UILabel (labelExtension)

//for text-shadow
- (CGSize) getCustomShadowOffset;
- (UIColor*) getCustomShadowColor;
- (CGFloat) getCustomShadowBlurRadius;
- (void) setCustomShadowOffset: (CGSize) shadowOffset;
- (void) setCustomShadowColor: (UIColor*) shadowColor;
- (void) setCustomShadowBlurRadius: (CGFloat) shadowBlurRadius;

//for text-gradient
- (CGFloat) getGradientAngle;
- (NSArray*) getGradientColors;
- (NSArray*) getColorStops;
- (void) setGradientColors: (NSArray *) gradientColors;
- (void) setGradientAngle: (CGFloat) gradientAngle;
- (void) setColorStops: (NSArray *) colorStops;

@end

