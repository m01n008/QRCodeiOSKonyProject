 //www.sugartin.info

#import <Foundation/Foundation.h>
#import "HMGLTransition.h"
#import "HMGLTransitionView.h"

#import "CustomAnimationProtocol.h"

typedef enum {
	HMGLTransitionTypeNone,
	HMGLTransitionTypeViewTransition,
	HMGLTransitionTypeControllerPresentation,
	HMGLTransitionTypeControllerDismission
}
HMGLTransitionType;

//typedef enum 
//{
//    ANIM_STATE_PLAYING = 1,
//    ANIM_STATE_STOPPED,
//    ANIM_STATE_PAUSED
//} AnimationStates;

@interface HMGLTransitionManager : NSObject <HMGLTransitionViewDelegate> {

	HMGLTransitionView *transitionView;
	
    float transitionDuration;
	// UIView transitions
	UIView *containerView;
	
	// UIViewController transitions
	UIViewController *oldController;
	UIViewController *theNewController;
	
	UIImageView *tempOverlayView;
	
	BOOL animating;
	
	HMGLTransitionType transitionType;
    
    AnimationStates presentState;
}
// added here by prabhakar
@property (nonatomic, retain) HMGLTransitionView *transitionView;
@property (nonatomic,readonly) AnimationStates presentState;

+ (HMGLTransitionManager*)sharedTransitionManager;

// Must be set at the beginning
- (void)setTransition:(HMGLTransition*)transition;
-(void) setTransitionDuration:(float) duration;
// UIView transitions
- (void)beginTransition:(UIView*)containerView;
- (void)commitTransition;

// UIViewController transitions
- (void)presentModalViewController:(UIViewController*)modalViewController onViewController:(UIViewController*)viewController;
- (void)dismissModalViewController:(UIViewController*)modalViewController;

@end
