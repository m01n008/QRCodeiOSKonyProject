#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPointerRegion_symbols(JSContext*);
@protocol UIPointerRegionInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) id identifier;
@property (readonly,nonatomic) CGRect rect;
@end
@protocol UIPointerRegionClassExports<JSExport, NSCopyingClassExports_>
+(id) regionWithRect: (CGRect) rect identifier: (id) identifier ;
@end
#pragma clang diagnostic pop