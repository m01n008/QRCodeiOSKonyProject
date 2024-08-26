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
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIActivityItemsConfigurationInteractionShare;
	if (p != NULL) context[@"UIActivityItemsConfigurationInteractionShare"] = UIActivityItemsConfigurationInteractionShare;
	p = (void*) &UIActivityItemsConfigurationMetadataKeyMessageBody;
	if (p != NULL) context[@"UIActivityItemsConfigurationMetadataKeyMessageBody"] = UIActivityItemsConfigurationMetadataKeyMessageBody;
	p = (void*) &UIActivityItemsConfigurationPreviewIntentFullSize;
	if (p != NULL) context[@"UIActivityItemsConfigurationPreviewIntentFullSize"] = UIActivityItemsConfigurationPreviewIntentFullSize;
	p = (void*) &UIActivityItemsConfigurationMetadataKeyTitle;
	if (p != NULL) context[@"UIActivityItemsConfigurationMetadataKeyTitle"] = UIActivityItemsConfigurationMetadataKeyTitle;
	p = (void*) &UIActivityItemsConfigurationPreviewIntentThumbnail;
	if (p != NULL) context[@"UIActivityItemsConfigurationPreviewIntentThumbnail"] = UIActivityItemsConfigurationPreviewIntentThumbnail;
}
void UIKit_UIActivityItemsConfigurationReadingProtocols()
{
	(void)@protocol(UIActivityItemsConfigurationReading);
}
void load_UIKit_UIActivityItemsConfigurationReading_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
