#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIKey_symbols(JSContext*);
@protocol UIKeyInstanceExports<JSExport, NSCopyingInstanceExports_, NSCodingInstanceExports_>
@property (readonly,nonatomic) NSString * charactersIgnoringModifiers;
@property (readonly,nonatomic) UIKeyModifierFlags modifierFlags;
@property (readonly,nonatomic) NSString * characters;
@property (readonly,nonatomic) UIKeyboardHIDUsage keyCode;
@end
@protocol UIKeyClassExports<JSExport, NSCopyingClassExports_, NSCodingClassExports_>
@end
#pragma clang diagnostic pop