#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLSession (Exports)
-(void) jsresetWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self resetWithCompletionHandler: completionHandler_ ];
}
-(void) jsflushWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(void) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void() {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self flushWithCompletionHandler: completionHandler_ ];
}
-(void) jsgetTasksWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * , NSArray  * , NSArray  * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0, NSArray * arg1, NSArray * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getTasksWithCompletionHandler: completionHandler_ ];
}
-(void) jsgetAllTasksWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray  * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSArray * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getAllTasksWithCompletionHandler: completionHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSession (NSURLSessionNSURLSessionAsynchronousConvenienceCategoryExports)
-(NSURLSessionDataTask *) jsdataTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionDataTask * resultVal__;
	resultVal__ = [self dataTaskWithRequest: request completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionDataTask *) jsdataTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionDataTask * resultVal__;
	resultVal__ = [self dataTaskWithURL: url completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromFile: (NSURL *) fileURL completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionUploadTask * resultVal__;
	resultVal__ = [self uploadTaskWithRequest: request fromFile: fileURL completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionUploadTask *) jsuploadTaskWithRequest: (NSURLRequest *) request fromData: (NSData *) bodyData completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionUploadTask * resultVal__;
	resultVal__ = [self uploadTaskWithRequest: request fromData: bodyData completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionDownloadTask *) jsdownloadTaskWithRequest: (NSURLRequest *) request completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURL * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURL * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionDownloadTask * resultVal__;
	resultVal__ = [self downloadTaskWithRequest: request completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionDownloadTask *) jsdownloadTaskWithURL: (NSURL *) url completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURL * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURL * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionDownloadTask * resultVal__;
	resultVal__ = [self downloadTaskWithURL: url completionHandler: completionHandler_ ];
	return resultVal__;
}
-(NSURLSessionDownloadTask *) jsdownloadTaskWithResumeData: (NSData *) resumeData completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURL * , NSURLResponse * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURL * arg0, NSURLResponse * arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	NSURLSessionDownloadTask * resultVal__;
	resultVal__ = [self downloadTaskWithResumeData: resumeData completionHandler: completionHandler_ ];
	return resultVal__;
}
@end
@implementation NSURLSessionTask (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object ];
	return resultVal__;
}
-(id) jsperformSelector: (NSString *) aSelector withObject: (id) object1 withObject: (id) object2 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	id resultVal__;
	resultVal__ = [self performSelector: aSelector_ withObject: object1 withObject: object2 ];
	return resultVal__;
}
-(BOOL) jsisKindOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isKindOfClass: aClass_ ];
	return resultVal__;
}
-(BOOL) jsisMemberOfClass: (JSValue *) aClass 
{
	Class aClass_ = objc_getClass([[aClass[@"className"] toString] cStringUsingEncoding: NSUTF8StringEncoding]);
	BOOL resultVal__;
	resultVal__ = [self isMemberOfClass: aClass_ ];
	return resultVal__;
}
-(BOOL) jsrespondsToSelector: (NSString *) aSelector 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	BOOL resultVal__;
	resultVal__ = [self respondsToSelector: aSelector_ ];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
