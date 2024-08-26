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
	class_addProtocol([UIActivity class], @protocol(UIActivityInstanceExports));
	class_addProtocol([UIActivity class], @protocol(UIActivityClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIActivityCategoryAction"] = @0;
	context[@"UIActivityCategoryShare"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIActivityTypePostToTencentWeibo;
	if (p != NULL) context[@"UIActivityTypePostToTencentWeibo"] = UIActivityTypePostToTencentWeibo;
	p = (void*) &UIActivityTypePostToWeibo;
	if (p != NULL) context[@"UIActivityTypePostToWeibo"] = UIActivityTypePostToWeibo;
	p = (void*) &UIActivityTypeAddToReadingList;
	if (p != NULL) context[@"UIActivityTypeAddToReadingList"] = UIActivityTypeAddToReadingList;
	p = (void*) &UIActivityTypePostToTwitter;
	if (p != NULL) context[@"UIActivityTypePostToTwitter"] = UIActivityTypePostToTwitter;
	p = (void*) &UIActivityTypeAirDrop;
	if (p != NULL) context[@"UIActivityTypeAirDrop"] = UIActivityTypeAirDrop;
	p = (void*) &UIActivityTypeSaveToCameraRoll;
	if (p != NULL) context[@"UIActivityTypeSaveToCameraRoll"] = UIActivityTypeSaveToCameraRoll;
	p = (void*) &UIActivityTypeMessage;
	if (p != NULL) context[@"UIActivityTypeMessage"] = UIActivityTypeMessage;
	p = (void*) &UIActivityTypePostToVimeo;
	if (p != NULL) context[@"UIActivityTypePostToVimeo"] = UIActivityTypePostToVimeo;
	p = (void*) &UIActivityTypePostToFlickr;
	if (p != NULL) context[@"UIActivityTypePostToFlickr"] = UIActivityTypePostToFlickr;
	p = (void*) &UIActivityTypeAssignToContact;
	if (p != NULL) context[@"UIActivityTypeAssignToContact"] = UIActivityTypeAssignToContact;
	p = (void*) &UIActivityTypeOpenInIBooks;
	if (p != NULL) context[@"UIActivityTypeOpenInIBooks"] = UIActivityTypeOpenInIBooks;
	p = (void*) &UIActivityTypePostToFacebook;
	if (p != NULL) context[@"UIActivityTypePostToFacebook"] = UIActivityTypePostToFacebook;
	p = (void*) &UIActivityTypeMail;
	if (p != NULL) context[@"UIActivityTypeMail"] = UIActivityTypeMail;
	p = (void*) &UIActivityTypePrint;
	if (p != NULL) context[@"UIActivityTypePrint"] = UIActivityTypePrint;
	p = (void*) &UIActivityTypeCopyToPasteboard;
	if (p != NULL) context[@"UIActivityTypeCopyToPasteboard"] = UIActivityTypeCopyToPasteboard;
}
void load_UIKit_UIActivity_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
