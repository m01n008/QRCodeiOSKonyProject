 //www.sugartin.info

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/EAGL.h>
#import <OpenGLES/EAGLDrawable.h>
#import <OpenGLES/ES1/gl.h>
#import <OpenGLES/ES1/glext.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

#import "HMGLTransition.h"

@protocol HMGLTransitionViewDelegate;

// This class wraps the CAEAGLLayer from CoreAnimation into a convenient UIView subclass.
// The view content is basically an EAGL surface you render your OpenGL scene into.
// Note that setting the view non-opaque will only work if the EAGL surface has an alpha channel.
@interface HMGLTransitionView : UIView {    

    EAGLContext *context;
	
    // The pixel dimensions of the CAEAGLLayer
    GLint backingWidth;
    GLint backingHeight;
	
    // The OpenGL ES names for the framebuffer and renderbuffer used to render to this view
    GLuint defaultFramebuffer, colorRenderbuffer;
	GLuint depthRenderbuffer;

	//
    BOOL animating;
    BOOL displayLinkSupported;
    NSInteger animationFrameInterval;
    // Use of the CADisplayLink class is the preferred method for controlling your animation timing.
    // CADisplayLink will link to the main display and fire every vsync when added to a given run-loop.
    // The NSTimer class is used only as fallback when running on a pre 3.1 device where CADisplayLink
    // isn't available.
    id displayLink;
    NSTimer *animationTimer;
	
	// transition
	HMGLTransition *transition;
	
    float transitionDuration;
    
	// textures
	GLuint beginTexture;
	GLuint endTexture;
	
	GLfloat textureWidthNormalized;
	GLfloat textureHeightNormalized;
	
	// frame times
	NSTimeInterval lastTime, thisTime, calcTime;
	
	// frames frame
	int framesCount;
}

@property (nonatomic, readonly) GLfloat textureWidthNormalized;
@property (nonatomic, readonly) GLfloat textureHeightNormalized;

@property (readonly, nonatomic, getter=isAnimating) BOOL animating;
@property (nonatomic) NSInteger animationFrameInterval;
@property (nonatomic, retain) HMGLTransition *transition;
@property (nonatomic, weak) id <HMGLTransitionViewDelegate> delegate;
@property (nonatomic, weak) id <HMGLTransitionViewDelegate> alternateDelegate;

- (void)startAnimation :(float) duration;
- (void)stopAnimation;
- (void)reset;
-(void) setProperTransition:(HMGLTransition*) trans;
- (UIImage*)createBeginTextureWithView:(UIView*)view;
- (void)createEndTextureWithView:(UIView*)view;

@end


@protocol HMGLTransitionViewDelegate <NSObject>

- (void)transitionViewDidFinishTransition:(HMGLTransitionView*)transitionView;
// added by prabhakar to get the start message 
- (void)transitionViewDidStartTransition:(HMGLTransitionView*)transitionView;

@end

