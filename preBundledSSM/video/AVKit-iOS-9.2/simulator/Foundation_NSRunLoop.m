#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSObject (NSObjectNSDelayedPerformingCategoryExports)
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ withObject: anArgument afterDelay: delay ];
}
-(void) jsperformSelector: (NSString *) aSelector withObject: (id) anArgument afterDelay: (NSTimeInterval) delay inModes: (NSArray *) modes 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ withObject: anArgument afterDelay: delay inModes: modes ];
}
+(void) jscancelPreviousPerformRequestsWithTarget: (id) aTarget selector: (NSString *) aSelector object: (id) anArgument 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self cancelPreviousPerformRequestsWithTarget: aTarget selector: aSelector_ object: anArgument ];
}
@end
@implementation NSRunLoop (NSRunLoopNSOrderedPerformCategoryExports)
-(void) jsperformSelector: (NSString *) aSelector target: (id) target argument: (id) arg order: (NSUInteger) order modes: (NSArray *) modes 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self performSelector: aSelector_ target: target argument: arg order: order modes: modes ];
}
-(void) jscancelPerformSelector: (NSString *) aSelector target: (id) target argument: (id) arg 
{
	SEL aSelector_ = NSSelectorFromString(aSelector);
	[self cancelPerformSelector: aSelector_ target: target argument: arg ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSObject class], @protocol(NSObjectNSDelayedPerformingCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectNSDelayedPerformingCategoryClassExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSOrderedPerformCategoryInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSOrderedPerformCategoryClassExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopClassExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSRunLoopConveniencesCategoryInstanceExports));
	class_addProtocol([NSRunLoop class], @protocol(NSRunLoopNSRunLoopConveniencesCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &NSDefaultRunLoopMode;
	if (p != NULL) context[@"NSDefaultRunLoopMode"] = NSDefaultRunLoopMode;
	p = (void*) &NSRunLoopCommonModes;
	if (p != NULL) context[@"NSRunLoopCommonModes"] = NSRunLoopCommonModes;
}
void load_Foundation_NSRunLoop_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
