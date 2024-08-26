#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioRecorder_symbols(JSContext*);
@protocol AVAudioRecorderInstanceExports<JSExport>
@property (getter=isMeteringEnabled) BOOL meteringEnabled;
@property (readonly) AVAudioFormat * format;
@property (readonly) NSURL * url;
@property (readonly) NSTimeInterval currentTime;
@property (getter=isRecording,readonly) BOOL recording;
@property (copy,nonatomic) NSArray * channelAssignments;
@property (assign) id delegate;
@property (readonly) NSTimeInterval deviceCurrentTime;
@property (readonly) NSDictionary * settings;
-(BOOL) recordForDuration: (NSTimeInterval) duration ;
JSExportAs(initWithURLFormatError,
-(id) jsinitWithURL: (NSURL *) url format: (AVAudioFormat *) format error: (JSValue *) outError );
-(float) averagePowerForChannel: (NSUInteger) channelNumber ;
-(float) peakPowerForChannel: (NSUInteger) channelNumber ;
-(BOOL) prepareToRecord;
-(BOOL) deleteRecording;
-(BOOL) recordAtTime: (NSTimeInterval) time ;
-(void) updateMeters;
-(void) stop;
-(void) pause;
-(BOOL) recordAtTime: (NSTimeInterval) time forDuration: (NSTimeInterval) duration ;
-(BOOL) record;
JSExportAs(initWithURLSettingsError,
-(id) jsinitWithURL: (NSURL *) url settings: (NSDictionary *) settings error: (JSValue *) outError );
@end
@protocol AVAudioRecorderClassExports<JSExport>
@end
@protocol AVAudioRecorderDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) audioRecorderEndInterruption: (AVAudioRecorder *) recorder ;
-(void) audioRecorderBeginInterruption: (AVAudioRecorder *) recorder ;
-(void) audioRecorderEndInterruption: (AVAudioRecorder *) recorder withOptions: (NSUInteger) flags ;
-(void) audioRecorderDidFinishRecording: (AVAudioRecorder *) recorder successfully: (BOOL) flag ;
-(void) audioRecorderEncodeErrorDidOccur: (AVAudioRecorder *) recorder error: (NSError *) error ;
-(void) audioRecorderEndInterruption: (AVAudioRecorder *) recorder withFlags: (NSUInteger) flags ;
@end
@protocol AVAudioRecorderDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop