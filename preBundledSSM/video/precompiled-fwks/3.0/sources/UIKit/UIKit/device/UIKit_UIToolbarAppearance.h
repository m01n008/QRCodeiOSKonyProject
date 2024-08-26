#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIToolbarAppearance_symbols(JSContext*);
@protocol UIToolbarAppearanceInstanceExports<JSExport>
@property (readwrite,copy,nonatomic) UIBarButtonItemAppearance * buttonAppearance;
@property (readwrite,copy,nonatomic) UIBarButtonItemAppearance * doneButtonAppearance;
@end
@protocol UIToolbarAppearanceClassExports<JSExport>
@end
#pragma clang diagnostic pop