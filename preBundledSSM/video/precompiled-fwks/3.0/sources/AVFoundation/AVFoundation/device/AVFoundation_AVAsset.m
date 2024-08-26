#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVURLAsset (AVURLAssetAVURLAssetNSItemProviderCategoryExports)
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
-(NSProgress *) jsloadDataWithTypeIdentifier: (NSString *) typeIdentifier forItemProviderCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSProgress * resultVal__;
	resultVal__ = [self loadDataWithTypeIdentifier: typeIdentifier forItemProviderCompletionHandler: completionHandler_ ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
+(id) jsobjectWithItemProviderData: (NSData *) data typeIdentifier: (NSString *) typeIdentifier error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	id resultVal__;
	resultVal__ = [self objectWithItemProviderData: data typeIdentifier: typeIdentifier error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation AVFragmentedAssetMinder (Exports)
-(id) jsinitWithAsset: (AVAsset *) asset mindingInterval: (NSTimeInterval) mindingInterval 
{
	id resultVal__;
	resultVal__ = [[self initWithAsset: asset mindingInterval: mindingInterval ] autorelease];
	return resultVal__;
}
@end
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
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetFragmentsCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetFragmentsCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetContentKeyEligibilityCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetContentKeyEligibilityCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVAssetCompositionUtilityCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVAssetCompositionUtilityCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetTrackInspectionCategoryClassExports));
	class_addProtocol([AVFragmentedAsset class], @protocol(AVFragmentedAssetAVFragmentedAssetTrackInspectionCategoryInstanceExports));
	class_addProtocol([AVFragmentedAsset class], @protocol(AVFragmentedAssetAVFragmentedAssetTrackInspectionCategoryClassExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetNSItemProviderCategoryInstanceExports));
	class_addProtocol([AVURLAsset class], @protocol(AVURLAssetAVURLAssetNSItemProviderCategoryClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetAsynchronousLoadingCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetAsynchronousLoadingCategoryClassExports));
	class_addProtocol([AVFragmentedAsset class], @protocol(AVFragmentedAssetInstanceExports));
	class_addProtocol([AVFragmentedAsset class], @protocol(AVFragmentedAssetClassExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetReferenceRestrictionsCategoryInstanceExports));
	class_addProtocol([AVAsset class], @protocol(AVAssetAVAssetReferenceRestrictionsCategoryClassExports));
	class_addProtocol([AVFragmentedAssetMinder class], @protocol(AVFragmentedAssetMinderInstanceExports));
	class_addProtocol([AVFragmentedAssetMinder class], @protocol(AVFragmentedAssetMinderClassExports));
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
	context[@"AVAssetReferenceRestrictionDefaultPolicy"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVAssetWasDefragmentedNotification;
	if (p != NULL) context[@"AVAssetWasDefragmentedNotification"] = AVAssetWasDefragmentedNotification;
	p = (void*) &AVURLAssetPreferPreciseDurationAndTimingKey;
	if (p != NULL) context[@"AVURLAssetPreferPreciseDurationAndTimingKey"] = AVURLAssetPreferPreciseDurationAndTimingKey;
	p = (void*) &AVURLAssetReferenceRestrictionsKey;
	if (p != NULL) context[@"AVURLAssetReferenceRestrictionsKey"] = AVURLAssetReferenceRestrictionsKey;
	p = (void*) &AVURLAssetAllowsExpensiveNetworkAccessKey;
	if (p != NULL) context[@"AVURLAssetAllowsExpensiveNetworkAccessKey"] = AVURLAssetAllowsExpensiveNetworkAccessKey;
	p = (void*) &AVAssetChapterMetadataGroupsDidChangeNotification;
	if (p != NULL) context[@"AVAssetChapterMetadataGroupsDidChangeNotification"] = AVAssetChapterMetadataGroupsDidChangeNotification;
	p = (void*) &AVURLAssetAllowsCellularAccessKey;
	if (p != NULL) context[@"AVURLAssetAllowsCellularAccessKey"] = AVURLAssetAllowsCellularAccessKey;
	p = (void*) &AVAssetMediaSelectionGroupsDidChangeNotification;
	if (p != NULL) context[@"AVAssetMediaSelectionGroupsDidChangeNotification"] = AVAssetMediaSelectionGroupsDidChangeNotification;
	p = (void*) &AVURLAssetHTTPCookiesKey;
	if (p != NULL) context[@"AVURLAssetHTTPCookiesKey"] = AVURLAssetHTTPCookiesKey;
	p = (void*) &AVURLAssetAllowsConstrainedNetworkAccessKey;
	if (p != NULL) context[@"AVURLAssetAllowsConstrainedNetworkAccessKey"] = AVURLAssetAllowsConstrainedNetworkAccessKey;
	p = (void*) &AVAssetContainsFragmentsDidChangeNotification;
	if (p != NULL) context[@"AVAssetContainsFragmentsDidChangeNotification"] = AVAssetContainsFragmentsDidChangeNotification;
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
