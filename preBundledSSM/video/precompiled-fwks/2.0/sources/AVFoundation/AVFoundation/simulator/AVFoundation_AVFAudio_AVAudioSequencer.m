#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation JSValue (AVFoundation_AVFAudio_AVAudioSequencer)
+(JSValue*) valueWithAVBeatRange: (AVBeatRange) s inContext: (JSContext*) context {
	return [JSValue valueWithObject: @{
		@"start": @(s.start),
		@"length": @(s.length),
	} inContext: context];
}
-(AVBeatRange) toAVBeatRange {
	return (AVBeatRange) {
		(AVMusicTimeStamp) [self[@"start"] toDouble],
		(AVMusicTimeStamp) [self[@"length"] toDouble],
	};
}
@end
@implementation AVAudioSequencer (Exports)
-(id) jsinitWithAudioEngine: (AVAudioEngine *) engine 
{
	id resultVal__;
	resultVal__ = [[self initWithAudioEngine: engine ] autorelease];
	return resultVal__;
}
-(BOOL) jsloadFromData: (NSData *) data options: (AVMusicSequenceLoadOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadFromData: data options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsloadFromURL: (NSURL *) fileURL options: (AVMusicSequenceLoadOptions) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self loadFromURL: fileURL options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jswriteToURL: (NSURL *) fileURL SMPTEResolution: (NSInteger) resolution replaceExisting: (BOOL) replace error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self writeToURL: fileURL SMPTEResolution: resolution replaceExisting: replace error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(NSData *) jsdataWithSMPTEResolution: (NSInteger) SMPTEResolution error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSData * resultVal__;
	resultVal__ = [self dataWithSMPTEResolution: SMPTEResolution error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVAudioSequencer (AVAudioSequencerAVAudioSequencer_PlayerCategoryExports)
-(BOOL) jsstartAndReturnError: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self startAndReturnError: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(UInt64) jshostTimeForBeats: (AVMusicTimeStamp) inBeats error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	UInt64 resultVal__;
	resultVal__ = [self hostTimeForBeats: inBeats error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(AVMusicTimeStamp) jsbeatsForHostTime: (UInt64) inHostTime error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	AVMusicTimeStamp resultVal__;
	resultVal__ = [self beatsForHostTime: inHostTime error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMusicTrack class], @protocol(AVMusicTrackInstanceExports));
	class_addProtocol([AVMusicTrack class], @protocol(AVMusicTrackClassExports));
	class_addProtocol([AVAudioSequencer class], @protocol(AVAudioSequencerInstanceExports));
	class_addProtocol([AVAudioSequencer class], @protocol(AVAudioSequencerClassExports));
	class_addProtocol([AVAudioSequencer class], @protocol(AVAudioSequencerAVAudioSequencer_PlayerCategoryInstanceExports));
	class_addProtocol([AVAudioSequencer class], @protocol(AVAudioSequencerAVAudioSequencer_PlayerCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
	context[@"AVMakeBeatRange"] = ^AVBeatRange(AVMusicTimeStamp arg0, AVMusicTimeStamp arg1) {
		return AVMakeBeatRange(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVMusicSequenceLoadSMF_PreserveTracks"] = @0UL;
	context[@"AVMusicSequenceLoadSMF_ChannelsToTracks"] = @1UL;

	context[@"AVMusicTrackLoopCountForever"] = @-1L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVFAudio_AVAudioSequencer_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
