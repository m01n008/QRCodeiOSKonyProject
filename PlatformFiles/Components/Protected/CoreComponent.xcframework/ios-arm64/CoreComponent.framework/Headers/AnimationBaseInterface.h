//
//  AnimationBaseInterface.h
//  VM
//
//  Created by Prabhakar K on 15/07/14.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//#import "Widget.h"

/*
 *** BugFix#FW4162, New propert added BACKGROUND_COLOR_FROM_VIEW_STR
 */


#define STEP_STR @"step"
#define LEFT_STR @"left"
#define RIGHT_STR @"right"
#define TOP_STR @"top"
#define CENTERX_STR @"centerX"
#define CENTERY_STR @"centerY"
#define MINWIDTH_STR @"minWidth"
#define MAXWIDTH_STR @"maxWidth"
#define MINHEIGHT_STR @"minHeight"
#define MAXHEIGHT_STR @"maxHeight"
#define BOTTOM_STR @"bottom"
#define WIDTH_STR @"width"
#define HEIGHT_STR @"height"
#define ANCHOR_POINT_STR @"anchorPoint"
#define FRAME_STR @"frame"
#define TRANSFORM_2D_STR @"transformDataModel"
#define TRANSFORM_2D_STR_EXT_NAME @"transform"
#define OPACITY_STR @"opacity"
#define BORDER_COLOR_STR @"borderColor"
#define BACKGROUND_COLOR_STR @"backgroundColor"
#define BACKGROUND_COLOR_FROM_VIEW_STR @"backgroundColorFromView"
#define SHADOW_COLOR_STR @"shadowColor"
#define BORDER_WIDTH_STR @"borderWidth"
#define CORNER_RADIUS_STR @"cornerRadius"
#define SHADOW_OPACITY_STR @"shadowOpacity"
#define SHADOW_RADIUS_STR @"shadowRadius"
#define SHADOW_OFFSET_STR @"shadowOffset"
#define Z_INDEX_STR @"zIndex"
#define GRADIENT_COLOR_STR @"colors"
#define GRADIENT_COLOR_STOPS_STR @"colorStops"
#define GRADIENT_LOCATIONS_STR @"locations"
#define GRADIENT_STARTPOINT_STR @"startPoint"
#define GRADIENT_ENDPOINT_STR @"endPoint"
#define GRADIENT_ANGLE_STR @"angle"

#define ANIMATION_CANCELLED @"animationCancelled"

#define ANIMATION_KIND_IMPLICIT @"animationKindImplicit"
#define ANIMATION_KIND_EXPLICIT @"animationKindExplicit"

#define ROTATE3D_STR @"rotate3D"
#define TRANSLATE3D_STR @"translate3D"
#define SCALE3D_STR @"scale3D"
#define PERSPECTIVE_STR @"perspective3D"
#define ROTATE_STR @"rotate"
#define TRANSLATE_STR @"translate"
#define SCALE_STR @"scale"
#define NO_TRANSFORM_STR @"noTransform"

#define ONE_STR @"1"
#define ZERO_STR @"0"

#define SKIN_PROPERTY_STR @"skinProperty"

#define TIMING_FUNC_STR @"timingFunction"
#define INITIAL_LAYOUT_VALUES @"initialLayoutValues"
#define FINAL_LAYOUT_VALUES @"finalLayoutValues"
#define INITIAL_SKIN_VALUES @"initialSkinValues"
#define FINAL_SKIN_VALUES @"finalSkinValues"

