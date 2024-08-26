#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPreviewParameters_symbols(JSContext*);
@protocol UIPreviewParametersInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (copy,nonatomic) UIBezierPath * visiblePath;
@property (copy,nonatomic) UIBezierPath * shadowPath;
@property (copy,nonatomic) UIColor * backgroundColor;
JSExportAs(initWithTextLineRects,
-(id) jsinitWithTextLineRects: (NSArray *) textLineRects );
-(id) jsinit;
@end
@protocol UIPreviewParametersClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop