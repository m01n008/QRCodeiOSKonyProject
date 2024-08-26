#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFontPickerViewController_symbols(JSContext*);
@protocol UIFontPickerViewControllerInstanceExports<JSExport>
@property (nonatomic,strong) UIFontDescriptor * selectedFontDescriptor;
@property (readonly,copy,nonatomic) UIFontPickerViewControllerConfiguration * configuration;
@property (nonatomic,weak) id delegate;
JSExportAs(initWithConfiguration,
-(id) jsinitWithConfiguration: (UIFontPickerViewControllerConfiguration *) configuration );
@end
@protocol UIFontPickerViewControllerClassExports<JSExport>
@end
@protocol UIFontPickerViewControllerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) fontPickerViewControllerDidCancel: (UIFontPickerViewController *) viewController ;
-(void) fontPickerViewControllerDidPickFont: (UIFontPickerViewController *) viewController ;
@end
@protocol UIFontPickerViewControllerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop