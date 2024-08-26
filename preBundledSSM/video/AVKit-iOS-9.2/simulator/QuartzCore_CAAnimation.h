#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_QuartzCore_CAAnimation_symbols(JSContext*);
@protocol CAAnimationInstanceExports<JSExport, NSCodingInstanceExports_, NSCopyingInstanceExports_, CAMediaTimingInstanceExports_, CAActionInstanceExports_>
@property (strong) CAMediaTimingFunction * timingFunction;
@property (strong) id delegate;
@property (getter=isRemovedOnCompletion) BOOL removedOnCompletion;
-(BOOL) shouldArchiveValueForKey: (NSString *) key ;
@end
@protocol CAAnimationClassExports<JSExport, NSCodingClassExports_, NSCopyingClassExports_, CAMediaTimingClassExports_, CAActionClassExports_>
+(id) defaultValueForKey: (NSString *) key ;
+(id) animation;
@end
@protocol CATransitionInstanceExports<JSExport>
@property () float startProgress;
@property (copy) NSString * subtype;
@property (copy) NSString * type;
@property (strong) id filter;
@property () float endProgress;
@end
@protocol CATransitionClassExports<JSExport>
@end
@protocol NSObjectCAAnimationDelegateCategoryInstanceExports<JSExport>
-(void) animationDidStart: (CAAnimation *) anim ;
-(void) animationDidStop: (CAAnimation *) anim finished: (BOOL) flag ;
@end
@protocol NSObjectCAAnimationDelegateCategoryClassExports<JSExport>
@end
@protocol CAKeyframeAnimationInstanceExports<JSExport>
@property (copy) NSArray * timingFunctions;
@property (copy) NSString * rotationMode;
@property (copy) NSArray * continuityValues;
@property (copy) NSString * calculationMode;
@property (copy) NSArray * biasValues;
@property (copy) NSArray * values;
@property (copy) NSArray * tensionValues;
@property () id path;
@property (copy) NSArray * keyTimes;
@end
@protocol CAKeyframeAnimationClassExports<JSExport>
@end
@protocol CASpringAnimationInstanceExports<JSExport>
@property (readonly) CFTimeInterval settlingDuration;
@property () CGFloat initialVelocity;
@property () CGFloat mass;
@property () CGFloat damping;
@property () CGFloat stiffness;
@end
@protocol CASpringAnimationClassExports<JSExport>
@end
@protocol CAPropertyAnimationInstanceExports<JSExport>
@property (strong) CAValueFunction * valueFunction;
@property (getter=isCumulative) BOOL cumulative;
@property (getter=isAdditive) BOOL additive;
@property (copy) NSString * keyPath;
@end
@protocol CAPropertyAnimationClassExports<JSExport>
+(id) animationWithKeyPath: (NSString *) path ;
@end
@protocol CAAnimationGroupInstanceExports<JSExport>
@property (copy) NSArray * animations;
@end
@protocol CAAnimationGroupClassExports<JSExport>
@end
@protocol CABasicAnimationInstanceExports<JSExport>
@property (strong) id byValue;
@property (strong) id fromValue;
@property (strong) id toValue;
@end
@protocol CABasicAnimationClassExports<JSExport>
@end
#pragma clang diagnostic pop