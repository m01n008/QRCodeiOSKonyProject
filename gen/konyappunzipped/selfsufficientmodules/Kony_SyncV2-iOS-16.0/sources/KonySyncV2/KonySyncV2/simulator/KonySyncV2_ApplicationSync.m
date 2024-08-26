#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation ApplicationSync (Exports)
+(void) jssetupSync: (NSDictionary *) objectServiceList withOptions: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
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
	[self setupSync: objectServiceList withOptions: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
+(void) jsdrop: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
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
	[self drop: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
+(void) jsreset: (NSDictionary *) objectServiceList withOptions: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
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
	[self reset: objectServiceList withOptions: options onSuccess: onSuccess_ onFailure: onFailure_ ];
}
+(void) jsrollback: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
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
	[self rollback: onSuccess_ onFailure: onFailure_ ];
}
+(void) jsexecuteSelectQuery: (NSString *) query onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure 
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
	[self executeSelectQuery: query onSuccess: onSuccess_ onFailure: onFailure_ ];
}
+(void) jsstartSync: (NSDictionary *) options onSuccess: (JSValue *) onSuccess onFailure: (JSValue *) onFailure onProgress: (JSValue *) onProgress 
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
@end
static void addProtocols()
{
	class_addProtocol([ApplicationSync class], @protocol(ApplicationSyncInstanceExports));
	class_addProtocol([ApplicationSync class], @protocol(ApplicationSyncClassExports));
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
void load_KonySyncV2_ApplicationSync_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
