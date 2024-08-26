#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UISceneActivationConditions_symbols(JSContext*);
@protocol NSUserActivityUISceneActivationConditionsCategoryInstanceExports<JSExport>
@property (copy,nonatomic) NSString * targetContentIdentifier;
@end
@protocol NSUserActivityUISceneActivationConditionsCategoryClassExports<JSExport>
@end
@protocol UISceneActivationConditionsInstanceExports<JSExport, NSSecureCodingInstanceExports_>
@property (copy,nonatomic) NSPredicate * prefersToActivateForTargetContentIdentifierPredicate;
@property (copy,nonatomic) NSPredicate * canActivateForTargetContentIdentifierPredicate;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) aDecoder );
-(id) jsinit;
@end
@protocol UISceneActivationConditionsClassExports<JSExport, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop