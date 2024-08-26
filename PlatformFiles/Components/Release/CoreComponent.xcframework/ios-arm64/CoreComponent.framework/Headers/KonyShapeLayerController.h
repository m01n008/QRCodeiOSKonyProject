//
//  KonyShapeLayerManager.h
//  Canvas
//
//  Created by Praveen Kanike on 30/05/19.
//  Copyright © 2019 Kony Labs. All rights reserved.
//

#ifndef KonyShapeLayerManager_h
#define KonyShapeLayerManager_h
#import <QuartzCore/QuartzCore.h>
#import <CoreComponent/LayerLayoutDelegate.h>
#import <UIKit/UIKit.h>
#import "KonyShapeLayer.h"
/*!
 @class KonyShapeLayerController
 
 @brief The KonyShapeLayerController class
 
 @discussion This class is used for storing the multiple shape layers as sublayers.
 @superclass CALayer
 */
@interface KonyShapeLayerController : CALayer
{
    
}
/*! @brief This property is used to store delegate object. By using this delegate the shape value calculations will be done for drawing the shapes.  */
@property (readwrite, weak) id <LayerLayoutDelegate> layerDrawingDelegate;
/*! @brief This property is used to store list of shapes drawn on multiple shape layers where keys are shapeId's.  */
@property (nonatomic,strong) NSMutableDictionary *shapeLayers;
/*! @brief This property is used to store list of shapes raw data updated in the canvasWidget shapeData prop  */
@property (nonatomic,strong) NSMutableArray *shapesData;
/**
@brief Function is used to parse the array of shape configuration data, and create the shapes.
@discussion Will iterate all the shapes and start creating the shape layers.
@param shapesConfigData List of shapes config data.
*/
-(void)parseAndAddShapes:(NSArray*)shapesConfigData;
/**
 @brief Function is used update the shapes rendered based on the shapId values.
 @discussion Only the shape data which are valid and which are not mofified shape type only updated.
 @param eachShapeData is a shapes config data which are need updation.
 */
-(void)updateShape:(NSDictionary*)eachShapeData;
/**
 @brief Function is used remove the shape Layers.
 @discussion Only the shape ids whose layers are created has been removed.
 @param shapesId shapeId to delete.
 */
-(void)removeShape:(NSString*)shapesId;
/**
 @brief Function is used to clear all the shape layers from the main Layer
 */
-(void)clearShapes;
/**
 @brief Function is used to add the shape by parsing the give shape config data
 @discussion shapes will validate and created
 @param eachShapeData a shapes config data.
 */
-(void)parseShapeConfigCreateShapeLayer:(NSDictionary*)eachShapeData;

@end

#endif /* KonyShapeLayerManager_h */
