//
//  KonyShapeLayer.h
//  Canvas
//
//  Created by Praveen Kanike on 29/05/19.
//  Copyright © 2019 Kony Labs. All rights reserved.
//

#ifndef KonyShapeLayer_h
#define KonyShapeLayer_h
#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>
#import "KonyTypes.h"
#import "KonyWrapperDS.h"
#define COLOR_TYPE @"color_type"
/*!
 @class KonyShapeLayer
 
 @brief The KonyShapeLayer class
 
 @discussion This class is used for creating the shapes on top of the layers.
 @superclass CAShapeLayer
 */
@interface KonyShapeLayer : CAShapeLayer {
    
}
@property (nonatomic, strong) NSMutableDictionary *shapeDataModelValues;

/*! @brief This property is used to store the unique shapeId value for the layer  */
@property (nonatomic, strong, readonly) NSString *shapeId;
/*! @brief This property is used to type of shape to create  */
@property (nonatomic, assign, readonly) KonyShapeLayerType shapeType;
/*! @brief This property is used for creating the shapes style like dashed/thick   */
@property (nonatomic, assign)  KonyShapeLayerStyle lineStyle;
/*! @brief This property is used for creating the shape with the provided thickness   */
@property (nonatomic, assign)  CGFloat thickness;
/*! @brief This property is used for filling the color to the shape   */
@property (nonatomic, assign)  CGColorRef colorToFill;
/*! @brief This property is used for drawing a shpe with given configuration like in dashed format the array of values([2,2,3]) indicates the spacing between the each dash in the line   */
@property (nonatomic) NSArray *lineStyleConfig;
/*! @brief This property is used for creating the shapes based on the coordinate system points   */
@property (nonatomic) NSArray *coordinatePoints;
/*! @brief This property is used for kind of line join used when style is provided   */
@property (nonatomic, assign)  KonyShapeLineJoin lineJoinType;
/*! @brief This property is used for stroke color for the shape created   */
@property (nonatomic, assign)  id shapeStrokeColor;

//Not yet implemented future use
@property (nonatomic, assign)  CGColorRef  fillColorToPath;
@property (nonatomic, assign)  CGFloat  strokeStartPos;
@property (nonatomic, assign)  CGFloat  strokeEndPos;
@property (nonatomic, assign)  CGFloat miterLimitVal;
@property (nonatomic, assign)  CAShapeLayerLineCap lineCapVal;
@property (nonatomic, assign)  CAShapeLayerLineJoin lineJoinVal;
/**
 @brief It initializes the shape layer object with the given type
 
 @discussion This method takes the unique id as input or creating the shapes, and the shape type is defined in the type provided.
 @param  shapeId Unique name to identify the shape layer
 @param  type kind of shape to draw on layer
 
 @return instancetype create an instance object.
 */
-(instancetype)initWithShapeId:(NSString*)shapeId withShapeType:(KonyShapeLayerType)type andModel:(NSDictionary*)shapeModel;
/**
 @brief Main function to create the shape on the shape layer.
 @discussion Method takes all the property values defined on the instance and create the shape.
 Based on the type of shape provided for this instance the drawing method will get called from here.
 */
-(void)drawShapeLayer;
@end
#endif /* KonyShapeLayer_h */
