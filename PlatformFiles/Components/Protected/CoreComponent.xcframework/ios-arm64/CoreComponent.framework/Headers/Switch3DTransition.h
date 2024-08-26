 //www.sugartin.info

#import <Foundation/Foundation.h>
#import "HMGLTransition.h"

typedef enum {
	Switch3DTransitionRight,	
	Switch3DTransitionLeft
} Switch3DTransitionType;

@interface Switch3DTransition : HMGLTransition {

	Switch3DTransitionType transitionType;
	GLfloat animationTime;
}

@property (nonatomic, assign) Switch3DTransitionType transitionType;

@end
