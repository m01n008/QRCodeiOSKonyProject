//
//  CustomShapeLayer.h
//  VM
//
//  Created by Deepti Kaushal on 08/02/13.
//
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface CustomShapeLayer : CAShapeLayer
{
    CGFloat innerShadowRadius;
    UIColor *colorForInnerShadow;
    CGFloat innerShadowOffsetX;
    CGFloat innerShadowOffsetY;
}

@property (nonatomic,readwrite) CGFloat innerShadowRadius;
@property (nonatomic,readwrite,retain) UIColor *colorForInnerShadow;
@property (nonatomic,readwrite) CGFloat innerShadowOffsetX;
@property (nonatomic,readwrite) CGFloat innerShadowOffsetY;

@end
