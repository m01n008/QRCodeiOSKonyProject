#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIMenuSystem_symbols(JSContext*);
@protocol UIMenuSystemInstanceExports<JSExport>
-(void) setNeedsRevalidate;
-(void) setNeedsRebuild;
@end
@protocol UIMenuSystemClassExports<JSExport>
+(UIMenuSystem *) contextSystem;
+(UIMenuSystem *) mainSystem;
@end
#pragma clang diagnostic pop