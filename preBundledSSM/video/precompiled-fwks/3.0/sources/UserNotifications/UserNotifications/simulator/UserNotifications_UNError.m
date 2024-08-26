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
	context[@"UNErrorCodeNotificationsNotAllowed"] = @1L;
	context[@"UNErrorCodeAttachmentInvalidURL"] = @100L;
	context[@"UNErrorCodeAttachmentUnrecognizedType"] = @101L;
	context[@"UNErrorCodeAttachmentInvalidFileSize"] = @102L;
	context[@"UNErrorCodeAttachmentNotInDataStore"] = @103L;
	context[@"UNErrorCodeAttachmentMoveIntoDataStoreFailed"] = @104L;
	context[@"UNErrorCodeAttachmentCorrupt"] = @105L;
	context[@"UNErrorCodeNotificationInvalidNoDate"] = @1400L;
	context[@"UNErrorCodeNotificationInvalidNoContent"] = @1401L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UNErrorDomain;
	if (p != NULL) context[@"UNErrorDomain"] = UNErrorDomain;
}
void load_UserNotifications_UNError_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
