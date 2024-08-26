#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIFocusSystem_symbols(JSContext*);
@protocol UIFocusSystemInstanceExports<JSExport>
@property (readonly,nonatomic,weak) id focusedItem;
-(void) updateFocusIfNeeded;
-(void) requestFocusUpdateToEnvironment: (id) environment ;
@end
@protocol UIFocusSystemClassExports<JSExport>
+(UIFocusSystem *) focusSystemForEnvironment: (id) environment ;
+(BOOL) environment: (id) environment containsEnvironment: (id) otherEnvironment ;
@end
#pragma clang diagnostic pop