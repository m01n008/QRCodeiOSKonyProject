#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_MusicPlayer_symbols(JSContext*);
@interface JSValue (AudioToolbox_MusicPlayer)
+(JSValue*) valueWithParameterEvent: (ParameterEvent) s inContext: (JSContext*) context;
-(ParameterEvent) toParameterEvent;
+(JSValue*) valueWithMusicTrackLoopInfo: (MusicTrackLoopInfo) s inContext: (JSContext*) context;
-(MusicTrackLoopInfo) toMusicTrackLoopInfo;
+(JSValue*) valueWithMIDINoteMessage: (MIDINoteMessage) s inContext: (JSContext*) context;
-(MIDINoteMessage) toMIDINoteMessage;
+(JSValue*) valueWithExtendedTempoEvent: (ExtendedTempoEvent) s inContext: (JSContext*) context;
-(ExtendedTempoEvent) toExtendedTempoEvent;
+(JSValue*) valueWithMIDIChannelMessage: (MIDIChannelMessage) s inContext: (JSContext*) context;
-(MIDIChannelMessage) toMIDIChannelMessage;
+(JSValue*) valueWithCABarBeatTime: (CABarBeatTime) s inContext: (JSContext*) context;
-(CABarBeatTime) toCABarBeatTime;
@end
#pragma clang diagnostic pop