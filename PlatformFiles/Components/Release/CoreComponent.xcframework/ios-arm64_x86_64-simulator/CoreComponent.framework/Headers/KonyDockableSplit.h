//
//  KonyDockableSplit.h
//  VM
//
//  Created by Prabhakar K on 01/07/13.
//
//
enum
{
    PRESENT_VIEW_HEADER_DOCKABLE_HORIZONTAL_SPLIT_OUT = 41,
    PRESENT_VIEW_FOOTER_DOCKABLE_HORIZONTAL_SPLIT_OUT,
    NEXT_VIEW_HEADER_DOCKABLE_HORIZONTAL_SPLIT_IN,
    NEXT_VIEW_FOOTER_DOCKABLE_HORIZONTAL_SPLIT_IN,
    PRESENT_VIEW_HEADER_FOOTER_DOCKABLE_HORIZONTAL_SPLIT_OUT,
    NEXT_VIEW_HEADER_FOOTER_DOCKABLE_HORIZONTAL_SPLIT_IN,
    
    //    NEXT_VIEW_ONE_HORIZONTAL_SPLIT_OUT,
    //    NEXT_VIEW_ONE_HORIZONTAL_SPLIT_IN,
    //    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_LEFT,
    //    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_RIGHT,
    //    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_TOP,
    //    PRESENT_VIEW_NO_SPLIT_MOVE_OUT_BOTTOM,
    //    NEXT_VIEW_NO_SPLIT_MOVE_IN_LEFT,
    //    NEXT_VIEW_NO_SPLIT_MOVE_IN_RIGHT,
    //    NEXT_VIEW_NO_SPLIT_MOVE_IN_TOP,
    //    NEXT_VIEW_NO_SPLIT_MOVE_IN_BOTTOM,
};
#import "KonySplitHorizontal.h"
#import "KonyCustomAnimator.h"

@class KonySplitHorizontal;

@interface KonyDockableSplit : KonyCustomAnimator<KonyCustomAnimationDelegate>
{
    UIImageView *toImageView;
    UIImageView *fromImageView;
    
    UIImageView *headerView;
    UIImageView *footerView;
    UIImageView *contentView;
    
    UIView *containerView;
    int animationType;
    NSArray *dockableRects;
    KonySplitHorizontal *horizontalSplit;
    int dockableAnimationType;
}
-(id) initWithToView:(UIImageView*) toView FromView:(UIImageView*) fromView containerView:(UIView*) container transitionDuration:(float) duration equalSpeed:(BOOL) equalSpeed transitionCurve:(int) curve :(NSArray*) dRects;
-(void) splitAtPoint :(CGPoint) splitPoint :(CGPoint) mcontentOffset :(int) animType;
-(void) arrangeViewsToFormat :(int) msplitType :(CGPoint) splitPoint equalSpeed:(BOOL) equalSpeed;
-(void) initialize :(CGPoint) splitPoint :(CGPoint) mcontentOffset :(int) animType;
-(AnimationStates) presentState;
@end