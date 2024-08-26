#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
	class_addProtocol([CIContext class], @protocol(CIContextInstanceExports));
	class_addProtocol([CIContext class], @protocol(CIContextClassExports));
	class_addProtocol([CIContext class], @protocol(CIContextOfflineGPUSupportCategoryInstanceExports));
	class_addProtocol([CIContext class], @protocol(CIContextOfflineGPUSupportCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCIContextWorkingColorSpace;
	if (p != NULL) context[@"kCIContextWorkingColorSpace"] = kCIContextWorkingColorSpace;
	p = (void*) &kCIContextPriorityRequestLow;
	if (p != NULL) context[@"kCIContextPriorityRequestLow"] = kCIContextPriorityRequestLow;
	p = (void*) &kCIContextUseSoftwareRenderer;
	if (p != NULL) context[@"kCIContextUseSoftwareRenderer"] = kCIContextUseSoftwareRenderer;
	p = (void*) &kCIContextOutputColorSpace;
	if (p != NULL) context[@"kCIContextOutputColorSpace"] = kCIContextOutputColorSpace;
	p = (void*) &kCIContextWorkingFormat;
	if (p != NULL) context[@"kCIContextWorkingFormat"] = kCIContextWorkingFormat;
	p = (void*) &kCIContextHighQualityDownsample;
	if (p != NULL) context[@"kCIContextHighQualityDownsample"] = kCIContextHighQualityDownsample;
}
void load_CoreImage_CIContext_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
