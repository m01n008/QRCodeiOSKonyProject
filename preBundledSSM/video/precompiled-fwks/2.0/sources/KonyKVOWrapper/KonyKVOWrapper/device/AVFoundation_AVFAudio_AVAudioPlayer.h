#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVFAudio_AVAudioPlayer_symbols(JSContext*);
@protocol AVAudioPlayerInstanceExports<JSExport>
@property (getter=isMeteringEnabled) BOOL meteringEnabled;
@property () NSTimeInterval currentTime;
@property (readonly) NSURL * url;
@property (readonly) AVAudioFormat * format;
@property (readonly) NSDictionary * settings;
@property () BOOL enableRate;
@property () float volume;
@property () float rate;
@property (copy,nonatomic) NSArray * channelAssignments;
@property (readonly) NSUInteger numberOfChannels;
@property (assign) id delegate;
@property (readonly) NSTimeInterval deviceCurrentTime;
@property (readonly) NSTimeInterval duration;
@property () NSInteger numberOfLoops;
@property (readonly) NSData * data;
@property (getter=isPlaying,readonly) BOOL playing;
@property () float pan;
JSExportAs(initWithContentsOfURLError,
-(id) jsinitWithContentsOfURL: (NSURL *) url error: (JSValue *) outError );
-(float) peakPowerForChannel: (NSUInteger) channelNumber ;
-(float) averagePowerForChannel: (NSUInteger) channelNumber ;
-(BOOL) prepareToPlay;
-(BOOL) play;
JSExportAs(initWithDataError,
-(id) jsinitWithData: (NSData *) data error: (JSValue *) outError );
JSExportAs(initWithContentsOfURLFileTypeHintError,
-(id) jsinitWithContentsOfURL: (NSURL *) url fileTypeHint: (NSString *) utiString error: (JSValue *) outError );
-(BOOL) playAtTime: (NSTimeInterval) time ;
-(void) updateMeters;
-(void) stop;
-(void) setVolume: (float) volume fadeDuration: (NSTimeInterval) duration ;
-(void) pause;
JSExportAs(initWithDataFileTypeHintError,
-(id) jsinitWithData: (NSData *) data fileTypeHint: (NSString *) utiString error: (JSValue *) outError );
@end
@protocol AVAudioPlayerClassExports<JSExport>
@end
@protocol AVAudioPlayerDelegateInstanceExports_<JSExport, NSObjectInstanceExports_>
-(void) audioPlayerEndInterruption: (AVAudioPlayer *) player withOptions: (NSUInteger) flags ;
-(void) audioPlayerDidFinishPlaying: (AVAudioPlayer *) player successfully: (BOOL) flag ;
-(void) audioPlayerBeginInterruption: (AVAudioPlayer *) player ;
-(void) audioPlayerDecodeErrorDidOccur: (AVAudioPlayer *) player error: (NSError *) error ;
-(void) audioPlayerEndInterruption: (AVAudioPlayer *) player ;
-(void) audioPlayerEndInterruption: (AVAudioPlayer *) player withFlags: (NSUInteger) flags ;
@end
@protocol AVAudioPlayerDelegateClassExports_<JSExport, NSObjectClassExports_>
@end
#pragma clang diagnostic pop