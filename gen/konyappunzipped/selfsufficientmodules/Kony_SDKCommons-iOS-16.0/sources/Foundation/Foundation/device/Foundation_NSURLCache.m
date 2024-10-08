#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSCachedURLResponse (Exports)
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data 
{
	id resultVal__;
	resultVal__ = [[self initWithResponse: response data: data ] autorelease];
	return resultVal__;
}
-(id) jsinitWithResponse: (NSURLResponse *) response data: (NSData *) data userInfo: (NSDictionary *) userInfo storagePolicy: (NSURLCacheStoragePolicy) storagePolicy 
{
	id resultVal__;
	resultVal__ = [[self initWithResponse: response data: data userInfo: userInfo storagePolicy: storagePolicy ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLCache (Exports)
-(id) jsinitWithMemoryCapacity: (NSUInteger) memoryCapacity diskCapacity: (NSUInteger) diskCapacity diskPath: (NSString *) path 
{
	id resultVal__;
	resultVal__ = [[self initWithMemoryCapacity: memoryCapacity diskCapacity: diskCapacity diskPath: path ] autorelease];
	return resultVal__;
}
-(id) jsinitWithMemoryCapacity: (NSUInteger) memoryCapacity diskCapacity: (NSUInteger) diskCapacity directoryURL: (NSURL *) directoryURL 
{
	id resultVal__;
	resultVal__ = [[self initWithMemoryCapacity: memoryCapacity diskCapacity: diskCapacity directoryURL: directoryURL ] autorelease];
	return resultVal__;
}
@end
@implementation NSURLCache (NSURLCacheNSURLSessionTaskAdditionsCategoryExports)
-(void) jsgetCachedResponseForDataTask: (NSURLSessionDataTask *) dataTask completionHandler: (JSValue *) completionHandler 
{
	void (^ completionHandler_)(NSCachedURLResponse * ) = nil;
	if (!completionHandler.isUndefined) {
		completionHandler_ = ^void(NSCachedURLResponse * arg0) {
			JSContext* __jsContext = completionHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			[parameters addObject: (arg0 ? [JSValue valueWithObject: arg0 inContext: __jsContext] : [JSValue valueWithUndefinedInContext: __jsContext])];
			callJSFunction(__jsContext, completionHandler, self, parameters);
		};
	}
	[self getCachedResponseForDataTask: dataTask completionHandler: completionHandler_ ];
}
@end
static void addProtocols()
{
	class_addProtocol([NSCachedURLResponse class], @protocol(NSCachedURLResponseInstanceExports));
	class_addProtocol([NSCachedURLResponse class], @protocol(NSCachedURLResponseClassExports));
	class_addProtocol([NSURLCache class], @protocol(NSURLCacheInstanceExports));
	class_addProtocol([NSURLCache class], @protocol(NSURLCacheClassExports));
	class_addProtocol([NSURLCache class], @protocol(NSURLCacheNSURLSessionTaskAdditionsCategoryInstanceExports));
	class_addProtocol([NSURLCache class], @protocol(NSURLCacheNSURLSessionTaskAdditionsCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSURLCacheStorageAllowed"] = @0U;
	context[@"NSURLCacheStorageAllowedInMemoryOnly"] = @1U;
	context[@"NSURLCacheStorageNotAllowed"] = @2U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSURLCache_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
