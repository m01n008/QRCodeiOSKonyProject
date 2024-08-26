#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIViewConfigurationState_symbols(JSContext*);
@protocol UIViewConfigurationStateInstanceExports<JSExport, UIConfigurationStateInstanceExports_>
@property (getter=isDisabled,nonatomic) BOOL disabled;
@property (getter=isHighlighted,nonatomic) BOOL highlighted;
@property (getter=isSelected,nonatomic) BOOL selected;
@property (getter=isFocused,nonatomic) BOOL focused;
@property (nonatomic,strong) UITraitCollection * traitCollection;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
JSExportAs(initWithTraitCollection,
-(id) jsinitWithTraitCollection: (UITraitCollection *) traitCollection );
@end
@protocol UIViewConfigurationStateClassExports<JSExport, UIConfigurationStateClassExports_>
@end
#pragma clang diagnostic pop