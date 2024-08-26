#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITextFormattingCoordinator_symbols(JSContext*);
@protocol UITextFormattingCoordinatorInstanceExports<JSExport, UIFontPickerViewControllerDelegateInstanceExports_>
@property (nonatomic,weak) id delegate;
JSExportAs(initWithWindowScene,
-(id) jsinitWithWindowScene: (UIWindowScene *) windowScene );
-(void) setSelectedAttributes: (NSDictionary *) attributes isMultiple: (BOOL) flag ;
@end
@protocol UITextFormattingCoordinatorClassExports<JSExport, UIFontPickerViewControllerDelegateClassExports_>
+(BOOL) isFontPanelVisible;
+(void) toggleFontPanel: (id) sender ;
+(id) textFormattingCoordinatorForWindowScene: (UIWindowScene *) windowScene ;
@end
@protocol UITextFormattingCoordinatorDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
JSExportAs(updateTextAttributesWithConversionHandler,
-(void) jsupdateTextAttributesWithConversionHandler: (JSValue *) conversionHandler );
@end
@protocol UITextFormattingCoordinatorDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop