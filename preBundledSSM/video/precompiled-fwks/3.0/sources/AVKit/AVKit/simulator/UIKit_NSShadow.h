#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_NSShadow_symbols(JSContext*);
@protocol NSShadowInstanceExports<JSExport, NSCopyingInstanceExports_, NSSecureCodingInstanceExports_>
@property (assign,nonatomic) CGSize shadowOffset;
@property (nonatomic,strong) id shadowColor;
@property (assign,nonatomic) CGFloat shadowBlurRadius;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(id) jsinit;
@end
@protocol NSShadowClassExports<JSExport, NSCopyingClassExports_, NSSecureCodingClassExports_>
@end
#pragma clang diagnostic pop