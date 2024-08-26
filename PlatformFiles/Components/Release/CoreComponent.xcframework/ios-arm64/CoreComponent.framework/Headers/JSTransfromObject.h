//
//  JSTransfromObject.h
//  VM
//
//  Created by Prabhakar K on 04/08/14.
//
//

#import "JSWidget.h"
#import "TransformDataModel.h"
@interface JSTransfromObject : JSWidget
-(id) rotateToAngle:(float) angle;
-(id) translate:(NSArray *) arguments;
-(void) scale:(NSArray *) arguments;

-(id) rotate3D:(NSArray *) arguments;
-(id) translate3D:(NSArray *) arguments;
-(void) scale3D:(NSArray *) arguments;
-(void) setPerspective:(NSArray *) arguments;
@end
