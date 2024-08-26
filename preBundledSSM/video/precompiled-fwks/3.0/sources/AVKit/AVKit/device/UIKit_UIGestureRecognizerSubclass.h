#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIGestureRecognizerSubclass_symbols(JSContext*);
@protocol UIGestureRecognizerUIGestureRecognizerProtectedCategoryInstanceExports<JSExport>
@property (readwrite,nonatomic) UIGestureRecognizerState state;
-(void) reset;
-(void) pressesChanged: (NSSet *) presses withEvent: (UIPressesEvent *) event ;
-(void) touchesBegan: (NSSet *) touches withEvent: (UIEvent *) event ;
-(BOOL) canBePreventedByGestureRecognizer: (UIGestureRecognizer *) preventingGestureRecognizer ;
-(void) touchesCancelled: (NSSet *) touches withEvent: (UIEvent *) event ;
-(void) pressesCancelled: (NSSet *) presses withEvent: (UIPressesEvent *) event ;
-(void) touchesEstimatedPropertiesUpdated: (NSSet *) touches ;
-(void) touchesEnded: (NSSet *) touches withEvent: (UIEvent *) event ;
-(void) ignoreTouch: (UITouch *) touch forEvent: (UIEvent *) event ;
-(void) pressesBegan: (NSSet *) presses withEvent: (UIPressesEvent *) event ;
-(BOOL) shouldRequireFailureOfGestureRecognizer: (UIGestureRecognizer *) otherGestureRecognizer ;
-(void) ignorePress: (UIPress *) button forEvent: (UIPressesEvent *) event ;
-(void) pressesEnded: (NSSet *) presses withEvent: (UIPressesEvent *) event ;
-(BOOL) canPreventGestureRecognizer: (UIGestureRecognizer *) preventedGestureRecognizer ;
-(BOOL) shouldBeRequiredToFailByGestureRecognizer: (UIGestureRecognizer *) otherGestureRecognizer ;
-(BOOL) shouldReceiveEvent: (UIEvent *) event ;
-(void) touchesMoved: (NSSet *) touches withEvent: (UIEvent *) event ;
@end
@protocol UIGestureRecognizerUIGestureRecognizerProtectedCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop