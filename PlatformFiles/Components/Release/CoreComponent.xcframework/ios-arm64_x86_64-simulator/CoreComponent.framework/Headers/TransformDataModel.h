//
//  TransformDataModel.h
//  VM
//
//  Created by Prabhakar K on 04/08/14.
//
//

#include <Foundation/Foundation.h>
#include "AnimationBaseInterface.h"
@class Widget;

@interface TransformObject : NSObject
{
    NSString *transformType;
    id xValue;
    id yValue;
    id zValue;
    id angle;
}
@property(nonatomic, retain) NSString *transformType;
@property(nonatomic, retain) id xValue;
@property(nonatomic, retain) id yValue;
@property(nonatomic, retain) id zValue;
@property(nonatomic, retain) id angle;

-(BOOL) isValidObject;

@end

@interface TransformDataModel : NSObject <NSCopying>
{
    CGAffineTransform transform2d;
    CATransform3D transform;
    NSMutableArray *transformStack;
    NSMutableArray *transformArray;
//    TransformUpdateProgress _transformProgress;
}
@property(nonatomic, readonly) CATransform3D transform;
@property(nonatomic, readonly) CGAffineTransform transform2d;
@property(nonatomic, readonly) NSMutableArray *transformArray;

-(void) rotateAngle:(NSString*) degAngle onxAxis:(NSString*) xAxis yAxis:(NSString*) yAxis zAxis:(NSString*) zAxis;
-(void) rotate3DAngle:(NSString*) degAngle onxAxis:(NSString*) xAxis yAxis:(NSString*) yAxis zAxis:(NSString*) zAxis;
-(void) rotateAngle:(float) degAngle onXAxis:(float) xAxis YAxis:(float) yAxis ZAxis:(float) zAxis;
-(void) rotateAngle:(float) degAngle onXAxis:(float) xAxis YAxis:(float) yAxis;
-(void) rotateAngle:(float) degAngle;

-(void) translateOnxAxis:(NSString*) xAxis yAxis:(NSString*) yAxis zAxis:(NSString*) zAxis;
-(void) translateOnXAxis:(float) xAxis YAxis:(float) yAxis ZAxis:(float) zAxis;
-(void) translateOnXAxis:(float) xAxis YAxis:(float) yAxis;

-(void) scaleOnxAxis:(NSString*) xAxis yAxis:(NSString*) yAxis zAxis:(NSString*) zAxis;
-(void) scaleOnXAxis:(float) xAxis YAxis:(float) yAxis ZAxis:(float) zAxis;
-(void) scaleOnXAxis:(float) xAxis YAxis:(float) yAxis;

-(void) setPerspectiveMatrix:(NSString*) perspectiveVal;
-(void) setPerspectiveMatrixFromVanishigPoint:(float) perspectiveVal;

-(void) applyTransform:(CATransform3D) otherTransform;

-(void) convertDataToTransformFromReferenceRect:(CGRect) referenceRect_;

-(void) convert3DTransformTo2D;

-(BOOL) isPerspectiveGreaterThanRect:(CGRect) rect;

-(void) clearTransform;
-(BOOL) isValidObject;
@end