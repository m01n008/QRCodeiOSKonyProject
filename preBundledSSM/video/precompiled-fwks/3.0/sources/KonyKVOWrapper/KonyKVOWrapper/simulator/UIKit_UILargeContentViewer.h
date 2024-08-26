#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UILargeContentViewer_symbols(JSContext*);
@protocol UIViewUILargeContentViewerCategoryInstanceExports<JSExport, UILargeContentViewerItemInstanceExports_>
@property (assign,readwrite,nonatomic) BOOL scalesLargeContentImage;
@property (assign,readwrite,nonatomic) UIEdgeInsets largeContentImageInsets;
@property (assign,readwrite,nonatomic) BOOL showsLargeContentViewer;
@property (readwrite,nonatomic,strong) UIImage * largeContentImage;
@property (readwrite,copy,nonatomic) NSString * largeContentTitle;
@end
@protocol UIViewUILargeContentViewerCategoryClassExports<JSExport, UILargeContentViewerItemClassExports_>
@end
@protocol UILargeContentViewerInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (readonly,nonatomic,weak) id delegate;
@property (readonly,nonatomic,strong) UIGestureRecognizer * gestureRecognizerForExclusionRelationship;
JSExportAs(initWithDelegate,
-(id) jsinitWithDelegate: (id) delegate );
@end
@protocol UILargeContentViewerInteractionClassExports<JSExport, UIInteractionClassExports_>
+(BOOL) isEnabled;
@end
@protocol UILargeContentViewerInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) largeContentViewerInteraction: (UILargeContentViewerInteraction *) interaction didEndOnItem: (id) item atPoint: (CGPoint) point ;
-(id) largeContentViewerInteraction: (UILargeContentViewerInteraction *) interaction itemAtPoint: (CGPoint) point ;
-(UIViewController *) viewControllerForLargeContentViewerInteraction: (UILargeContentViewerInteraction *) interaction ;
@end
@protocol UILargeContentViewerInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UILargeContentViewerItemInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,assign,nonatomic) BOOL scalesLargeContentImage;
@property (readonly,assign,nonatomic) UIEdgeInsets largeContentImageInsets;
@property (readonly,assign,nonatomic) BOOL showsLargeContentViewer;
@property (readonly,nonatomic,strong) UIImage * largeContentImage;
@property (readonly,copy,nonatomic) NSString * largeContentTitle;
@end
@protocol UILargeContentViewerItemClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop