#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UITextInteraction_symbols(JSContext*);
@protocol UITextInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (readonly,nonatomic) NSArray * gesturesForFailureRequirements;
@property (nonatomic,weak) id delegate;
@property (nonatomic,weak) UIResponder * textInput;
@property (readonly,nonatomic) UITextInteractionMode textInteractionMode;
@end
@protocol UITextInteractionClassExports<JSExport, UIInteractionClassExports_>
+(id) textInteractionForMode: (UITextInteractionMode) mode ;
@end
@protocol UITextInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(BOOL) interactionShouldBegin: (UITextInteraction *) interaction atPoint: (CGPoint) point ;
-(void) interactionDidEnd: (UITextInteraction *) interaction ;
-(void) interactionWillBegin: (UITextInteraction *) interaction ;
@end
@protocol UITextInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop