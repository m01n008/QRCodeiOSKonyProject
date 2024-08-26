#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLSession (Exports)
-(void) jsgetTasksWithCompletionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSArray<NSURLSessionDataTask *> * , NSArray<NSURLSessionUploadTask *> * , NSArray<NSURLSessionDownloadTask *> * ) = nil;
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
	void (^ completionHandler_)(NSArray<__kindof NSURLSessionTask *> * ) = nil;
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
@end
@implementation NSURLSession (NSURLSessionNSURLSessionAsynchronousConvenienceCategoryExports)
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
@end
@implementation NSURLSessionStreamTask (Exports)
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
-(void) jsreadDataOfMinLength: (NSUInteger) minBytes maxLength: (NSUInteger) maxBytes timeout: (NSTimeInterval) timeout completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSData * , BOOL, NSError * ) = nil;
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
@end
static void addProtocols()
{
	class_addProtocol([NSURLSessionDataTask class], @protocol(NSURLSessionDataTaskInstanceExports));
	class_addProtocol([NSURLSessionDataTask class], @protocol(NSURLSessionDataTaskClassExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionInstanceExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionClassExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationNSURLSessionDeprecatedCategoryInstanceExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationNSURLSessionDeprecatedCategoryClassExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionNSURLSessionAsynchronousConvenienceCategoryInstanceExports));
	class_addProtocol([NSURLSession class], @protocol(NSURLSessionNSURLSessionAsynchronousConvenienceCategoryClassExports));
	class_addProtocol([NSURLSessionUploadTask class], @protocol(NSURLSessionUploadTaskInstanceExports));
	class_addProtocol([NSURLSessionUploadTask class], @protocol(NSURLSessionUploadTaskClassExports));
	class_addProtocol([NSURLSessionTask class], @protocol(NSURLSessionTaskInstanceExports));
	class_addProtocol([NSURLSessionTask class], @protocol(NSURLSessionTaskClassExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationInstanceExports));
	class_addProtocol([NSURLSessionConfiguration class], @protocol(NSURLSessionConfigurationClassExports));
	class_addProtocol([NSURLSessionStreamTask class], @protocol(NSURLSessionStreamTaskInstanceExports));
	class_addProtocol([NSURLSessionStreamTask class], @protocol(NSURLSessionStreamTaskClassExports));
	class_addProtocol([NSURLSessionDownloadTask class], @protocol(NSURLSessionDownloadTaskInstanceExports));
	class_addProtocol([NSURLSessionDownloadTask class], @protocol(NSURLSessionDownloadTaskClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"NSURLSessionTaskStateRunning"] = @0;
	context[@"NSURLSessionTaskStateSuspended"] = @1;
	context[@"NSURLSessionTaskStateCanceling"] = @2;
	context[@"NSURLSessionTaskStateCompleted"] = @3;

	context[@"NSURLSessionAuthChallengeUseCredential"] = @0;
	context[@"NSURLSessionAuthChallengePerformDefaultHandling"] = @1;
	context[@"NSURLSessionAuthChallengeCancelAuthenticationChallenge"] = @2;
	context[@"NSURLSessionAuthChallengeRejectProtectionSpace"] = @3;

	context[@"NSURLSessionResponseCancel"] = @0;
	context[@"NSURLSessionResponseAllow"] = @1;
	context[@"NSURLSessionResponseBecomeDownload"] = @2;
	context[@"NSURLSessionResponseBecomeStream"] = @3;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSURLSessionTaskPriorityDefault;
	if (p != NULL) context[@"NSURLSessionTaskPriorityDefault"] = @(NSURLSessionTaskPriorityDefault);
	p = (void*) &NSURLSessionDownloadTaskResumeData;
	if (p != NULL) context[@"NSURLSessionDownloadTaskResumeData"] = NSURLSessionDownloadTaskResumeData;
	p = (void*) &NSURLSessionTaskPriorityHigh;
	if (p != NULL) context[@"NSURLSessionTaskPriorityHigh"] = @(NSURLSessionTaskPriorityHigh);
	p = (void*) &NSURLSessionTransferSizeUnknown;
	if (p != NULL) context[@"NSURLSessionTransferSizeUnknown"] = @(NSURLSessionTransferSizeUnknown);
	p = (void*) &NSURLSessionTaskPriorityLow;
	if (p != NULL) context[@"NSURLSessionTaskPriorityLow"] = @(NSURLSessionTaskPriorityLow);
}
void Foundation_NSURLSessionProtocols()
{
	(void)@protocol(NSURLSessionTaskDelegate);
	(void)@protocol(NSURLSessionStreamDelegate);
	(void)@protocol(NSURLSessionDownloadDelegate);
	(void)@protocol(NSURLSessionDelegate);
	(void)@protocol(NSURLSessionDataDelegate);
}
void load_Foundation_NSURLSession_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
