#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVKeyValueStatusUnknown"] = @0L;
	context[@"AVKeyValueStatusLoading"] = @1L;
	context[@"AVKeyValueStatusLoaded"] = @2L;
	context[@"AVKeyValueStatusFailed"] = @3L;
	context[@"AVKeyValueStatusCancelled"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void AVFoundation_AVAsynchronousKeyValueLoadingProtocols()
{
	(void)@protocol(AVAsynchronousKeyValueLoading);
}
void load_AVFoundation_AVAsynchronousKeyValueLoading_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
