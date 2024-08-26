#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIColorPickerViewController_symbols(JSContext*);
@protocol UIColorPickerViewControllerInstanceExports<JSExport>
@property (nonatomic,strong) UIColor * selectedColor;
@property (nonatomic,weak) id delegate;
@property (nonatomic) BOOL supportsAlpha;
-(id) jsinit;
@end
@protocol UIColorPickerViewControllerClassExports<JSExport>
@end
@protocol UIColorPickerViewControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) colorPickerViewControllerDidSelectColor: (UIColorPickerViewController *) viewController ;
-(void) colorPickerViewControllerDidFinish: (UIColorPickerViewController *) viewController ;
@end
@protocol UIColorPickerViewControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop