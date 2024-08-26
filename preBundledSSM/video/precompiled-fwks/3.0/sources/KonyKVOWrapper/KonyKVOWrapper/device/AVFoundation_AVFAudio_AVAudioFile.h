#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioFile_symbols(JSContext*);
@protocol AVAudioFileInstanceExports<JSExport>
@property (readonly,nonatomic) NSURL * url;
@property (readonly,nonatomic) AVAudioFramePosition length;
@property (nonatomic) AVAudioFramePosition framePosition;
@property (readonly,nonatomic) AVAudioFormat * processingFormat;
@property (readonly,nonatomic) AVAudioFormat * fileFormat;
JSExportAs(initForReadingError,
-(id) jsinitForReading: (NSURL *) fileURL error: (JSValue *) outError );
JSExportAs(initForWritingSettingsError,
-(id) jsinitForWriting: (NSURL *) fileURL settings: (NSDictionary *) settings error: (JSValue *) outError );
JSExportAs(readIntoBufferError,
-(BOOL) jsreadIntoBuffer: (AVAudioPCMBuffer *) buffer error: (JSValue *) outError );
JSExportAs(initForWritingSettingsCommonFormatInterleavedError,
-(id) jsinitForWriting: (NSURL *) fileURL settings: (NSDictionary *) settings commonFormat: (AVAudioCommonFormat) format interleaved: (BOOL) interleaved error: (JSValue *) outError );
JSExportAs(writeFromBufferError,
-(BOOL) jswriteFromBuffer: (const AVAudioPCMBuffer *) buffer error: (JSValue *) outError );
JSExportAs(readIntoBufferFrameCountError,
-(BOOL) jsreadIntoBuffer: (AVAudioPCMBuffer *) buffer frameCount: (AVAudioFrameCount) frames error: (JSValue *) outError );
JSExportAs(initForReadingCommonFormatInterleavedError,
-(id) jsinitForReading: (NSURL *) fileURL commonFormat: (AVAudioCommonFormat) format interleaved: (BOOL) interleaved error: (JSValue *) outError );
@end
@protocol AVAudioFileClassExports<JSExport>
@end
#pragma clang diagnostic pop