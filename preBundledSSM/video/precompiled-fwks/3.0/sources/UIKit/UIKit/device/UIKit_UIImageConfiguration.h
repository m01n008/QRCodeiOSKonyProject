#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIImageConfiguration_symbols(JSContext*);
@protocol UIImageConfigurationInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (readonly,nonatomic) UITraitCollection * traitCollection;
-(id) configurationWithTraitCollection: (UITraitCollection *) traitCollection ;
-(id) configurationByApplyingConfiguration: (UIImageConfiguration *) otherConfiguration ;
@end
@protocol UIImageConfigurationClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop