#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UINavigationBarAppearance_symbols(JSContext*);
@protocol UINavigationBarAppearanceInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) UIBarButtonItemAppearance * buttonAppearance;
@property (readwrite,copy,nonatomic) NSDictionary * largeTitleTextAttributes;
@property (readonly,nonatomic,strong) UIImage * backIndicatorImage;
@property (assign,readwrite,nonatomic) UIOffset titlePositionAdjustment;
@property (readonly,nonatomic,strong) UIImage * backIndicatorTransitionMaskImage;
@property (readwrite,copy,nonatomic) NSDictionary * titleTextAttributes;
@property (readwrite,copy,nonatomic) UIBarButtonItemAppearance * doneButtonAppearance;
@property (readwrite,copy,nonatomic) UIBarButtonItemAppearance * backButtonAppearance;
-(void) setBackIndicatorImage: (UIImage *) backIndicatorImage transitionMaskImage: (UIImage *) backIndicatorTransitionMaskImage ;
@end
@protocol UINavigationBarAppearanceClassExports<JSExport>
@end
#pragma clang diagnostic pop