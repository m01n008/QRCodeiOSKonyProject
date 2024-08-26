#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioUnitSampler_symbols(JSContext*);
@protocol AVAudioUnitSamplerInstanceExports<JSExport>
@property (nonatomic) float stereoPan;
@property (nonatomic) float masterGain;
@property (nonatomic) float globalTuning;
JSExportAs(loadSoundBankInstrumentAtURLProgramBankMSBBankLSBError,
-(BOOL) jsloadSoundBankInstrumentAtURL: (NSURL *) bankURL program: (uint8_t) program bankMSB: (uint8_t) bankMSB bankLSB: (uint8_t) bankLSB error: (JSValue *) outError );
JSExportAs(loadAudioFilesAtURLsError,
-(BOOL) jsloadAudioFilesAtURLs: (NSArray *) audioFiles error: (JSValue *) outError );
JSExportAs(loadInstrumentAtURLError,
-(BOOL) jsloadInstrumentAtURL: (NSURL *) instrumentURL error: (JSValue *) outError );
@end
@protocol AVAudioUnitSamplerClassExports<JSExport>
@end
#pragma clang diagnostic pop