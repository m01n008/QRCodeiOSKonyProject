#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPointerStyle_symbols(JSContext*);
@protocol UIPointerEffectInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,copy,nonatomic) UITargetedPreview * preview;
@end
@protocol UIPointerEffectClassExports<JSExport, NSCopyingClassExports_>
+(id) effectWithPreview: (UITargetedPreview *) preview ;
@end
@protocol UIPointerHoverEffectInstanceExports<JSExport>
@property (nonatomic) BOOL prefersShadow;
@property (nonatomic) UIPointerEffectTintMode preferredTintMode;
@property (nonatomic) BOOL prefersScaledContent;
@end
@protocol UIPointerHoverEffectClassExports<JSExport>
@end
@protocol UIPointerLiftEffectInstanceExports<JSExport>
@end
@protocol UIPointerLiftEffectClassExports<JSExport>
@end
@protocol UIPointerShapeInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol UIPointerShapeClassExports<JSExport, NSCopyingClassExports_>
+(id) shapeWithRoundedRect: (CGRect) rect cornerRadius: (CGFloat) cornerRadius ;
+(id) shapeWithRoundedRect: (CGRect) rect ;
+(id) beamWithPreferredLength: (CGFloat) length axis: (UIAxis) axis ;
+(id) shapeWithPath: (UIBezierPath *) path ;
@end
@protocol UIPointerHighlightEffectInstanceExports<JSExport>
@end
@protocol UIPointerHighlightEffectClassExports<JSExport>
@end
@protocol UIPointerStyleInstanceExports<JSExport, NSCopyingInstanceExports_>
@end
@protocol UIPointerStyleClassExports<JSExport, NSCopyingClassExports_>
+(id) styleWithShape: (UIPointerShape *) shape constrainedAxes: (UIAxis) axes ;
+(id) hiddenPointerStyle;
+(id) styleWithEffect: (UIPointerEffect *) effect shape: (UIPointerShape *) shape ;
@end
#pragma clang diagnostic pop