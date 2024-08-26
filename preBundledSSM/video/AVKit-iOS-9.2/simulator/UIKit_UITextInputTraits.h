#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITextInputTraits_symbols(JSContext*);
@protocol UITextInputTraitsInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (getter=isSecureTextEntry,nonatomic) BOOL secureTextEntry;
@property (nonatomic) UIReturnKeyType returnKeyType;
@property (nonatomic) UIKeyboardType keyboardType;
@property (nonatomic) UITextSpellCheckingType spellCheckingType;
@property (nonatomic) BOOL enablesReturnKeyAutomatically;
@property (nonatomic) UITextAutocorrectionType autocorrectionType;
@property (nonatomic) UITextAutocapitalizationType autocapitalizationType;
@property (nonatomic) UIKeyboardAppearance keyboardAppearance;
@end
@protocol UITextInputTraitsClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop