#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation AVContentKeyRequest (Exports)
-(void) jsmakeStreamingContentKeyRequestDataForApp: (NSData *) appIdentifier contentIdentifier: (NSData *) contentIdentifier options: (NSDictionary *) options completionHandler: (JSValue *) handler 
{
	void (^ handler_)(NSData * , NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self makeStreamingContentKeyRequestDataForApp: appIdentifier contentIdentifier: contentIdentifier options: options completionHandler: handler_ ];
}
@end
@implementation AVContentKeySession (Exports)
-(void) jsmakeSecureTokenForExpirationDateOfPersistableContentKey: (NSData *) persistableContentKeyData completionHandler: (JSValue *) handler 
{
	void (^ handler_)(NSData * , NSError * ) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void(NSData * arg0, NSError * arg1) {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	[self makeSecureTokenForExpirationDateOfPersistableContentKey: persistableContentKeyData completionHandler: handler_ ];
}
@end
@implementation AVPersistableContentKeyRequest (Exports)
-(NSData *) jspersistableContentKeyFromKeyVendorResponse: (NSData *) keyVendorResponse options: (NSDictionary *) options error: (JSValue *) outError 
{
	NSError* outError_ = nil;
	NSData * resultVal__;
	resultVal__ = [self persistableContentKeyFromKeyVendorResponse: keyVendorResponse options: options error: &outError_ ];
	if (outError_ && [outError isObject]) {
		outError[@"error"] = outError_;
	}
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([AVContentKeyRequest class], @protocol(AVContentKeyRequestInstanceExports));
	class_addProtocol([AVContentKeyRequest class], @protocol(AVContentKeyRequestClassExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionInstanceExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionClassExports));
	class_addProtocol([AVPersistableContentKeyRequest class], @protocol(AVPersistableContentKeyRequestInstanceExports));
	class_addProtocol([AVPersistableContentKeyRequest class], @protocol(AVPersistableContentKeyRequestClassExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionAVContentKeySessionPendingExpiredSessionReportsCategoryInstanceExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionAVContentKeySessionPendingExpiredSessionReportsCategoryClassExports));
	class_addProtocol([AVContentKeyRequest class], @protocol(AVContentKeyRequestAVContentKeyRequestRenewalCategoryInstanceExports));
	class_addProtocol([AVContentKeyRequest class], @protocol(AVContentKeyRequestAVContentKeyRequestRenewalCategoryClassExports));
	class_addProtocol([AVContentKeyResponse class], @protocol(AVContentKeyResponseInstanceExports));
	class_addProtocol([AVContentKeyResponse class], @protocol(AVContentKeyResponseClassExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionAVContentKeyRecipientsCategoryInstanceExports));
	class_addProtocol([AVContentKeySession class], @protocol(AVContentKeySessionAVContentKeyRecipientsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVContentKeyRequestStatusRequestingResponse"] = @0L;
	context[@"AVContentKeyRequestStatusReceivedResponse"] = @1L;
	context[@"AVContentKeyRequestStatusRenewed"] = @2L;
	context[@"AVContentKeyRequestStatusRetried"] = @3L;
	context[@"AVContentKeyRequestStatusCancelled"] = @4L;
	context[@"AVContentKeyRequestStatusFailed"] = @5L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVContentKeyRequestRetryReasonReceivedResponseWithExpiredLease;
	if (p != NULL) context[@"AVContentKeyRequestRetryReasonReceivedResponseWithExpiredLease"] = AVContentKeyRequestRetryReasonReceivedResponseWithExpiredLease;
	p = (void*) &AVContentKeyRequestRetryReasonReceivedObsoleteContentKey;
	if (p != NULL) context[@"AVContentKeyRequestRetryReasonReceivedObsoleteContentKey"] = AVContentKeyRequestRetryReasonReceivedObsoleteContentKey;
	p = (void*) &AVContentKeySystemFairPlayStreaming;
	if (p != NULL) context[@"AVContentKeySystemFairPlayStreaming"] = AVContentKeySystemFairPlayStreaming;
	p = (void*) &AVContentKeySystemClearKey;
	if (p != NULL) context[@"AVContentKeySystemClearKey"] = AVContentKeySystemClearKey;
	p = (void*) &AVContentKeyRequestRetryReasonTimedOut;
	if (p != NULL) context[@"AVContentKeyRequestRetryReasonTimedOut"] = AVContentKeyRequestRetryReasonTimedOut;
	p = (void*) &AVContentKeyRequestProtocolVersionsKey;
	if (p != NULL) context[@"AVContentKeyRequestProtocolVersionsKey"] = AVContentKeyRequestProtocolVersionsKey;
}
void AVFoundation_AVContentKeySessionProtocols()
{
	(void)@protocol(AVContentKeyRecipient);
	(void)@protocol(AVContentKeySessionDelegate);
}
void load_AVFoundation_AVContentKeySession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
