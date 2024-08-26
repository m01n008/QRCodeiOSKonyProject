 //www.sugartin.info

#import <Foundation/Foundation.h>
#import "HMGLTransition.h"

typedef enum {
	FlipTransitionRight,	
	FlipTransitionLeft
} FlipTransitionType;

@interface FlipTransition : HMGLTransition {

	FlipTransitionType transitionType;
	
	GLfloat animationTime;
}

@property (nonatomic, assign) FlipTransitionType transitionType;

@end
