#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIControl_symbols(JSContext*);
@protocol UIControlAnonCategoryInstanceExports<JSExport, UIContextMenuInteractionDelegateInstanceExports_>
-(UITargetedPreview *) contextMenuInteraction: (UIContextMenuInteraction *) interaction previewForHighlightingMenuWithConfiguration: (UIContextMenuConfiguration *) configuration ;
-(UIContextMenuConfiguration *) contextMenuInteraction: (UIContextMenuInteraction *) interaction configurationForMenuAtLocation: (CGPoint) location ;
-(void) contextMenuInteraction: (UIContextMenuInteraction *) interaction willEndForConfiguration: (UIContextMenuConfiguration *) configuration animator: (id) animator ;
-(void) contextMenuInteraction: (UIContextMenuInteraction *) interaction willDisplayMenuForConfiguration: (UIContextMenuConfiguration *) configuration animator: (id) animator ;
-(UITargetedPreview *) contextMenuInteraction: (UIContextMenuInteraction *) interaction previewForDismissingMenuWithConfiguration: (UIContextMenuConfiguration *) configuration ;
@end
@protocol UIControlAnonCategoryClassExports<JSExport, UIContextMenuInteractionDelegateClassExports_>
@end
@protocol UIControlInstanceExports<JSExport>
@property (getter=isTracking,readonly,nonatomic) BOOL tracking;
@property (nonatomic) UIControlContentVerticalAlignment contentVerticalAlignment;
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (readonly,nonatomic) UIControlContentHorizontalAlignment effectiveContentHorizontalAlignment;
@property (getter=isSelected,nonatomic) BOOL selected;
@property (nonatomic) UIControlContentHorizontalAlignment contentHorizontalAlignment;
@property (getter=isHighlighted,nonatomic) BOOL highlighted;
@property (readonly,nonatomic) UIControlState state;
@property (assign,readwrite,nonatomic) BOOL showsMenuAsPrimaryAction;
@property (getter=isTouchInside,readonly,nonatomic) BOOL touchInside;
@property (getter=isContextMenuInteractionEnabled,assign,readwrite,nonatomic) BOOL contextMenuInteractionEnabled;
@property (readonly,nonatomic) UIControlEvents allControlEvents;
@property (readonly,nonatomic,strong) UIContextMenuInteraction * contextMenuInteraction;
@property (readonly,nonatomic) NSSet * allTargets;
-(CGPoint) menuAttachmentPointForConfiguration: (UIContextMenuConfiguration *) configuration ;
JSExportAs(initWithFramePrimaryAction,
-(id) jsinitWithFrame: (CGRect) frame primaryAction: (UIAction *) primaryAction );
-(BOOL) continueTrackingWithTouch: (UITouch *) touch withEvent: (UIEvent *) event ;
JSExportAs(addTargetActionForControlEvents,
-(void) jsaddTarget: (id) target action: (NSString *) action forControlEvents: (UIControlEvents) controlEvents );
-(void) cancelTrackingWithEvent: (UIEvent *) event ;
JSExportAs(enumerateEventHandlers,
-(void) jsenumerateEventHandlers: (JSValue *) iterator );
-(void) removeActionForIdentifier: (UIActionIdentifier) actionIdentifier forControlEvents: (UIControlEvents) controlEvents ;
-(void) endTrackingWithTouch: (UITouch *) touch withEvent: (UIEvent *) event ;
-(BOOL) beginTrackingWithTouch: (UITouch *) touch withEvent: (UIEvent *) event ;
-(NSArray *) actionsForTarget: (id) target forControlEvent: (UIControlEvents) controlEvent ;
JSExportAs(initWithFrame,
-(id) jsinitWithFrame: (CGRect) frame );
-(void) addAction: (UIAction *) action forControlEvents: (UIControlEvents) controlEvents ;
JSExportAs(sendActionToForEvent,
-(void) jssendAction: (NSString *) action to: (id) target forEvent: (UIEvent *) event );
-(void) sendAction: (UIAction *) action ;
JSExportAs(initWithCoder,
-(id) jsinitWithCoder: (NSCoder *) coder );
-(void) removeAction: (UIAction *) action forControlEvents: (UIControlEvents) controlEvents ;
JSExportAs(removeTargetActionForControlEvents,
-(void) jsremoveTarget: (id) target action: (NSString *) action forControlEvents: (UIControlEvents) controlEvents );
-(void) sendActionsForControlEvents: (UIControlEvents) controlEvents ;
@end
@protocol UIControlClassExports<JSExport>
@end
#pragma clang diagnostic pop