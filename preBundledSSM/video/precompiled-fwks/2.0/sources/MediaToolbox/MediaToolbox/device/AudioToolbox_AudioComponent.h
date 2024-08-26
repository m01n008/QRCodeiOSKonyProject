#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AudioComponent_symbols(JSContext*);
@interface JSValue (AudioToolbox_AudioComponent)
+(JSValue*) valueWithAudioComponentDescription: (AudioComponentDescription) s inContext: (JSContext*) context;
-(AudioComponentDescription) toAudioComponentDescription;
@end
#pragma clang diagnostic pop