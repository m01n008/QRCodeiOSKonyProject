#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIContentConfiguration_symbols(JSContext*);
@protocol UIContentViewInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (copy,nonatomic) id configuration;
@end
@protocol UIContentViewClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIContentConfigurationInstanceExports_<JSExport, NSObjectInstanceExports_, NSCopyingInstanceExports_>
-(id) updatedConfigurationForState: (id) state ;
-(__kindof UIView *) makeContentView;
@end
@protocol UIContentConfigurationClassExports_<JSExport, NSObjectClassExports_, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop