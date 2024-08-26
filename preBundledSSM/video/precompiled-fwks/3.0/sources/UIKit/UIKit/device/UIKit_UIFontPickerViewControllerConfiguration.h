#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFontPickerViewControllerConfiguration_symbols(JSContext*);
@protocol UIFontPickerViewControllerConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (nonatomic) BOOL displayUsingSystemFont;
@property (nonatomic) BOOL includeFaces;
@property (nonatomic) UIFontDescriptorSymbolicTraits filteredTraits;
@property (copy,nonatomic) NSPredicate * filteredLanguagesPredicate;
@end
@protocol UIFontPickerViewControllerConfigurationClassExports<JSExport, NSCopyingClassExports_>
+(NSPredicate *) filterPredicateForFilteredLanguages: (NSArray *) filteredLanguages ;
@end
#pragma clang diagnostic pop