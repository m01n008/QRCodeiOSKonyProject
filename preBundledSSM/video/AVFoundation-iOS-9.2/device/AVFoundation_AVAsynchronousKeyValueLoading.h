#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAsynchronousKeyValueLoading_symbols(JSContext*);
@protocol AVAsynchronousKeyValueLoadingInstanceExports_<JSExport>
JSExportAs(loadValuesAsynchronouslyForKeysCompletionHandler,
-(void) jsloadValuesAsynchronouslyForKeys: (NSArray *) keys completionHandler: (JSValue *) handler );
JSExportAs(statusOfValueForKeyError,
-(AVKeyValueStatus) jsstatusOfValueForKey: (NSString *) key error: (JSValue *) outError );
@end
@protocol AVAsynchronousKeyValueLoadingClassExports_<JSExport>
@end
#pragma clang diagnostic pop