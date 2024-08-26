#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVAssetResourceLoadingRequest (AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestContentKeyRequestSupportCategoryExports)
-(NSData *) jsstreamingContentKeyRequestDataForApp: (NSData *) appIdentifier contentIdentifier: (NSData *) contentIdentifier options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSData * resultVal__;
	resultVal__ = [self streamingContentKeyRequestDataForApp: appIdentifier contentIdentifier: contentIdentifier options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
-(NSData *) jspersistentContentKeyFromKeyVendorResponse: (NSData *) keyVendorResponse options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSData * resultVal__;
	resultVal__ = [self persistentContentKeyFromKeyVendorResponse: keyVendorResponse options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVAssetResourceLoader class], @protocol(AVAssetResourceLoaderAVAssetResourceLoaderContentKeySupportCategoryInstanceExports));
	class_addProtocol([AVAssetResourceLoader class], @protocol(AVAssetResourceLoaderAVAssetResourceLoaderContentKeySupportCategoryClassExports));
	class_addProtocol([AVAssetResourceLoadingRequestor class], @protocol(AVAssetResourceLoadingRequestorInstanceExports));
	class_addProtocol([AVAssetResourceLoadingRequestor class], @protocol(AVAssetResourceLoadingRequestorClassExports));
	class_addProtocol([AVAssetResourceLoadingDataRequest class], @protocol(AVAssetResourceLoadingDataRequestInstanceExports));
	class_addProtocol([AVAssetResourceLoadingDataRequest class], @protocol(AVAssetResourceLoadingDataRequestClassExports));
	class_addProtocol([AVAssetResourceLoader class], @protocol(AVAssetResourceLoaderInstanceExports));
	class_addProtocol([AVAssetResourceLoader class], @protocol(AVAssetResourceLoaderClassExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestDeprecatedCategoryInstanceExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestDeprecatedCategoryClassExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestInstanceExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestClassExports));
	class_addProtocol([AVAssetResourceLoadingContentInformationRequest class], @protocol(AVAssetResourceLoadingContentInformationRequestInstanceExports));
	class_addProtocol([AVAssetResourceLoadingContentInformationRequest class], @protocol(AVAssetResourceLoadingContentInformationRequestClassExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestContentKeyRequestSupportCategoryInstanceExports));
	class_addProtocol([AVAssetResourceLoadingRequest class], @protocol(AVAssetResourceLoadingRequestAVAssetResourceLoadingRequestContentKeyRequestSupportCategoryClassExports));
	class_addProtocol([AVAssetResourceRenewalRequest class], @protocol(AVAssetResourceRenewalRequestInstanceExports));
	class_addProtocol([AVAssetResourceRenewalRequest class], @protocol(AVAssetResourceRenewalRequestClassExports));
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
	p = (void*) &AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey;
	if (p != NULL) context[@"AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey"] = AVAssetResourceLoadingRequestStreamingContentKeyRequestRequiresPersistentKey;
}
void AVFoundation_AVAssetResourceLoaderProtocols()
{
	(void)@protocol(AVAssetResourceLoaderDelegate);
}
void load_AVFoundation_AVAssetResourceLoader_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
