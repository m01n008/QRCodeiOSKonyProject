//
//  WidgetBackgroundLayer.h
//  VM
//
//  Created by on 11/30/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "Skin.h"
#import "CustomShapeLayer.h"
#import <UIKit/UIKit.h>
#import "MSGradientBorderLayer.h"
#import "KonyShapeLayerController.h"

#pragma mark -
#pragma mark WidgetBackgroundLayer

@interface WidgetBackgroundLayer : CAGradientLayer{
    
    CALayer *imgLayer;
    float radius;
@private
    Skin* skin;
    CustomShapeLayer *customShapeLayer;
    MSGradientBorderLayer *borderGradientLayer;
    KonyShapeLayerController *shapeLayer;

    id widgetLayerBackgroundColor;
    NSString *widgetLayerBorderColor;
    NSString *widgetLayerBackgroundImage;
    NSNumber *widgetLayerBorderWidth;
    NSNumber *widgetLayerCornerRadius;
    NSNumber *widgetLayerShadowRadius;
    NSString *widgetLayerShadowColor;
    NSNumber *widgetLayerShadowOpacity;
    NSDictionary *widgetLayerShadowOffset;
    SkinProperties widgetLayerBorderStyle;
    NSDictionary *widgetLayerBorderColorGradient;
    NSDictionary *widgetLayerBackgroundColorMultiStepGradient;
    NSDictionary *widgetLayerBackgroundColorTwoStepGradient;
}

@property (nonatomic, retain) Skin* skin;
@property (nonatomic, retain) CustomShapeLayer* customShapeLayer;
@property (nonatomic, retain) MSGradientBorderLayer* borderGradientLayer;
@property (nonatomic, retain) KonyShapeLayerController *shapeLayer;

@property (nonatomic, retain) id widgetLayerBackgroundColor;
@property (nonatomic, retain) NSString *widgetLayerBorderColor;
@property (nonatomic, retain) NSString *widgetLayerBackgroundImage;
@property (nonatomic, retain) NSNumber *widgetLayerBorderWidth;
@property (nonatomic, retain) NSNumber *widgetLayerCornerRadius;
@property (nonatomic, retain) NSNumber *widgetLayerShadowRadius;
@property (nonatomic, retain) NSString *widgetLayerShadowColor;
@property (nonatomic, retain) NSNumber *widgetLayerShadowOpacity;
@property (nonatomic, retain) NSDictionary *widgetLayerShadowOffset;

@property (nonatomic, assign) SkinProperties widgetLayerBorderStyle;
@property (nonatomic, retain) NSDictionary *widgetLayerBorderColorGradient;
@property (nonatomic, retain) NSDictionary *widgetLayerBackgroundColorMultiStepGradient;
@property (nonatomic, retain) NSDictionary *widgetLayerBackgroundColorTwoStepGradient;

- (void) bringSublayerToFront:(CALayer *)layer;
/**
 @brief Function is used for adding the shape layer under the CanvasShapeLayer
 @discussion Validate weather all the mandatory data is provided in shapeData and create the shape Layers
 @param shapeData Data of shapeLayers adata
 @param layerDelegate used for calculating the shape sizes using this delegate
 */
-(void)addShapeLayerData:(NSArray*)shapeData forLayerDelegate:(id)layerDelegate;

@end
#pragma mark -
