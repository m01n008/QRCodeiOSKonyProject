#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSProgress (Exports)
-(id) jsinitWithParent: (NSProgress *) parentProgressOrNil userInfo: (NSDictionary *) userInfoOrNil 
{
	id resultVal__;
	resultVal__ = [[self initWithParent: parentProgressOrNil userInfo: userInfoOrNil ] autorelease];
	return resultVal__;
}
-(void) jsperformAsCurrentWithPendingUnitCount: (int64_t) unitCount usingBlock: (JSValue *) work 
{
	void (^ work_)(void) = nil;
	if (!work.isUndefined) {
		work_ = ^void() {
			JSContext* __jsContext = work.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, work, self, parameters);
		};
	}
	[self performAsCurrentWithPendingUnitCount: unitCount usingBlock: work_ ];
}
-(JSValue *) getJsCancellationHandler
{
	return [JSValue valueWithObject: self.cancellationHandler inContext: [JSContext currentContext]];
}
-(void) setJsCancellationHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.cancellationHandler = value_;
}
-(JSValue *) getJsPausingHandler
{
	return [JSValue valueWithObject: self.pausingHandler inContext: [JSContext currentContext]];
}
-(void) setJsPausingHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.pausingHandler = value_;
}
-(JSValue *) getJsResumingHandler
{
	return [JSValue valueWithObject: self.resumingHandler inContext: [JSContext currentContext]];
}
-(void) setJsResumingHandler: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.resumingHandler = value_;
}
@end
static void addProtocols()
{
	class_addProtocol([NSProgress class], @protocol(NSProgressInstanceExports));
	class_addProtocol([NSProgress class], @protocol(NSProgressClassExports));
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
	p = (void*) &NSProgressEstimatedTimeRemainingKey;
	if (p != NULL) context[@"NSProgressEstimatedTimeRemainingKey"] = NSProgressEstimatedTimeRemainingKey;
	p = (void*) &NSProgressThroughputKey;
	if (p != NULL) context[@"NSProgressThroughputKey"] = NSProgressThroughputKey;
	p = (void*) &NSProgressKindFile;
	if (p != NULL) context[@"NSProgressKindFile"] = NSProgressKindFile;
	p = (void*) &NSProgressFileOperationKindKey;
	if (p != NULL) context[@"NSProgressFileOperationKindKey"] = NSProgressFileOperationKindKey;
	p = (void*) &NSProgressFileOperationKindDownloading;
	if (p != NULL) context[@"NSProgressFileOperationKindDownloading"] = NSProgressFileOperationKindDownloading;
	p = (void*) &NSProgressFileOperationKindDecompressingAfterDownloading;
	if (p != NULL) context[@"NSProgressFileOperationKindDecompressingAfterDownloading"] = NSProgressFileOperationKindDecompressingAfterDownloading;
	p = (void*) &NSProgressFileOperationKindReceiving;
	if (p != NULL) context[@"NSProgressFileOperationKindReceiving"] = NSProgressFileOperationKindReceiving;
	p = (void*) &NSProgressFileOperationKindCopying;
	if (p != NULL) context[@"NSProgressFileOperationKindCopying"] = NSProgressFileOperationKindCopying;
	p = (void*) &NSProgressFileOperationKindUploading;
	if (p != NULL) context[@"NSProgressFileOperationKindUploading"] = NSProgressFileOperationKindUploading;
	p = (void*) &NSProgressFileOperationKindDuplicating;
	if (p != NULL) context[@"NSProgressFileOperationKindDuplicating"] = NSProgressFileOperationKindDuplicating;
	p = (void*) &NSProgressFileURLKey;
	if (p != NULL) context[@"NSProgressFileURLKey"] = NSProgressFileURLKey;
	p = (void*) &NSProgressFileTotalCountKey;
	if (p != NULL) context[@"NSProgressFileTotalCountKey"] = NSProgressFileTotalCountKey;
	p = (void*) &NSProgressFileCompletedCountKey;
	if (p != NULL) context[@"NSProgressFileCompletedCountKey"] = NSProgressFileCompletedCountKey;
}
void Foundation_NSProgressProtocols()
{
	(void)objc_getProtocol('NSProgressReporting');
}
void load_Foundation_NSProgress_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
