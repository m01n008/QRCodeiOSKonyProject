#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIScribbleInteraction_symbols(JSContext*);
@protocol UIScribbleInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (readonly,nonatomic,weak) id delegate;
@property (getter=isHandlingWriting,readonly,nonatomic) BOOL handlingWriting;
JSExportAs(initWithDelegate,
-(id) jsinitWithDelegate: (id) delegate );
@end
@protocol UIScribbleInteractionClassExports<JSExport, UIInteractionClassExports_>
+(BOOL) isPencilInputExpected;
@end
@protocol UIScribbleInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) scribbleInteractionDidFinishWriting: (UIScribbleInteraction *) interaction ;
-(BOOL) scribbleInteractionShouldDelayFocus: (UIScribbleInteraction *) interaction ;
-(BOOL) scribbleInteraction: (UIScribbleInteraction *) interaction shouldBeginAtLocation: (CGPoint) location ;
-(void) scribbleInteractionWillBeginWriting: (UIScribbleInteraction *) interaction ;
@end
@protocol UIScribbleInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop