#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMedia_CMFormatDescription_symbols(JSContext*);
@interface JSValue (CoreMedia_CMFormatDescription)
+(JSValue*) valueWithCMVideoDimensions: (CMVideoDimensions) s inContext: (JSContext*) context;
-(CMVideoDimensions) toCMVideoDimensions;
@end
#pragma clang diagnostic pop