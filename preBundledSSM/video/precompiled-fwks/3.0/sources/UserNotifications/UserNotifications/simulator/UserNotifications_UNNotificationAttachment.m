#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UNNotificationAttachment (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
+(id) jsattachmentWithIdentifier: (NSString *) identifier URL: (NSURL *) URL options: (NSDictionary *) options error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [self attachmentWithIdentifier: identifier URL: URL options: options error: &error_ ];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UNNotificationAttachment class], @protocol(UNNotificationAttachmentInstanceExports));
	class_addProtocol([UNNotificationAttachment class], @protocol(UNNotificationAttachmentClassExports));
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
	p = (void*) &UNNotificationAttachmentOptionsThumbnailTimeKey;
	if (p != NULL) context[@"UNNotificationAttachmentOptionsThumbnailTimeKey"] = UNNotificationAttachmentOptionsThumbnailTimeKey;
	p = (void*) &UNNotificationAttachmentOptionsThumbnailHiddenKey;
	if (p != NULL) context[@"UNNotificationAttachmentOptionsThumbnailHiddenKey"] = UNNotificationAttachmentOptionsThumbnailHiddenKey;
	p = (void*) &UNNotificationAttachmentOptionsThumbnailClippingRectKey;
	if (p != NULL) context[@"UNNotificationAttachmentOptionsThumbnailClippingRectKey"] = UNNotificationAttachmentOptionsThumbnailClippingRectKey;
	p = (void*) &UNNotificationAttachmentOptionsTypeHintKey;
	if (p != NULL) context[@"UNNotificationAttachmentOptionsTypeHintKey"] = UNNotificationAttachmentOptionsTypeHintKey;
}
void load_UserNotifications_UNNotificationAttachment_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