@implementation NSURLSessionDataTask (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionUploadTask (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionDownloadTask (Exports)
-(void) jscancelByProducingResumeData: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self cancelByProducingResumeData: completionHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionStreamTask (Exports)
-(void) jsreadDataOfMinLength: (NSUInteger) minBytes maxLength: (NSUInteger) maxBytes timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * _result, BOOL, NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSData * arg0, BOOL arg1, NSError * arg2) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: [JSValue valueWithObject: @(arg1) inContext: __jsContext]];
			[parameters addObject: (arg2 ? [JSValue valueWithObject: arg2 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self readDataOfMinLength: minBytes maxLength: maxBytes timeout: timeout completionHandler: completionHandler_ ];
}
-(void) jswriteData: (NSData *) data timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self writeData: data timeout: timeout completionHandler: completionHandler_ ];
}
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionWebSocketMessage (Exports)
-(id) jsinitWithData: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithData: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithString: (NSString *) string 
{
	id resultVal__;
	resultVal__ = [[self initWithString: string ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionWebSocketTask (Exports)
-(void) jssendMessage: (NSURLSessionWebSocketMessage *) message completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self sendMessage: message completionHandler: completionHandler_ ];
}
-(void) jsreceiveMessageWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSURLSessionWebSocketMessage * , NSError * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSURLSessionWebSocketMessage * arg0, NSError * arg1) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			[parameters addObject: (arg1 ? [JSValue valueWithObject: arg1 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self receiveMessageWithCompletionHandler: completionHandler_ ];
}
-(void) jssendPingWithPongReceiveHandler: (JSValue *) pongReceiveHandler 
{
	void (^ pongReceiveHandler_)(NSError * ) = nil;
	if (!pongReceiveHandler.isUndefined) {
		pongReceiveHandler_ = ^void(NSError * arg0) {
			JSContext* __jsContext = pongReceiveHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, pongReceiveHandler, self, parameters);
		};
	}
	[self sendPingWithPongReceiveHandler: pongReceiveHandler_ ];
}
@end
@implementation NSURLSessionConfiguration (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionTaskTransactionMetrics (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
@implementation NSURLSessionTaskMetrics (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
+(id) jsnew
{
	id resultVal__;
	resultVal__ = [[self new] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionInstanceExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionClassExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionNSURLSessionAsynchronousConvenienceCategoryInstanceExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionNSURLSessionAsynchronousConvenienceCategoryClassExports));
	class_addProtocol([NSURLSessionTask class], @protocol(NSURLSessionTaskInstanceExports));
	class_addProtocol([NSURLSessionTask class], @protocol(NSURLSessionTaskClassExports));
	class_addProtocol([NSURLSessionDataTask class], @protocol(NSURLSessionDataTaskInstanceExports));
	class_addProtocol([NSURLSessionDataTask class], @protocol(NSURLSessionDataTaskClassExports));
	class_addProtocol([NSURLSessionUploadTask class], @protocol(NSURLSessionUploadTaskInstanceExports));
	class_addProtocol([NSURLSessionUploadTask class], @protocol(NSURLSessionUploadTaskClassExports));
	class_addProtocol([NSURLSessionDownloadTask class], @protocol(NSURLSessionDownloadTaskInstanceExports));
	class_addProtocol([NSURLSessionDownloadTask class], @protocol(NSURLSessionDownloadTaskClassExports));
	class_addProtocol([NSURLSessionStreamTask class], @protocol(NSURLSessionStreamTaskInstanceExports));
	class_addProtocol([NSURLSessionStreamTask class], @protocol(NSURLSessionStreamTaskClassExports));
	class_addProtocol([NSURLSessionWebSocketMessage class], @protocol(NSURLSessionWebSocketMessageInstanceExports));
	class_addProtocol([NSURLSessionWebSocketMessage class], @protocol(NSURLSessionWebSocketMessageClassExports));
	class_addProtocol([NSURLSessionWebSocketTask class], @protocol(NSURLSessionWebSocketTaskInstanceExports));
	class_addProtocol([NSURLSessionWebSocketTask class], @protocol(NSURLSessionWebSocketTaskClassExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationInstanceExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationClassExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationNSURLSessionDeprecatedCategoryInstanceExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationNSURLSessionDeprecatedCategoryClassExports));
	class_addProtocol([NSURLSessionTaskTransactionMetrics class], @protocol(NSURLSessionTaskTransactionMetricsInstanceExports));
	class_addProtocol([NSURLSessionTaskTransactionMetrics class], @protocol(NSURLSessionTaskTransactionMetricsClassExports));
	class_addProtocol([NSURLSessionTaskMetrics class], @protocol(NSURLSessionTaskMetricsInstanceExports));
	class_addProtocol([NSURLSessionTaskMetrics class], @protocol(NSURLSessionTaskMetricsClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSURLSessionTaskStateRunning"] = @0L;
	context[@"NSURLSessionTaskStateSuspended"] = @1L;
	context[@"NSURLSessionTaskStateCanceling"] = @2L;
	context[@"NSURLSessionTaskStateCompleted"] = @3L;


	context[@"NSURLSessionWebSocketMessageTypeData"] = @0L;
	context[@"NSURLSessionWebSocketMessageTypeString"] = @1L;


	context[@"NSURLSessionWebSocketCloseCodeInvalid"] = @0L;
	context[@"NSURLSessionWebSocketCloseCodeNormalClosure"] = @1000L;
	context[@"NSURLSessionWebSocketCloseCodeGoingAway"] = @1001L;
	context[@"NSURLSessionWebSocketCloseCodeProtocolError"] = @1002L;
	context[@"NSURLSessionWebSocketCloseCodeUnsupportedData"] = @1003L;
	context[@"NSURLSessionWebSocketCloseCodeNoStatusReceived"] = @1005L;
	context[@"NSURLSessionWebSocketCloseCodeAbnormalClosure"] = @1006L;
	context[@"NSURLSessionWebSocketCloseCodeInvalidFramePayloadData"] = @1007L;
	context[@"NSURLSessionWebSocketCloseCodePolicyViolation"] = @1008L;
	context[@"NSURLSessionWebSocketCloseCodeMessageTooBig"] = @1009L;
	context[@"NSURLSessionWebSocketCloseCodeMandatoryExtensionMissing"] = @1010L;
	context[@"NSURLSessionWebSocketCloseCodeInternalServerError"] = @1011L;
	context[@"NSURLSessionWebSocketCloseCodeTLSHandshakeFailure"] = @1015L;


	context[@"NSURLSessionMultipathServiceTypeNone"] = @0L;
	context[@"NSURLSessionMultipathServiceTypeHandover"] = @1L;
	context[@"NSURLSessionMultipathServiceTypeInteractive"] = @2L;
	context[@"NSURLSessionMultipathServiceTypeAggregate"] = @3L;


	context[@"NSURLSessionDelayedRequestContinueLoading"] = @0L;
	context[@"NSURLSessionDelayedRequestUseNewRequest"] = @1L;
	context[@"NSURLSessionDelayedRequestCancel"] = @2L;


	context[@"NSURLSessionAuthChallengeUseCredential"] = @0L;
	context[@"NSURLSessionAuthChallengePerformDefaultHandling"] = @1L;
	context[@"NSURLSessionAuthChallengeCancelAuthenticationChallenge"] = @2L;
	context[@"NSURLSessionAuthChallengeRejectProtectionSpace"] = @3L;


	context[@"NSURLSessionResponseCancel"] = @0L;
	context[@"NSURLSessionResponseAllow"] = @1L;
	context[@"NSURLSessionResponseBecomeDownload"] = @2L;
	context[@"NSURLSessionResponseBecomeStream"] = @3L;


	context[@"NSURLSessionTaskMetricsResourceFetchTypeUnknown"] = @0L;
	context[@"NSURLSessionTaskMetricsResourceFetchTypeNetworkLoad"] = @1L;
	context[@"NSURLSessionTaskMetricsResourceFetchTypeServerPush"] = @2L;
	context[@"NSURLSessionTaskMetricsResourceFetchTypeLocalCache"] = @3L;


	context[@"NSURLSessionTaskMetricsDomainResolutionProtocolUnknown"] = @0L;
	context[@"NSURLSessionTaskMetricsDomainResolutionProtocolUDP"] = @1L;
	context[@"NSURLSessionTaskMetricsDomainResolutionProtocolTCP"] = @2L;
	context[@"NSURLSessionTaskMetricsDomainResolutionProtocolTLS"] = @3L;
	context[@"NSURLSessionTaskMetricsDomainResolutionProtocolHTTPS"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSURLSessionTransferSizeUnknown;
	if (p != NULL) context[@"NSURLSessionTransferSizeUnknown"] = @(NSURLSessionTransferSizeUnknown);
	p = (void*) &NSURLSessionTaskPriorityDefault;
	if (p != NULL) context[@"NSURLSessionTaskPriorityDefault"] = @(NSURLSessionTaskPriorityDefault);
	p = (void*) &NSURLSessionTaskPriorityLow;
	if (p != NULL) context[@"NSURLSessionTaskPriorityLow"] = @(NSURLSessionTaskPriorityLow);
	p = (void*) &NSURLSessionTaskPriorityHigh;
	if (p != NULL) context[@"NSURLSessionTaskPriorityHigh"] = @(NSURLSessionTaskPriorityHigh);
	p = (void*) &NSURLSessionDownloadTaskResumeData;
	if (p != NULL) context[@"NSURLSessionDownloadTaskResumeData"] = NSURLSessionDownloadTaskResumeData;
}
void Foundation_NSURLSessionProtocols()
{
	(void)objc_getProtocol('NSURLSessionDelegate');
	(void)objc_getProtocol('NSURLSessionTaskDelegate');
	(void)objc_getProtocol('NSURLSessionDataDelegate');
	(void)objc_getProtocol('NSURLSessionDownloadDelegate');
	(void)objc_getProtocol('NSURLSessionStreamDelegate');
	(void)objc_getProtocol('NSURLSessionWebSocketDelegate');
}
void load_Foundation_NSURLSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
