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
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayPathExtensionsCategoryInstanceExports));
	class_addProtocol([NSArray class], @protocol(NSArrayNSArrayPathExtensionsCategoryClassExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringPathExtensionsCategoryInstanceExports));
	class_addProtocol([NSString class], @protocol(NSStringNSStringPathExtensionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSApplicationDirectory"] = @1U;
	context[@"NSDemoApplicationDirectory"] = @2U;
	context[@"NSDeveloperApplicationDirectory"] = @3U;
	context[@"NSAdminApplicationDirectory"] = @4U;
	context[@"NSLibraryDirectory"] = @5U;
	context[@"NSDeveloperDirectory"] = @6U;
	context[@"NSUserDirectory"] = @7U;
	context[@"NSDocumentationDirectory"] = @8U;
	context[@"NSDocumentDirectory"] = @9U;
	context[@"NSCoreServiceDirectory"] = @10U;
	context[@"NSAutosavedInformationDirectory"] = @11U;
	context[@"NSDesktopDirectory"] = @12U;
	context[@"NSCachesDirectory"] = @13U;
	context[@"NSApplicationSupportDirectory"] = @14U;
	context[@"NSDownloadsDirectory"] = @15U;
	context[@"NSInputMethodsDirectory"] = @16U;
	context[@"NSMoviesDirectory"] = @17U;
	context[@"NSMusicDirectory"] = @18U;
	context[@"NSPicturesDirectory"] = @19U;
	context[@"NSPrinterDescriptionDirectory"] = @20U;
	context[@"NSSharedPublicDirectory"] = @21U;
	context[@"NSPreferencePanesDirectory"] = @22U;
	context[@"NSItemReplacementDirectory"] = @99U;
	context[@"NSAllApplicationsDirectory"] = @100U;
	context[@"NSAllLibrariesDirectory"] = @101U;

	context[@"NSUserDomainMask"] = @1U;
	context[@"NSLocalDomainMask"] = @2U;
	context[@"NSNetworkDomainMask"] = @4U;
	context[@"NSSystemDomainMask"] = @8U;
	context[@"NSAllDomainsMask"] = @65535U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSPathUtilities_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
