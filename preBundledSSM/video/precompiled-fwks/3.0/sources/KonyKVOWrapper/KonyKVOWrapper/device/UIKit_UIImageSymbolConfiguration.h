#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIImageSymbolConfiguration_symbols(JSContext*);
@protocol UIImageSymbolConfigurationInstanceExports<JSExport>
-(BOOL) isEqualToConfiguration: (UIImageSymbolConfiguration *) otherConfiguration ;
-(id) configurationWithoutScale;
-(id) configurationWithoutTextStyle;
-(id) configurationWithoutWeight;
-(id) configurationWithoutPointSizeAndWeight;
@end
@protocol UIImageSymbolConfigurationClassExports<JSExport>
+(id) configurationWithScale: (UIImageSymbolScale) scale ;
+(id) configurationWithFont: (UIFont *) font ;
+(id) configurationWithWeight: (UIImageSymbolWeight) weight ;
+(UIImageSymbolConfiguration *) unspecifiedConfiguration;
+(id) configurationWithPointSize: (CGFloat) pointSize weight: (UIImageSymbolWeight) weight scale: (UIImageSymbolScale) scale ;
+(id) configurationWithPointSize: (CGFloat) pointSize weight: (UIImageSymbolWeight) weight ;
+(id) configurationWithTextStyle: (UIFontTextStyle) textStyle ;
+(id) configurationWithPointSize: (CGFloat) pointSize ;
+(id) configurationWithFont: (UIFont *) font scale: (UIImageSymbolScale) scale ;
+(id) configurationWithTextStyle: (UIFontTextStyle) textStyle scale: (UIImageSymbolScale) scale ;
@end
#pragma clang diagnostic pop