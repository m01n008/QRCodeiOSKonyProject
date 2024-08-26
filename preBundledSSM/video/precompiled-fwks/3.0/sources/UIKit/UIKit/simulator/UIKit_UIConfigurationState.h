#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIConfigurationState_symbols(JSContext*);
@protocol UIConfigurationStateInstanceExports_<JSExport, NSObjectInstanceExports_, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (nonatomic,strong) UITraitCollection * traitCollection;
-(void) setObject: (id) obj forKeyedSubscript: (UIConfigurationStateCustomKey) key ;
JSExportAs(initWithTraitCollection,
-(id) jsinitWithTraitCollection: (UITraitCollection *) traitCollection );
-(id) customStateForKey: (UIConfigurationStateCustomKey) key ;
-(void) setCustomState: (id) customState forKey: (UIConfigurationStateCustomKey) key ;
-(id) objectForKeyedSubscript: (UIConfigurationStateCustomKey) key ;
@end
@protocol UIConfigurationStateClassExports_<JSExport, NSObjectClassExports_, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop