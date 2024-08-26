#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation NSURLRequest (Exports)
-(id) jsinitWithURL: (NSURL *) URL 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL ] autorelease];
	return resultVal__;
}
-(id) jsinitWithURL: (NSURL *) URL cachePolicy: (NSURLRequestCachePolicy) cachePolicy timeoutInterval: (NSTimeInterval) timeoutInterval 
{
	id resultVal__;
	resultVal__ = [[self initWithURL: URL cachePolicy: cachePolicy timeoutInterval: timeoutInterval ] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestInstanceExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestClassExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestInstanceExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestClassExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestNSHTTPURLRequestCategoryInstanceExports));
	class_addProtocol([NSURLRequest class], @protocol(NSURLRequestNSHTTPURLRequestCategoryClassExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestNSMutableHTTPURLRequestCategoryInstanceExports));
	class_addProtocol([NSMutableURLRequest class], @protocol(NSMutableURLRequestNSMutableHTTPURLRequestCategoryClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{

	context[@"NSURLRequestUseProtocolCachePolicy"] = @0UL;
	context[@"NSURLRequestReloadIgnoringLocalCacheData"] = @1UL;
	context[@"NSURLRequestReloadIgnoringLocalAndRemoteCacheData"] = @4UL;
	context[@"NSURLRequestReloadIgnoringCacheData"] = @1UL;
	context[@"NSURLRequestReturnCacheDataElseLoad"] = @2UL;
	context[@"NSURLRequestReturnCacheDataDontLoad"] = @3UL;
	context[@"NSURLRequestReloadRevalidatingCacheData"] = @5UL;


	context[@"NSURLNetworkServiceTypeDefault"] = @0UL;
	context[@"NSURLNetworkServiceTypeVoIP"] = @1UL;
	context[@"NSURLNetworkServiceTypeVideo"] = @2UL;
	context[@"NSURLNetworkServiceTypeBackground"] = @3UL;
	context[@"NSURLNetworkServiceTypeVoice"] = @4UL;
	context[@"NSURLNetworkServiceTypeResponsiveData"] = @6UL;
	context[@"NSURLNetworkServiceTypeAVStreaming"] = @8UL;
	context[@"NSURLNetworkServiceTypeResponsiveAV"] = @9UL;
	context[@"NSURLNetworkServiceTypeCallSignaling"] = @11UL;


	context[@"NSURLRequestAttributionDeveloper"] = @0UL;
	context[@"NSURLRequestAttributionUser"] = @1UL;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_Foundation_NSURLRequest_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
