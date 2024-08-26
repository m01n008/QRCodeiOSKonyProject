#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AudioToolbox_AudioFile_symbols(JSContext*);
@interface JSValue (AudioToolbox_AudioFile)
+(JSValue*) valueWithAudioFilePacketTableInfo: (AudioFilePacketTableInfo) s inContext: (JSContext*) context;
-(AudioFilePacketTableInfo) toAudioFilePacketTableInfo;
+(JSValue*) valueWithAudioFramePacketTranslation: (AudioFramePacketTranslation) s inContext: (JSContext*) context;
-(AudioFramePacketTranslation) toAudioFramePacketTranslation;
+(JSValue*) valueWithAudioFile_SMPTE_Time: (AudioFile_SMPTE_Time) s inContext: (JSContext*) context;
-(AudioFile_SMPTE_Time) toAudioFile_SMPTE_Time;
+(JSValue*) valueWithAudioBytePacketTranslation: (AudioBytePacketTranslation) s inContext: (JSContext*) context;
-(AudioBytePacketTranslation) toAudioBytePacketTranslation;
+(JSValue*) valueWithAudioFileTypeAndFormatID: (AudioFileTypeAndFormatID) s inContext: (JSContext*) context;
-(AudioFileTypeAndFormatID) toAudioFileTypeAndFormatID;
@end
#pragma clang diagnostic pop