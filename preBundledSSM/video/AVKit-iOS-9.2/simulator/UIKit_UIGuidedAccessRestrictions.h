#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIGuidedAccessRestrictions_symbols(JSContext*);
@protocol UIGuidedAccessRestrictionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(NSString *) textForGuidedAccessRestrictionWithIdentifier: (NSString *) restrictionIdentifier ;
-(NSArray *) guidedAccessRestrictionIdentifiers;
-(void) guidedAccessRestrictionWithIdentifier: (NSString *) restrictionIdentifier didChangeState: (UIGuidedAccessRestrictionState) newRestrictionState ;
-(NSString *) detailTextForGuidedAccessRestrictionWithIdentifier: (NSString *) restrictionIdentifier ;
@end
@protocol UIGuidedAccessRestrictionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop