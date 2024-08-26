#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_SDKCommons_KNYHTTPMessageIntegrityManager_symbols(JSContext*);
@protocol KNYHTTPMessageIntegrityManagerInstanceExports<JSExport>
@end
@protocol KNYHTTPMessageIntegrityManagerClassExports<JSExport>
+(id) sharedInstance;
JSExportAs(setIntegrityCheckError,
+(BOOL) jssetIntegrityCheck: (id) properties error: (JSValue *) error );
+(void) removeIntegrityCheck;
@end
#pragma clang diagnostic pop