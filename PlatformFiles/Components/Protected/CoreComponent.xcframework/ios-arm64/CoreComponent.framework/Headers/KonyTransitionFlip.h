//
//  KonyFlip.h
//  VM
//
//  Created by KH1244 on 28/08/13.
//
//

#import "KonyCustomAnimator.h"

@interface KonyTransitionFlip : KonyCustomAnimator {
    UIImageView *toImageView;
    UIImageView *fromImageView;
    UIView *flipContainer;
    UIView *containerView;
    NSString *transitionDirection;
    NSString *transCurve;
}

-(id) initWithToView:(UIImageView*) toView fromView:(UIImageView*) fromView container:(UIView*)container transitionDirection:(NSString*) transDirection transitionDuration:(float) duration transitionCurve:(NSString*) curve;
- (void) initialize;

@end
