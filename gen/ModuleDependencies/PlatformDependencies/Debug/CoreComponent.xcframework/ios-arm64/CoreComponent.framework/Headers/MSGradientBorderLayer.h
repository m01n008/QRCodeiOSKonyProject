//
//  MSGradientBorderLayer.h
//  VM
//
//  Created by Deepti Kaushal on 21/02/13.
//
//

#import <QuartzCore/QuartzCore.h>
#import "KonyTypes.h"

@interface MSGradientBorderLayer : CAShapeLayer
{
    CGFloat angleForBorderGradient;
    NSArray *colorsForBorderGradient;
    NSArray *locationsForBorderGradient;
    CGFloat gradientBorderWidth;
    CGFloat borderRadius;
    KonyWidgetBorderType borderType;
    NSArray *borderLineStyleConfig;
    NSString *borderLineStyle;
    CGColorRef strkColor;
}

@property (nonatomic,readwrite) CGFloat angleForBorderGradient;
@property (nonatomic,readwrite,retain) NSArray *colorsForBorderGradient;
@property (nonatomic,readwrite,retain) NSArray *locationsForBorderGradient;
@property (nonatomic,readwrite) CGFloat gradientBorderWidth;
@property (nonatomic,readwrite) CGFloat borderRadius ;
/*! @brief This property is used to store the type of border to render  */
@property (nonatomic) KonyWidgetBorderType borderType ;
/*! @brief This property is used to store the border line style configuration */
@property (nonatomic) NSArray *borderLineStyleConfig;
/*! @brief This property is used to store the border line style */
@property (nonatomic) NSString *borderLineStyle;
/*! @brief This property is used to store the border line stroke color */
@property (nonatomic) CGColorRef strkColor;

-(void)drawLinearGradientinContext:(CGContextRef)context withAngle:(CGFloat)angleForGradient withColors:(NSArray *)colorsForGradient andLocations:(NSArray *)locationsForGradient;

@end
