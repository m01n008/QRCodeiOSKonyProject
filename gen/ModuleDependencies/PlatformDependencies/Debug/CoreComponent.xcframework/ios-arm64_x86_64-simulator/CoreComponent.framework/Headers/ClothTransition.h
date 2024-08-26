 //www.sugartin.info

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import "HMGLTransition.h"

@interface ClothTransition : HMGLTransition {

	CGFloat width;
	CGFloat height;
	
	GLfloat oglWidth;
	GLfloat oglHeight;
	
	float *velocities;
	GLfloat *normals;
	GLfloat *vertices;
	GLfloat *texCoords;
	GLushort *indices;
	GLsizei indicesCount;
	
	GLfloat friction;
	GLfloat velocityStrength;
	
	float remainingCalcTime;
	
	float animationTime;
}

@end
