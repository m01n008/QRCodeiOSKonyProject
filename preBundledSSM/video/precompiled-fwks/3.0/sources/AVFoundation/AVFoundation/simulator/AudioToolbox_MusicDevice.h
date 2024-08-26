#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_MusicDevice_symbols(JSContext*);
@interface JSValue (AudioToolbox_MusicDevice)
+(JSValue*) valueWithNoteParamsControlValue: (NoteParamsControlValue) s inContext: (JSContext*) context;
-(NoteParamsControlValue) toNoteParamsControlValue;
+(JSValue*) valueWithMusicDeviceStdNoteParams: (MusicDeviceStdNoteParams) s inContext: (JSContext*) context;
-(MusicDeviceStdNoteParams) toMusicDeviceStdNoteParams;
@end
#pragma clang diagnostic pop