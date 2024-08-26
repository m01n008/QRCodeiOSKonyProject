#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_CoreMIDI_MIDIServices_symbols(JSContext*);
@interface JSValue (CoreMIDI_MIDIServices)
+(JSValue*) valueWithMIDIObjectAddRemoveNotification: (MIDIObjectAddRemoveNotification) s inContext: (JSContext*) context;
-(MIDIObjectAddRemoveNotification) toMIDIObjectAddRemoveNotification;
+(JSValue*) valueWithMIDIIOErrorNotification: (MIDIIOErrorNotification) s inContext: (JSContext*) context;
-(MIDIIOErrorNotification) toMIDIIOErrorNotification;
+(JSValue*) valueWithMIDINotification: (MIDINotification) s inContext: (JSContext*) context;
-(MIDINotification) toMIDINotification;
@end
#pragma clang diagnostic pop