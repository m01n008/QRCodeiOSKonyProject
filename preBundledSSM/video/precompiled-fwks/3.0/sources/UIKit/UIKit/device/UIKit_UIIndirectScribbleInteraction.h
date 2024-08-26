#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIIndirectScribbleInteraction_symbols(JSContext*);
@protocol UIIndirectScribbleInteractionInstanceExports<JSExport, UIInteractionInstanceExports_>
@property (readonly,nonatomic,weak) id delegate;
@property (getter=isHandlingWriting,readonly,nonatomic) BOOL handlingWriting;
JSExportAs(initWithDelegate,
-(id) jsinitWithDelegate: (id) delegate );
@end
@protocol UIIndirectScribbleInteractionClassExports<JSExport, UIInteractionClassExports_>
@end
@protocol UIIndirectScribbleInteractionDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) indirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction willBeginWritingInElement: (UIScribbleElementIdentifier) elementIdentifier ;
-(CGRect) indirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction frameForElement: (UIScribbleElementIdentifier) elementIdentifier ;
-(BOOL) indirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction shouldDelayFocusForElement: (UIScribbleElementIdentifier) elementIdentifier ;
-(BOOL) indirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction isElementFocused: (UIScribbleElementIdentifier) elementIdentifier ;
JSExportAs(indirectScribbleInteractionFocusElementIfNeededReferencePointCompletion,
-(void) jsindirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction focusElementIfNeeded: (UIScribbleElementIdentifier) elementIdentifier referencePoint: (CGPoint) focusReferencePoint completion: (JSValue *) completion );
-(void) indirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction didFinishWritingInElement: (UIScribbleElementIdentifier) elementIdentifier ;
JSExportAs(indirectScribbleInteractionRequestElementsInRectCompletion,
-(void) jsindirectScribbleInteraction: (UIIndirectScribbleInteraction *) interaction requestElementsInRect: (CGRect) rect completion: (JSValue *) completion );
@end
@protocol UIIndirectScribbleInteractionDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop