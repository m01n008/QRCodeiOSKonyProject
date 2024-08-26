#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIPencilInteraction_symbols(JSContext*);
@protocol UIPencilInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (getter=isEnabled,nonatomic) BOOL enabled;
@property (nonatomic,weak) id delegate;
@end
@protocol UIPencilInteractionClassExports<JSExport, UIInteractionClassExports_>
+(UIPencilPreferredAction) preferredTapAction;
+(BOOL) prefersPencilOnlyDrawing;
@end
@protocol UIPencilInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) pencilInteractionDidTap: (UIPencilInteraction *) interaction ;
@end
@protocol UIPencilInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop