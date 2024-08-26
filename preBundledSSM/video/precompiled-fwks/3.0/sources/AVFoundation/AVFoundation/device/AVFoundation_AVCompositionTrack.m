#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMutableCompositionTrack (Exports)
-(BOOL) jsinsertTimeRanges: (NSArray *) timeRanges ofTracks: (NSArray *) tracks atTime: (CMTime) startTime error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self insertTimeRanges: timeRanges ofTracks: tracks atTime: startTime error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsvalidateTrackSegments: (NSArray *) trackSegments error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self validateTrackSegments: trackSegments error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofTrack: (AVAssetTrack *) track atTime: (CMTime) startTime error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self insertTimeRange: timeRange ofTrack: track atTime: startTime error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
@implementation AVCompositionTrackFormatDescriptionReplacement (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMutableCompositionTrack class], @protocol(AVMutableCompositionTrackInstanceExports));
	class_addProtocol([AVMutableCompositionTrack class], @protocol(AVMutableCompositionTrackClassExports));
	class_addProtocol([AVMutableCompositionTrack class], @protocol(AVMutableCompositionTrackAVMutableCompositionTrackFormatDescriptionReplacementCategoryInstanceExports));
	class_addProtocol([AVMutableCompositionTrack class], @protocol(AVMutableCompositionTrackAVMutableCompositionTrackFormatDescriptionReplacementCategoryClassExports));
	class_addProtocol([AVCompositionTrack class], @protocol(AVCompositionTrackInstanceExports));
	class_addProtocol([AVCompositionTrack class], @protocol(AVCompositionTrackClassExports));
	class_addProtocol([AVCompositionTrackFormatDescriptionReplacement class], @protocol(AVCompositionTrackFormatDescriptionReplacementInstanceExports));
	class_addProtocol([AVCompositionTrackFormatDescriptionReplacement class], @protocol(AVCompositionTrackFormatDescriptionReplacementClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVCompositionTrack_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
