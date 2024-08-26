#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_UIKit_UIScreenshotService_symbols(JSContext*);
@protocol UIWindowSceneUIScreenshotServiceCategoryInstanceExports<JSExport>
@property (readonly,nonatomic) UIScreenshotService * screenshotService;
@end
@protocol UIWindowSceneUIScreenshotServiceCategoryClassExports<JSExport>
@end
@protocol UIScreenshotServiceInstanceExports<JSExport>
@property (nonatomic,weak) id delegate;
@property (readonly,nonatomic,weak) UIWindowScene * windowScene;
@end
@protocol UIScreenshotServiceClassExports<JSExport>
@end
@protocol UIScreenshotServiceDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
JSExportAs(screenshotServiceGeneratePDFRepresentationWithCompletion,
-(void) jsscreenshotService: (UIScreenshotService *) screenshotService generatePDFRepresentationWithCompletion: (JSValue *) completionHandler );
@end
@protocol UIScreenshotServiceDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop