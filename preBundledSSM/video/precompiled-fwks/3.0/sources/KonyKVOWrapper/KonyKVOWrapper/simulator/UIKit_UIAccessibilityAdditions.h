#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIAccessibilityAdditions_symbols(JSContext*);
@protocol UIColorUIAccessibilityCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) NSString * accessibilityName;
@end
@protocol UIColorUIAccessibilityCategoryClassExports<JSExport>
@end
@protocol UIViewUIAccessibilityInvertColorsCategoryInstanceExports<JSExport>
@property (nonatomic) BOOL accessibilityIgnoresInvertColors;
@end
@protocol UIViewUIAccessibilityInvertColorsCategoryClassExports<JSExport>
@end
@protocol UIPickerViewAccessibilityDelegateInstanceExports_<JSExport, UIPickerViewDelegateInstanceExports_>
-(NSString *) pickerView: (UIPickerView *) pickerView accessibilityHintForComponent: (NSInteger) component ;
-(NSAttributedString *) pickerView: (UIPickerView *) pickerView accessibilityAttributedLabelForComponent: (NSInteger) component ;
-(NSArray *) pickerView: (UIPickerView *) pickerView accessibilityAttributedUserInputLabelsForComponent: (NSInteger) component ;
-(NSArray *) pickerView: (UIPickerView *) pickerView accessibilityUserInputLabelsForComponent: (NSInteger) component ;
-(NSString *) pickerView: (UIPickerView *) pickerView accessibilityLabelForComponent: (NSInteger) component ;
-(NSAttributedString *) pickerView: (UIPickerView *) pickerView accessibilityAttributedHintForComponent: (NSInteger) component ;
@end
@protocol UIPickerViewAccessibilityDelegateClassExports_<JSExport, UIPickerViewDelegateClassExports_>
@end
@protocol UIScrollViewAccessibilityDelegateInstanceExports_<JSExport, UIScrollViewDelegateInstanceExports_>
-(NSAttributedString *) accessibilityAttributedScrollStatusForScrollView: (UIScrollView *) scrollView ;
-(NSString *) accessibilityScrollStatusForScrollView: (UIScrollView *) scrollView ;
@end
@protocol UIScrollViewAccessibilityDelegateClassExports_<JSExport, UIScrollViewDelegateClassExports_>
@end
#pragma clang diagnostic pop