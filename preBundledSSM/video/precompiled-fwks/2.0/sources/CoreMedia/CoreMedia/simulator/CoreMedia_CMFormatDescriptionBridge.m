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
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout"] = ^Boolean(id arg0, id arg1) {
		return CMDoesBigEndianSoundDescriptionRequireLegacyCBRSampleTableLayout(arg0, arg1);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMFormatDescriptionBridgeError_InvalidParameter"] = @-12712;
	context[@"kCMFormatDescriptionBridgeError_AllocationFailed"] = @-12713;
	context[@"kCMFormatDescriptionBridgeError_InvalidSerializedSampleDescription"] = @-12714;
	context[@"kCMFormatDescriptionBridgeError_InvalidFormatDescription"] = @-12715;
	context[@"kCMFormatDescriptionBridgeError_IncompatibleFormatDescription"] = @-12716;
	context[@"kCMFormatDescriptionBridgeError_UnsupportedSampleDescriptionFlavor"] = @-12717;
	context[@"kCMFormatDescriptionBridgeError_InvalidSlice"] = @-12719;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCMImageDescriptionFlavor_QuickTimeMovie;
	if (p != NULL) context[@"kCMImageDescriptionFlavor_QuickTimeMovie"] = [JSValue valueWithObject: (__bridge id) kCMImageDescriptionFlavor_QuickTimeMovie inContext: context];
	p = (void*) &kCMSoundDescriptionFlavor_QuickTimeMovie;
	if (p != NULL) context[@"kCMSoundDescriptionFlavor_QuickTimeMovie"] = [JSValue valueWithObject: (__bridge id) kCMSoundDescriptionFlavor_QuickTimeMovie inContext: context];
	p = (void*) &kCMImageDescriptionFlavor_ISOFamily;
	if (p != NULL) context[@"kCMImageDescriptionFlavor_ISOFamily"] = [JSValue valueWithObject: (__bridge id) kCMImageDescriptionFlavor_ISOFamily inContext: context];
	p = (void*) &kCMSoundDescriptionFlavor_ISOFamily;
	if (p != NULL) context[@"kCMSoundDescriptionFlavor_ISOFamily"] = [JSValue valueWithObject: (__bridge id) kCMSoundDescriptionFlavor_ISOFamily inContext: context];
	p = (void*) &kCMImageDescriptionFlavor_3GPFamily;
	if (p != NULL) context[@"kCMImageDescriptionFlavor_3GPFamily"] = [JSValue valueWithObject: (__bridge id) kCMImageDescriptionFlavor_3GPFamily inContext: context];
	p = (void*) &kCMSoundDescriptionFlavor_QuickTimeMovieV2;
	if (p != NULL) context[@"kCMSoundDescriptionFlavor_QuickTimeMovieV2"] = [JSValue valueWithObject: (__bridge id) kCMSoundDescriptionFlavor_QuickTimeMovieV2 inContext: context];
	p = (void*) &kCMSoundDescriptionFlavor_3GPFamily;
	if (p != NULL) context[@"kCMSoundDescriptionFlavor_3GPFamily"] = [JSValue valueWithObject: (__bridge id) kCMSoundDescriptionFlavor_3GPFamily inContext: context];
}
void load_CoreMedia_CMFormatDescriptionBridge_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
