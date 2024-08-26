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
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSMetadataUbiquitousItemURLInLocalContainerKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemURLInLocalContainerKey"] = NSMetadataUbiquitousItemURLInLocalContainerKey;
	p = (void*) &NSMetadataUbiquitousItemIsExternalDocumentKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsExternalDocumentKey"] = NSMetadataUbiquitousItemIsExternalDocumentKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusDownloaded;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusDownloaded"] = NSMetadataUbiquitousItemDownloadingStatusDownloaded;
	p = (void*) &NSMetadataUbiquitousItemPercentUploadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemPercentUploadedKey"] = NSMetadataUbiquitousItemPercentUploadedKey;
	p = (void*) &NSMetadataItemContentTypeKey;
	if (p != NULL) context[@"NSMetadataItemContentTypeKey"] = NSMetadataItemContentTypeKey;
	p = (void*) &NSMetadataItemDisplayNameKey;
	if (p != NULL) context[@"NSMetadataItemDisplayNameKey"] = NSMetadataItemDisplayNameKey;
	p = (void*) &NSMetadataItemURLKey;
	if (p != NULL) context[@"NSMetadataItemURLKey"] = NSMetadataItemURLKey;
	p = (void*) &NSMetadataUbiquitousItemIsUploadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsUploadedKey"] = NSMetadataUbiquitousItemIsUploadedKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusKey"] = NSMetadataUbiquitousItemDownloadingStatusKey;
	p = (void*) &NSMetadataItemPathKey;
	if (p != NULL) context[@"NSMetadataItemPathKey"] = NSMetadataItemPathKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadRequestedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadRequestedKey"] = NSMetadataUbiquitousItemDownloadRequestedKey;
	p = (void*) &NSMetadataUbiquitousItemIsDownloadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsDownloadedKey"] = NSMetadataUbiquitousItemIsDownloadedKey;
	p = (void*) &NSMetadataUbiquitousItemHasUnresolvedConflictsKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemHasUnresolvedConflictsKey"] = NSMetadataUbiquitousItemHasUnresolvedConflictsKey;
	p = (void*) &NSMetadataUbiquitousItemPercentDownloadedKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemPercentDownloadedKey"] = NSMetadataUbiquitousItemPercentDownloadedKey;
	p = (void*) &NSMetadataUbiquitousItemIsDownloadingKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsDownloadingKey"] = NSMetadataUbiquitousItemIsDownloadingKey;
	p = (void*) &NSMetadataItemFSContentChangeDateKey;
	if (p != NULL) context[@"NSMetadataItemFSContentChangeDateKey"] = NSMetadataItemFSContentChangeDateKey;
	p = (void*) &NSMetadataItemContentTypeTreeKey;
	if (p != NULL) context[@"NSMetadataItemContentTypeTreeKey"] = NSMetadataItemContentTypeTreeKey;
	p = (void*) &NSMetadataItemIsUbiquitousKey;
	if (p != NULL) context[@"NSMetadataItemIsUbiquitousKey"] = NSMetadataItemIsUbiquitousKey;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusCurrent;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusCurrent"] = NSMetadataUbiquitousItemDownloadingStatusCurrent;
	p = (void*) &NSMetadataUbiquitousItemDownloadingStatusNotDownloaded;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingStatusNotDownloaded"] = NSMetadataUbiquitousItemDownloadingStatusNotDownloaded;
	p = (void*) &NSMetadataUbiquitousItemDownloadingErrorKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemDownloadingErrorKey"] = NSMetadataUbiquitousItemDownloadingErrorKey;
	p = (void*) &NSMetadataItemFSCreationDateKey;
	if (p != NULL) context[@"NSMetadataItemFSCreationDateKey"] = NSMetadataItemFSCreationDateKey;
	p = (void*) &NSMetadataItemFSNameKey;
	if (p != NULL) context[@"NSMetadataItemFSNameKey"] = NSMetadataItemFSNameKey;
	p = (void*) &NSMetadataItemFSSizeKey;
	if (p != NULL) context[@"NSMetadataItemFSSizeKey"] = NSMetadataItemFSSizeKey;
	p = (void*) &NSMetadataUbiquitousItemContainerDisplayNameKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemContainerDisplayNameKey"] = NSMetadataUbiquitousItemContainerDisplayNameKey;
	p = (void*) &NSMetadataUbiquitousItemUploadingErrorKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemUploadingErrorKey"] = NSMetadataUbiquitousItemUploadingErrorKey;
	p = (void*) &NSMetadataUbiquitousItemIsUploadingKey;
	if (p != NULL) context[@"NSMetadataUbiquitousItemIsUploadingKey"] = NSMetadataUbiquitousItemIsUploadingKey;
}
void load_Foundation_NSMetadataAttributes_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
