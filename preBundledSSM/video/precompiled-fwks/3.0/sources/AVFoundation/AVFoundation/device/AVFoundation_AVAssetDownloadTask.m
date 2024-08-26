#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([AVAssetDownloadTask class], @protocol(AVAssetDownloadTaskInstanceExports));
	class_addProtocol([AVAssetDownloadTask class], @protocol(AVAssetDownloadTaskClassExports));
	class_addProtocol([AVAggregateAssetDownloadTask class], @protocol(AVAggregateAssetDownloadTaskInstanceExports));
	class_addProtocol([AVAggregateAssetDownloadTask class], @protocol(AVAggregateAssetDownloadTaskClassExports));
	class_addProtocol([AVAssetDownloadURLSession class], @protocol(AVAssetDownloadURLSessionInstanceExports));
	class_addProtocol([AVAssetDownloadURLSession class], @protocol(AVAssetDownloadURLSessionClassExports));
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
	p = (void*) &AVAssetDownloadTaskPrefersHDRKey;
	if (p != NULL) context[@"AVAssetDownloadTaskPrefersHDRKey"] = AVAssetDownloadTaskPrefersHDRKey;
	p = (void*) &AVAssetDownloadTaskMinimumRequiredPresentationSizeKey;
	if (p != NULL) context[@"AVAssetDownloadTaskMinimumRequiredPresentationSizeKey"] = AVAssetDownloadTaskMinimumRequiredPresentationSizeKey;
	p = (void*) &AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey;
	if (p != NULL) context[@"AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey"] = AVAssetDownloadTaskMediaSelectionPrefersMultichannelKey;
	p = (void*) &AVAssetDownloadTaskMinimumRequiredMediaBitrateKey;
	if (p != NULL) context[@"AVAssetDownloadTaskMinimumRequiredMediaBitrateKey"] = AVAssetDownloadTaskMinimumRequiredMediaBitrateKey;
	p = (void*) &AVAssetDownloadTaskMediaSelectionKey;
	if (p != NULL) context[@"AVAssetDownloadTaskMediaSelectionKey"] = AVAssetDownloadTaskMediaSelectionKey;
}
void AVFoundation_AVAssetDownloadTaskProtocols()
{
	(void)@protocol(AVAssetDownloadDelegate);
}
void load_AVFoundation_AVAssetDownloadTask_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
