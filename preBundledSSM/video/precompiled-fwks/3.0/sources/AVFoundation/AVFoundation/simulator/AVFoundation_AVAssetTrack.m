#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetTrack (Exports)
-(void) jsloadValuesAsynchronouslyForKeys: (NSArray *) keys completionHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self loadValuesAsynchronouslyForKeys: keys completionHandler: handler_ ];
}
-(AVKeyValueStatus) jsstatusOfValueForKey: (NSString *) key error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	AVKeyValueStatus resultVal__;
	resultVal__ = [self statusOfValueForKey: key error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForFrameBasedCharacteristicCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForFrameBasedCharacteristicCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackLanguagePropertiesCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackLanguagePropertiesCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackMetadataReadingCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackMetadataReadingCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackTrackAssociationsCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackTrackAssociationsCategoryClassExports));
	class_addProtocol([AVFragmentedAssetTrack class], @protocol(AVFragmentedAssetTrackInstanceExports));
	class_addProtocol([AVFragmentedAssetTrack class], @protocol(AVFragmentedAssetTrackClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackTemporalPropertiesCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackTemporalPropertiesCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForAudibleCharacteristicCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForAudibleCharacteristicCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackSegmentsCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackSegmentsCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackBasicPropertiesAndCharacteristicsCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackBasicPropertiesAndCharacteristicsCategoryClassExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForVisualCharacteristicCategoryInstanceExports));
	class_addProtocol([AVAssetTrack class], @protocol(AVAssetTrackAVAssetTrackPropertiesForVisualCharacteristicCategoryClassExports));
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
	p = (void*) &AVTrackAssociationTypeChapterList;
	if (p != NULL) context[@"AVTrackAssociationTypeChapterList"] = AVTrackAssociationTypeChapterList;
	p = (void*) &AVTrackAssociationTypeForcedSubtitlesOnly;
	if (p != NULL) context[@"AVTrackAssociationTypeForcedSubtitlesOnly"] = AVTrackAssociationTypeForcedSubtitlesOnly;
	p = (void*) &AVTrackAssociationTypeAudioFallback;
	if (p != NULL) context[@"AVTrackAssociationTypeAudioFallback"] = AVTrackAssociationTypeAudioFallback;
	p = (void*) &AVTrackAssociationTypeTimecode;
	if (p != NULL) context[@"AVTrackAssociationTypeTimecode"] = AVTrackAssociationTypeTimecode;
	p = (void*) &AVAssetTrackSegmentsDidChangeNotification;
	if (p != NULL) context[@"AVAssetTrackSegmentsDidChangeNotification"] = AVAssetTrackSegmentsDidChangeNotification;
	p = (void*) &AVTrackAssociationTypeMetadataReferent;
	if (p != NULL) context[@"AVTrackAssociationTypeMetadataReferent"] = AVTrackAssociationTypeMetadataReferent;
	p = (void*) &AVTrackAssociationTypeSelectionFollower;
	if (p != NULL) context[@"AVTrackAssociationTypeSelectionFollower"] = AVTrackAssociationTypeSelectionFollower;
	p = (void*) &AVAssetTrackTimeRangeDidChangeNotification;
	if (p != NULL) context[@"AVAssetTrackTimeRangeDidChangeNotification"] = AVAssetTrackTimeRangeDidChangeNotification;
	p = (void*) &AVAssetTrackTrackAssociationsDidChangeNotification;
	if (p != NULL) context[@"AVAssetTrackTrackAssociationsDidChangeNotification"] = AVAssetTrackTrackAssociationsDidChangeNotification;
}
void load_AVFoundation_AVAssetTrack_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
