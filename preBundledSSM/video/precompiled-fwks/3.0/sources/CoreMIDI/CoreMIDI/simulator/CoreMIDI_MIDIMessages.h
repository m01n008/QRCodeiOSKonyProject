#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMIDI_MIDIMessages_symbols(JSContext*);
@interface JSValue (CoreMIDI_MIDIMessages)
+(JSValue*) valueWithMIDIMessage_96: (MIDIMessage_96) s inContext: (JSContext*) context;
-(MIDIMessage_96) toMIDIMessage_96;
+(JSValue*) valueWithMIDIMessage_128: (MIDIMessage_128) s inContext: (JSContext*) context;
-(MIDIMessage_128) toMIDIMessage_128;
+(JSValue*) valueWithMIDIMessage_64: (MIDIMessage_64) s inContext: (JSContext*) context;
-(MIDIMessage_64) toMIDIMessage_64;
@end
#pragma clang diagnostic pop