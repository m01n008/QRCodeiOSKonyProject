#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVCompositionTrackSegment (Exports)
-(id) jsinitWithURL: (NSURL *) URL trackID: (CMPersistentTrackID) trackID sourceTimeRange: (CMTimeRange) sourceTimeRange targetTimeRange: (CMTimeRange) targetTimeRange 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL trackID: trackID sourceTimeRange: sourceTimeRange targetTimeRange: targetTimeRange ] autorelease];
	return resultVal__;
}
-(id) jsinitWithTimeRange: (CMTimeRange) timeRange 
{
	id resultVal__;
	resultVal__ = [[self initWithTimeRange: timeRange ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVCompositionTrackSegment class], @protocol(AVCompositionTrackSegmentInstanceExports));
	class_addProtocol([AVCompositionTrackSegment class], @protocol(AVCompositionTrackSegmentClassExports));
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
void load_AVFoundation_AVCompositionTrackSegment_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
