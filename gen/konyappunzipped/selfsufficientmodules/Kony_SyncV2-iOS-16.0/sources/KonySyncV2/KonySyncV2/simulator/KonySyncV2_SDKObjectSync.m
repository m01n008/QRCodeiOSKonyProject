#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation SDKObjectSync (Exports)
-(id) jsinitWithName: (NSString *) name error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithName: name error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(id) jsinitWithName: (NSString *) name andObjectServiceName: (NSString *) objectServiceName error: (JSValue *) error 
{
	NSError* error_ = nil;
	id resultVal__;
	resultVal__ = [[self initWithName: name andObjectServiceName: objectServiceName error: &error_ ] autorelease];
	if (error_ && [error isObject]) {
		error[@"error"] = error_;
	}
	return resultVal__;
}
-(void) jsstartSync: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	void (^ onProgress_)(id) = nil;
	if (!onProgress.isUndefined) {
		onProgress_ = ^void(id arg0) {
			JSContext* __jsContext = onProgress.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onProgress, self, parameters);
		};
	}
	[self startSync: options onSuccess: onSuccess_ onFailure: onFailure_ onProgress: onProgress_ ];
}
-(void) jsgetPendingRecordsForUpload: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self getPendingRecordsForUpload: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jscreate: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self create: record options: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsupdateByPK: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self updateByPK: record options: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsupdate: (NSDictionary *) record options: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self update: record options: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsdeleteByPK: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self deleteByPK: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsdelete: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self delete: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsget: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self get: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsrollback: (NSDictionary *) primaryKeyValueMap onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self rollback: primaryKeyValueMap onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsgetBinary: (NSDictionary *) options downloadStartedHandler: (JSValue *) fileDownloadStartedCompletionBlock chunkDownloadCompletedHandler: (JSValue *) chunkDownloadCompletedCompletionBlock streamDownloadCompletedHandler: (JSValue *) streamDownloadCompletionBlock fileDownloadCompletedHandler: (JSValue *) fileDownloadCompletedCompletionBlock downloadFailureHandler: (JSValue *) downloadFailureCompletionBlock 
{
	void (^ fileDownloadStartedCompletionBlock_)(id) = nil;
	if (!fileDownloadStartedCompletionBlock.isUndefined) {
		fileDownloadStartedCompletionBlock_ = ^void(id arg0) {
			JSContext* __jsContext = fileDownloadStartedCompletionBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, fileDownloadStartedCompletionBlock, self, parameters);
		};
	}
	void (^ chunkDownloadCompletedCompletionBlock_)(id) = nil;
	if (!chunkDownloadCompletedCompletionBlock.isUndefined) {
		chunkDownloadCompletedCompletionBlock_ = ^void(id arg0) {
			JSContext* __jsContext = chunkDownloadCompletedCompletionBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, chunkDownloadCompletedCompletionBlock, self, parameters);
		};
	}
	void (^ streamDownloadCompletionBlock_)(id) = nil;
	if (!streamDownloadCompletionBlock.isUndefined) {
		streamDownloadCompletionBlock_ = ^void(id arg0) {
			JSContext* __jsContext = streamDownloadCompletionBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, streamDownloadCompletionBlock, self, parameters);
		};
	}
	void (^ fileDownloadCompletedCompletionBlock_)(id) = nil;
	if (!fileDownloadCompletedCompletionBlock.isUndefined) {
		fileDownloadCompletedCompletionBlock_ = ^void(id arg0) {
			JSContext* __jsContext = fileDownloadCompletedCompletionBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, fileDownloadCompletedCompletionBlock, self, parameters);
		};
	}
	void (^ downloadFailureCompletionBlock_)(id) = nil;
	if (!downloadFailureCompletionBlock.isUndefined) {
		downloadFailureCompletionBlock_ = ^void(id arg0) {
			JSContext* __jsContext = downloadFailureCompletionBlock.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, downloadFailureCompletionBlock, self, parameters);
		};
	}
	[self getBinary: options downloadStartedHandler: fileDownloadStartedCompletionBlock_ chunkDownloadCompletedHandler: chunkDownloadCompletedCompletionBlock_ streamDownloadCompletedHandler: streamDownloadCompletionBlock_ fileDownloadCompletedHandler: fileDownloadCompletedCompletionBlock_ downloadFailureHandler: downloadFailureCompletionBlock_ ];
}
-(void) jsgetBinaryStatus: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self getBinaryStatus: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsmarkForUpload: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self markForUpload: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsgetUploadDeferredRecordKeys: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self getUploadDeferredRecordKeys: onSuccess_ onFailure: onFailure_ ];
}
-(void) jscancelSync: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self cancelSync: onSuccess_ onFailure: onFailure_ ];
}
-(void) jsclearDataWithOptions: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
{
	void (^ onSuccess_)(id) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(id arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(id) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(id arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self clearDataWithOptions: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([SDKObjectSync class], @protocol(SDKObjectSyncInstanceExports));
	class_addProtocol([SDKObjectSync class], @protocol(SDKObjectSyncClassExports));
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
}
void load_KonySyncV2_SDKObjectSync_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
