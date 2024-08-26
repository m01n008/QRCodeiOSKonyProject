#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVMutableMovieTrack (AVMutableMovieTrackAVMutableMovieTrackTrackLevelEditingCategoryExports)
-(BOOL) jsinsertTimeRange: (CMTimeRange) timeRange ofTrack: (AVAssetTrack *) track atTime: (CMTime) startTime copySampleData: (BOOL) copySampleData error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	BOOL resultVal__;
	resultVal__ = [self insertTimeRange: timeRange ofTrack: track atTime: startTime copySampleData: copySampleData error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVMovieTrack class], @protocol(AVMovieTrackAVMovieTrackMediaDataStorageCategoryInstanceExports));
	class_addProtocol([AVMovieTrack class], @protocol(AVMovieTrackAVMovieTrackMediaDataStorageCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackSampleLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackSampleLevelEditingCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackChunkPropertiesCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackChunkPropertiesCategoryClassExports));
	class_addProtocol([AVFragmentedMovieTrack class], @protocol(AVFragmentedMovieTrackInstanceExports));
	class_addProtocol([AVFragmentedMovieTrack class], @protocol(AVFragmentedMovieTrackClassExports));
	class_addProtocol([AVMovieTrack class], @protocol(AVMovieTrackInstanceExports));
	class_addProtocol([AVMovieTrack class], @protocol(AVMovieTrackClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackVisualPropertiesCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackVisualPropertiesCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackTrackAssociationsCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackTrackAssociationsCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackMetadataEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackMetadataEditingCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackFormatDescriptionsCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackFormatDescriptionsCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackLanguagePropertiesCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackLanguagePropertiesCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackAudiblePropertiesCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackAudiblePropertiesCategoryClassExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackTrackLevelEditingCategoryInstanceExports));
	class_addProtocol([AVMutableMovieTrack class], @protocol(AVMutableMovieTrackAVMutableMovieTrackTrackLevelEditingCategoryClassExports));
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
	p = (void*) &AVFragmentedMovieTrackTimeRangeDidChangeNotification;
	if (p != NULL) context[@"AVFragmentedMovieTrackTimeRangeDidChangeNotification"] = AVFragmentedMovieTrackTimeRangeDidChangeNotification;
	p = (void*) &AVFragmentedMovieTrackSegmentsDidChangeNotification;
	if (p != NULL) context[@"AVFragmentedMovieTrackSegmentsDidChangeNotification"] = AVFragmentedMovieTrackSegmentsDidChangeNotification;
}
void load_AVFoundation_AVMovieTrack_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
