#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMIDI_MIDIThruConnection_symbols(JSContext*);
@interface JSValue (CoreMIDI_MIDIThruConnection)
+(JSValue*) valueWithMIDITransform: (MIDITransform) s inContext: (JSContext*) context;
-(MIDITransform) toMIDITransform;
+(JSValue*) valueWithMIDIControlTransform: (MIDIControlTransform) s inContext: (JSContext*) context;
-(MIDIControlTransform) toMIDIControlTransform;
+(JSValue*) valueWithMIDIThruConnectionEndpoint: (MIDIThruConnectionEndpoint) s inContext: (JSContext*) context;
-(MIDIThruConnectionEndpoint) toMIDIThruConnectionEndpoint;
@end
#pragma clang diagnostic pop