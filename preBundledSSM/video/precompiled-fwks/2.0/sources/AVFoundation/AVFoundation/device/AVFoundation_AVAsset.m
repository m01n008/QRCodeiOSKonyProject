#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAsset (Exports)
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
@implementation AVURLAsset (Exports)
-(id) jsinitWithURL: (NSURL *) URL options: (NSDictionary *) options 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL options: options ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetChapterInspectionCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetChapterInspectionCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetContentKeyEligibilityCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetContentKeyEligibilityCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVAssetCompositionUtilityCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVAssetCompositionUtilityCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetFragmentsCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetFragmentsCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetTrackInspectionCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetAsynchronousLoadingCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetAsynchronousLoadingCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetReferenceRestrictionsCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetReferenceRestrictionsCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetCacheCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetCacheCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetProtectedContentCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetProtectedContentCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetUsabilityCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetUsabilityCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetMetadataReadingCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetMetadataReadingCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetMediaSelectionCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetMediaSelectionCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetURLHandlingCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetURLHandlingCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVAssetReferenceRestrictionForbidNone"] = @0U;
	context[@"AVAssetReferenceRestrictionForbidRemoteReferenceToLocal"] = @1U;
	context[@"AVAssetReferenceRestrictionForbidLocalReferenceToRemote"] = @2U;
	context[@"AVAssetReferenceRestrictionForbidCrossSiteReference"] = @4U;
	context[@"AVAssetReferenceRestrictionForbidLocalReferenceToLocal"] = @8U;
	context[@"AVAssetReferenceRestrictionForbidAll"] = @65535U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVURLAssetPreferPreciseDurationAndTimingKey;
	if (p != NULL) context[@"AVURLAssetPreferPreciseDurationAndTimingKey"] = AVURLAssetPreferPreciseDurationAndTimingKey;
	p = (void*) &AVURLAssetReferenceRestrictionsKey;
	if (p != NULL) context[@"AVURLAssetReferenceRestrictionsKey"] = AVURLAssetReferenceRestrictionsKey;
	p = (void*) &AVAssetChapterMetadataGroupsDidChangeNotification;
	if (p != NULL) context[@"AVAssetChapterMetadataGroupsDidChangeNotification"] = AVAssetChapterMetadataGroupsDidChangeNotification;
	p = (void*) &AVURLAssetAllowsCellularAccessKey;
	if (p != NULL) context[@"AVURLAssetAllowsCellularAccessKey"] = AVURLAssetAllowsCellularAccessKey;
	p = (void*) &AVAssetMediaSelectionGroupsDidChangeNotification;
	if (p != NULL) context[@"AVAssetMediaSelectionGroupsDidChangeNotification"] = AVAssetMediaSelectionGroupsDidChangeNotification;
	p = (void*) &AVURLAssetHTTPCookiesKey;
	if (p != NULL) context[@"AVURLAssetHTTPCookiesKey"] = AVURLAssetHTTPCookiesKey;
	p = (void*) &AVAssetDurationDidChangeNotification;
	if (p != NULL) context[@"AVAssetDurationDidChangeNotification"] = AVAssetDurationDidChangeNotification;
}
void AVFoundation_AVAssetProtocols()
{
	(void)@protocol(AVFragmentMinding);
}
void load_AVFoundation_AVAsset_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
