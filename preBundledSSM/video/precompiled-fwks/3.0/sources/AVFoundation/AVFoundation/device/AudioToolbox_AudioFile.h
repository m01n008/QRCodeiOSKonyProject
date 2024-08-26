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
+(JSValue*) valueWithAudioPacketRangeByteCountTranslation: (AudioPacketRangeByteCountTranslation) s inContext: (JSContext*) context;
-(AudioPacketRangeByteCountTranslation) toAudioPacketRangeByteCountTranslation;
+(JSValue*) valueWithAudioPacketRollDistanceTranslation: (AudioPacketRollDistanceTranslation) s inContext: (JSContext*) context;
-(AudioPacketRollDistanceTranslation) toAudioPacketRollDistanceTranslation;
+(JSValue*) valueWithAudioFramePacketTranslation: (AudioFramePacketTranslation) s inContext: (JSContext*) context;
-(AudioFramePacketTranslation) toAudioFramePacketTranslation;
+(JSValue*) valueWithAudioFile_SMPTE_Time: (AudioFile_SMPTE_Time) s inContext: (JSContext*) context;
-(AudioFile_SMPTE_Time) toAudioFile_SMPTE_Time;
+(JSValue*) valueWithAudioIndependentPacketTranslation: (AudioIndependentPacketTranslation) s inContext: (JSContext*) context;
-(AudioIndependentPacketTranslation) toAudioIndependentPacketTranslation;
+(JSValue*) valueWithAudioPacketDependencyInfoTranslation: (AudioPacketDependencyInfoTranslation) s inContext: (JSContext*) context;
-(AudioPacketDependencyInfoTranslation) toAudioPacketDependencyInfoTranslation;
+(JSValue*) valueWithAudioBytePacketTranslation: (AudioBytePacketTranslation) s inContext: (JSContext*) context;
-(AudioBytePacketTranslation) toAudioBytePacketTranslation;
+(JSValue*) valueWithAudioFileTypeAndFormatID: (AudioFileTypeAndFormatID) s inContext: (JSContext*) context;
-(AudioFileTypeAndFormatID) toAudioFileTypeAndFormatID;
@end
#pragma clang diagnostic pop