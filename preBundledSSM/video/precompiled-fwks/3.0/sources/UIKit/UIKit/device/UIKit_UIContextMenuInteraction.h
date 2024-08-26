#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIContextMenuInteraction_symbols(JSContext*);
@protocol UIContextMenuInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (readonly,nonatomic) UIContextMenuInteractionAppearance menuAppearance;
@property (readonly,nonatomic,weak) id delegate;
-(void) dismissMenu;
JSExportAs(updateVisibleMenuWithBlock,
-(void) jsupdateVisibleMenuWithBlock: (JSValue *) block );
-(CGPoint) locationInView: (UIView *) view ;
JSExportAs(initWithDelegate,
-(id) jsinitWithDelegate: (id) delegate );
@end
@protocol UIContextMenuInteractionClassExports<JSExport, UIInteractionClassExports_>
@end
@protocol UIContextMenuInteractionAnimatingInstanceExports_<JSExport, NSObjectInstanceExports_>
@property (readonly,nonatomic) UIViewController * previewViewController;
JSExportAs(addCompletion,
-(void) jsaddCompletion: (JSValue *) completion );
JSExportAs(addAnimations,
-(void) jsaddAnimations: (JSValue *) animations );
@end
@protocol UIContextMenuInteractionAnimatingClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIContextMenuInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(UITargetedPreview *) contextMenuInteraction: (UIContextMenuInteraction *) interaction previewForHighlightingMenuWithConfiguration: (UIContextMenuConfiguration *) configuration ;
-(UIContextMenuConfiguration *) contextMenuInteraction: (UIContextMenuInteraction *) interaction configurationForMenuAtLocation: (CGPoint) location ;
-(void) contextMenuInteraction: (UIContextMenuInteraction *) interaction willDisplayMenuForConfiguration: (UIContextMenuConfiguration *) configuration animator: (id) animator ;
-(UITargetedPreview *) contextMenuInteraction: (UIContextMenuInteraction *) interaction previewForDismissingMenuWithConfiguration: (UIContextMenuConfiguration *) configuration ;
-(void) contextMenuInteraction: (UIContextMenuInteraction *) interaction willEndForConfiguration: (UIContextMenuConfiguration *) configuration animator: (id) animator ;
-(void) contextMenuInteraction: (UIContextMenuInteraction *) interaction willPerformPreviewActionForMenuWithConfiguration: (UIContextMenuConfiguration *) configuration animator: (id) animator ;
@end
@protocol UIContextMenuInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
@protocol UIContextMenuInteractionCommitAnimatingInstanceExports_<JSExport, UIContextMenuInteractionAnimatingInstanceExports_>
@property (nonatomic) UIContextMenuInteractionCommitStyle preferredCommitStyle;
@end
@protocol UIContextMenuInteractionCommitAnimatingClassExports_<JSExport, UIContextMenuInteractionAnimatingClassExports_>
@end
#pragma clang diagnostic pop