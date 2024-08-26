#import <JavaScriptCore/JavaScriptCore.h>
#import "allheaders.h"
#import "allprotos.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wobjc-property-no-attribute"
#pragma clang diagnostic ignored "-Wnullability-completeness"
void load_AVFoundation_AVAudioSequencer_symbols(JSContext*);
@interface JSValue (AVFoundation_AVAudioSequencer)
+(JSValue*) valueWithAVBeatRange: (AVBeatRange) s inContext: (JSContext*) context;
-(AVBeatRange) toAVBeatRange;
@end
@protocol AVMusicTrackInstanceExports<JSExport>
@property (retain,nonatomic) AVAudioUnit * destinationAudioUnit;
@property (nonatomic) AVMusicTimeStamp offsetTime;
@property (nonatomic) NSTimeInterval lengthInSeconds;
@property (nonatomic) MIDIEndpointRef destinationMIDIEndpoint;
@property (getter=isMuted,nonatomic) BOOL muted;
@property (nonatomic) AVMusicTimeStamp lengthInBeats;
@property (getter=isLoopingEnabled,nonatomic) BOOL loopingEnabled;
@property (nonatomic) AVBeatRange loopRange;
@property (nonatomic) NSInteger numberOfLoops;
@property (readonly,nonatomic) NSUInteger timeResolution;
@property (getter=isSoloed,nonatomic) BOOL soloed;
@end
@protocol AVMusicTrackClassExports<JSExport>
@end
@protocol AVAudioSequencerInstanceExports<JSExport>
@property (readonly,nonatomic) NSArray * tracks;
@property (readonly,nonatomic) AVMusicTrack * tempoTrack;
@property (readonly,nonatomic) NSDictionary * userInfo;
JSExportAs(initWithAudioEngine,
-(id) jsinitWithAudioEngine: (AVAudioEngine *) engine );
JSExportAs(loadFromDataOptionsError,
-(BOOL) jsloadFromData: (NSData *) data options: (AVMusicSequenceLoadOptions) options error: (JSValue *) outError );
-(AVMusicTimeStamp) beatsForSeconds: (NSTimeInterval) seconds ;
JSExportAs(loadFromURLOptionsError,
-(BOOL) jsloadFromURL: (NSURL *) fileURL options: (AVMusicSequenceLoadOptions) options error: (JSValue *) outError );
JSExportAs(writeToURLSMPTEResolutionReplaceExistingError,
-(BOOL) jswriteToURL: (NSURL *) fileURL SMPTEResolution: (NSInteger) resolution replaceExisting: (BOOL) replace error: (JSValue *) outError );
-(id) jsinit;
-(NSTimeInterval) secondsForBeats: (AVMusicTimeStamp) beats ;
JSExportAs(dataWithSMPTEResolutionError,
-(NSData *) jsdataWithSMPTEResolution: (NSInteger) SMPTEResolution error: (JSValue *) outError );
@end
@protocol AVAudioSequencerClassExports<JSExport>
@end
@protocol AVAudioSequencerAVAudioSequencer_PlayerCategoryInstanceExports<JSExport>
@property (nonatomic) NSTimeInterval currentPositionInBeats;
@property (nonatomic) float rate;
@property (getter=isPlaying,readonly,nonatomic) BOOL playing;
@property (nonatomic) NSTimeInterval currentPositionInSeconds;
JSExportAs(startAndReturnError,
-(BOOL) jsstartAndReturnError: (JSValue *) outError );
JSExportAs(hostTimeForBeatsError,
-(UInt64) jshostTimeForBeats: (AVMusicTimeStamp) inBeats error: (JSValue *) outError );
-(void) stop;
-(void) prepareToPlay;
JSExportAs(beatsForHostTimeError,
-(AVMusicTimeStamp) jsbeatsForHostTime: (UInt64) inHostTime error: (JSValue *) outError );
@end
@protocol AVAudioSequencerAVAudioSequencer_PlayerCategoryClassExports<JSExport>
@end
#pragma clang diagnostic pop