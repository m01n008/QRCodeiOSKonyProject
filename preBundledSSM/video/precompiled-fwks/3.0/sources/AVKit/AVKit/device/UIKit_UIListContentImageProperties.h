#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIListContentImageProperties_symbols(JSContext*);
@protocol UIListContentImagePropertiesInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic) CGSize reservedLayoutSize;
@property (nonatomic) BOOL accessibilityIgnoresInvertColors;
@property (nonatomic,strong) UIColor * tintColor;
@property (copy,nonatomic) UIImageSymbolConfiguration * preferredSymbolConfiguration;
@property (getter=getJsTintColorTransformer,setter=setJsTintColorTransformer:) JSValue* jstintColorTransformer;
@property (nonatomic) CGSize maximumSize;
@property (nonatomic) CGFloat cornerRadius;
-(UIColor *) resolvedTintColorForTintColor: (UIColor *) tintColor ;
@end
@protocol UIListContentImagePropertiesClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop