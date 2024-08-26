#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIGraphicsRendererSubclass_symbols(JSContext*);
@protocol UIGraphicsRendererUIGraphicsRendererProtectedCategoryInstanceExports<JSExport>
JSExportAs(runDrawingActionsCompletionActionsError,
-(BOOL) jsrunDrawingActions: (JSValue *) drawingActions completionActions: (JSValue *) completionActions error: (JSValue *) error );
@end
@protocol UIGraphicsRendererUIGraphicsRendererProtectedCategoryClassExports<JSExport>
+(void) prepareCGContext: (id) context withRendererContext: (UIGraphicsRendererContext *) rendererContext ;
+(id) contextWithFormat: (UIGraphicsRendererFormat *) format ;
+(id) rendererContextClass;
@end
#pragma clang diagnostic pop