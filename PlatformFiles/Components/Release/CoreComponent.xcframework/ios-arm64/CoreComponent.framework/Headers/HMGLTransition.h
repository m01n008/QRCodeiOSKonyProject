 //www.sugartin.info

#import <Foundation/Foundation.h>
#import <OpenGLES/ES1/gl.h>

typedef struct {
	GLfloat x0, y0, x1, y1,	x2, y2,	x3, y3;
} TransitionTexCoords;

@interface HMGLTransition : NSObject {

	TransitionTexCoords basicTexCoords;	
}

@property (nonatomic, assign) TransitionTexCoords basicTexCoords;

// Subclass this class and implement this three methods to create your own transition
- (void)initTransition;
- (void)drawWithBeginTexture:(GLuint)beginTexture endTexture:(GLuint)endTexture;
- (BOOL)calc:(NSTimeInterval)frameTime; // Must return YES when the transition is over

@end