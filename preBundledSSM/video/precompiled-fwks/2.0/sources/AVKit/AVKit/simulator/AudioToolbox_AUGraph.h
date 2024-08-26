#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AUGraph_symbols(JSContext*);
@interface JSValue (AudioToolbox_AUGraph)
+(JSValue*) valueWithAUNodeConnection: (AUNodeConnection) s inContext: (JSContext*) context;
-(AUNodeConnection) toAUNodeConnection;
@end
#pragma clang diagnostic pop