typedef enum
{
    LEFT_TYPE = 1<<0,
    RIGHT_TYPE = 1<<1,
    TOP_TYPE = 1<<2,
    BOTTOM_TYPE = 1<<3,
    WIDTH_TYPE = 1<<4,
    HEIGHT_TYPE = 1<<5,
    ANCHOR_POINT_TYPE = 1<<6,
    FRAME_TYPE = 1<<7,
    TRANSFORM_2D_TYPE = 1<<8,
    OPACITY_TYPE = 1<<9,
    BORDER_COLOR_TYPE = 1<<10,
    BACKGROUND_COLOR_TYPE = 1<<11,
    SHADOW_COLOR_TYPE = 1<<12,
    BORDER_WIDTH_TYPE = 1<<13,
    CORNER_RADIUS_TYPE = 1<<14,
    SHADOW_OPACITY_TYPE = 1<<15,
    SHADOW_RADIUS_TYPE = 1<<16,
    SHADOW_OFFSET_TYPE = 1<<17,
    Z_INDEX_TYPE = 1<<18,
    CENTERX_TYPE = 1<<19,
    CENTERY_TYPE = 1<<20,
    MINWIDTH_TYPE = 1<<21,
    MAXWIDTH_TYPE = 1<<22,
    MINHEIGHT_TYPE = 1<<23,
    MAXHEIGHT_TYPE = 1<<24,
    GRADIENT_COLOR = 1<<25,
    GRADIENT_COLOR_STOPS = 1<<26,
    GRADIENT_ANGLE = 1<<27
    
}AnimationEnums;

extern const int SCALE;
extern const int DELTA;

typedef enum
{
    ANIMATION_STATE_PLAYING = 1<<0,
    ANIMATION_STATE_PAUSED = 1<<1,
    ANIMATION_STATE_STOPED = 1<<2,
    ANIMATION_STATE_NOT_INITIALIZED = 1<<3,
    ANIMATION_STATE_REMOVED = 1<<4,
    ANIMATION_STATE_COMPLETED = 1<<5,
    ANIMATION_STATE_CANCELLED = 1<<6
}CustomAnimationStates;

typedef enum
{
    MODEL_UPDATE_DONE_NONE = 1,
    MODEL_UPDATE_BEFORE_ANIMATION,
    MODEL_UPDATE_DURING_ANIMATION_START,
    MODEL_UPDATE_DURING_ANIMATION_INFLIGHT,
    MODEL_UPDATE_AFTER_ANIMATION_DONE
}ModelUpdateProgressForAnimations;

typedef enum
{
    TRANSFORM_UPDATE_DONE_NONE = 1,
    TRANSFORM_DECODED_INTO_MATRIX
}TransformUpdateProgress;

#define EASE_IN_PX1 0.42
#define EASE_IN_PY1 0.0
#define EASE_IN_PX2 1.0
#define EASE_IN_PY2 1.0

#define EASE_OUT_PX1 0.0
#define EASE_OUT_PY1 0.0
#define EASE_OUT_PX2 0.58
#define EASE_OUT_PY2 1.0

#define EASE_IN_OUT_PX1 0.42
#define EASE_IN_OUT_PY1 0.0
#define EASE_IN_OUT_PX2 0.58
#define EASE_IN_OUT_PY2 1.0

#define EASE_PX1 0.25
#define EASE_PY1 0.1
#define EASE_PX2 0.25
#define EASE_PY2 1.0

#define LINEAR_PX1 0.0
#define LINEAR_PY1 0.0
#define LINEAR_PX2 1.0
#define LINEAR_PY2 1.0

typedef enum
{
    ANIMATION_TYPE_KEYFRAME_FRAME = 1,
    ANIMATION_TYPE_KEYFRAME_ALPHA,
}AnimationTypes;

@class Widget;
@class BaseAnimation;

@protocol AnimationCallBackInterface <NSObject>
//@property(nonatomic, retain) id<AnimationCallBackInterface> delegate;
@optional
-(void) animationDidStart:(Widget*) widget forAnimation:(NSString*) animationType;
-(void) animationDidEnd:(BaseAnimation*) animation forAnimationType:(NSString*) animationType andAnimationState:(CustomAnimationStates) animationState;
-(void) forceCloseAnimationForWidget:(Widget*) widget_;
//-(void) removeAnimatorFromList:(BaseAnimation*) animator;
@end

@protocol AnimationBaseInterface <NSObject>
-(void) playAnimation;
@optional
-(void) cancelAnimation;
@end

@protocol AnimationAndWidgetContract <NSObject>
@optional
-(NSArray*) childWidgetList;
-(UIView*) getHostViewForAnimation:(NSString*) animationType_;
@end

