#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation BinaryFileStorageInterface (Exports)
+(void) jsgetFilesWithUrl: (NSString *) url criteria: (NSString *) criteria headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self getFilesWithUrl: url criteria: criteria headers: headers onSuccess: onSuccess_ onFailure: onFailure_ options: options ];
}
+(void) jsuploadBinaryWithUrl: (NSString *) url InputType: (NSString *) uploadInputType uploadParams: (NSDictionary *) uploadParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	void (^ onProgress_)(NSDictionary  *) = nil;
	if (!onProgress.isUndefined) {
		onProgress_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onProgress.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onProgress, self, parameters);
		};
	}
	[self uploadBinaryWithUrl: url InputType: uploadInputType uploadParams: uploadParams onSuccess: onSuccess_ onFailure: onFailure_ onProgress: onProgress_ options: options ];
}
+(void) jsdownloadWithURL: (NSString *) url Params: (NSDictionary *) downloadParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	void (^ onProgress_)(NSDictionary  *) = nil;
	if (!onProgress.isUndefined) {
		onProgress_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onProgress.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onProgress, self, parameters);
		};
	}
	[self downloadWithURL: url Params: downloadParams onSuccess: onSuccess_ onFailure: onFailure_ onProgress: onProgress_ options: options ];
}
+(void) jsupdateWithUrl: (NSString *) url Params: (NSDictionary *) updateParams onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self updateWithUrl: url Params: updateParams onSuccess: onSuccess_ onFailure: onFailure_ options: options ];
}
+(void) jsdeleteWithUrl: (NSString *) url fileId: (NSString *) fileId deleteParams: (NSDictionary *) deleteParams headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self deleteWithUrl: url fileId: fileId deleteParams: deleteParams headers: headers onSuccess: onSuccess_ onFailure: onFailure_ options: options ];
}
+(void) jsdeleteByCriteria: (NSString *) url deleteCriteria: (NSDictionary *) deleteCriteria headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self deleteByCriteria: url deleteCriteria: deleteCriteria headers: headers onSuccess: onSuccess_ onFailure: onFailure_ options: options ];
}
+(void) jsabortWithUrl: (NSString *) url fileId: (NSString *) fileId abortParams: (NSDictionary *) abortParams headers: (NSDictionary *) headers onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure options: (NSDictionary *) options 
{
	void (^ onSuccess_)(NSDictionary  *) = nil;
	if (!onSuccess.isUndefined) {
		onSuccess_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onSuccess.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onSuccess, self, parameters);
		};
	}
	void (^ onFailure_)(NSDictionary  *) = nil;
	if (!onFailure.isUndefined) {
		onFailure_ = ^void(NSDictionary * arg0) {
			JSContext* __jsContext = onFailure.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, onFailure, self, parameters);
		};
	}
	[self abortWithUrl: url fileId: fileId abortParams: abortParams headers: headers onSuccess: onSuccess_ onFailure: onFailure_ options: options ];
}
@end
static void addProtocols()
{
	class_addProtocol([BinaryFileStorageInterface class], @protocol(BinaryFileStorageInterfaceInstanceExports));
	class_addProtocol([BinaryFileStorageInterface class], @protocol(BinaryFileStorageInterfaceClassExports));
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
void load_Binary_BinaryFileStorageInterface_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
