#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIColorWell_symbols(JSContext*);
@protocol UIColorWellInstanceExports<JSExport>
@property (nonatomic,strong) UIColor * selectedColor;
@property (nonatomic) BOOL supportsAlpha;
@property (copy,nonatomic) NSString * title;
@end
@protocol UIColorWellClassExports<JSExport>
@end
#pragma clang diagnostic pop