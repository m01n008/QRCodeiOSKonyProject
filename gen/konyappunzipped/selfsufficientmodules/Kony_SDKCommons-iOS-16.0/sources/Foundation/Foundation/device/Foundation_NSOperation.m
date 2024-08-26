#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSOperation (Exports)
-(JSValue *) getJsCompletionBlock
{
	return [JSValue valueWithObject: self.completionBlock inContext: [JSContext currentContext]];
}
-(void) setJsCompletionBlock: (JSValue *) value
{
	void (^ value_)(void) = nil;
	if (!value.isUndefined) {
		value_ = ^void() {
			JSContext* __jsContext = value.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, value, self, parameters);
		};
	}
	self.completionBlock = value_;
}
@end
@implementation NSBlockOperation (Exports)
-(void) jsaddExecutionBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self addExecutionBlock: block_ ];
}
+(id) jsblockOperationWithBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	id resultVal__;
	resultVal__ = [self blockOperationWithBlock: block_ ];
	return resultVal__;
}
@end
@implementation NSInvocationOperation (Exports)
-(id) jsinitWithTarget: (id) target selector: (NSString *) sel object: (id) arg 
{
	SEL sel_ = NSSelectorFromString(sel);
	id resultVal__;
	resultVal__ = [[self initWithTarget: target selector: sel_ object: arg ] autorelease];
	return resultVal__;
}
-(id) jsinitWithInvocation: (NSInvocation *) inv 
{
	id resultVal__;
	resultVal__ = [[self initWithInvocation: inv ] autorelease];
	return resultVal__;
}
@end
@implementation NSOperationQueue (Exports)
-(void) jsaddOperationWithBlock: (JSValue *) block 
{
	void (^ block_)(void) = nil;
	if (!block.isUndefined) {
		block_ = ^void() {
			JSContext* __jsContext = block.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, block, self, parameters);
		};
	}
	[self addOperationWithBlock: block_ ];
}
-(void) jsaddBarrierBlock: (JSValue *) barrier 
{
	void (^ barrier_)(void) = nil;
	if (!barrier.isUndefined) {
		barrier_ = ^void() {
			JSContext* __jsContext = barrier.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, barrier, self, parameters);
		};
	}
	[self addBarrierBlock: barrier_ ];
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
-(JSValue *) getJsSuperclass
{
	return [JSValue valueWithObject: self.superclass inContext: [JSContext currentContext]];
}
@end
static void addProtocols()
{
	class_addProtocol([NSOperation class], @protocol(NSOperationInstanceExports));
	class_addProtocol([NSOperation class], @protocol(NSOperationClassExports));
	class_addProtocol([NSBlockOperation class], @protocol(NSBlockOperationInstanceExports));
	class_addProtocol([NSBlockOperation class], @protocol(NSBlockOperationClassExports));
	class_addProtocol([NSInvocationOperation class], @protocol(NSInvocationOperationInstanceExports));
	class_addProtocol([NSInvocationOperation class], @protocol(NSInvocationOperationClassExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueInstanceExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueClassExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueNSDeprecatedCategoryInstanceExports));
	class_addProtocol([NSOperationQueue class], @protocol(NSOperationQueueNSDeprecatedCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSOperationQueuePriorityVeryLow"] = @-8;
	context[@"NSOperationQueuePriorityLow"] = @-4;
	context[@"NSOperationQueuePriorityNormal"] = @0;
	context[@"NSOperationQueuePriorityHigh"] = @4;
	context[@"NSOperationQueuePriorityVeryHigh"] = @8;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSInvocationOperationVoidResultException;
	if (p != NULL) context[@"NSInvocationOperationVoidResultException"] = NSInvocationOperationVoidResultException;
	p = (void*) &NSInvocationOperationCancelledException;
	if (p != NULL) context[@"NSInvocationOperationCancelledException"] = NSInvocationOperationCancelledException;
	p = (void*) &NSOperationQueueDefaultMaxConcurrentOperationCount;
	if (p != NULL) context[@"NSOperationQueueDefaultMaxConcurrentOperationCount"] = @(NSOperationQueueDefaultMaxConcurrentOperationCount);
}
void load_Foundation_NSOperation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
