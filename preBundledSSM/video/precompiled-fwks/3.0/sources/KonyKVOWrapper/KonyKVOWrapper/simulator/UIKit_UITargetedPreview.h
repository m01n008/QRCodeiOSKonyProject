#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITargetedPreview_symbols(JSContext*);
@protocol UITargetedPreviewInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) CGSize size;
@property (readonly,nonatomic) __kindof UIPreviewTarget * target;
@property (readonly,copy,nonatomic) __kindof UIPreviewParameters * parameters;
@property (readonly,nonatomic) UIView * view;
JSExportAs(initWithView,
-(id) jsinitWithView: (UIView *) view );
-(__kindof UITargetedPreview *) retargetedPreviewWithTarget: (__kindof UIPreviewTarget *) newTarget ;
JSExportAs(initWithViewParametersTarget,
-(id) jsinitWithView: (UIView *) view parameters: (__kindof UIPreviewParameters *) parameters target: (__kindof UIPreviewTarget *) target );
JSExportAs(initWithViewParameters,
-(id) jsinitWithView: (UIView *) view parameters: (__kindof UIPreviewParameters *) parameters );
@end
@protocol UITargetedPreviewClassExports<JSExport, NSCopyingClassExports_>
@end
@protocol UIPreviewTargetInstanceExports<JSExport, NSCopyingInstanceExports_>
@property (readonly,nonatomic) UIView * container;
@property (readonly,nonatomic) CGPoint center;
@property (readonly,nonatomic) CGAffineTransform transform;
JSExportAs(initWithContainerCenterTransform,
-(id) jsinitWithContainer: (UIView *) container center: (CGPoint) center transform: (CGAffineTransform) transform );
JSExportAs(initWithContainerCenter,
-(id) jsinitWithContainer: (UIView *) container center: (CGPoint) center );
@end
@protocol UIPreviewTargetClassExports<JSExport, NSCopyingClassExports_>
@end
#pragma clang diagnostic pop