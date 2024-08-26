#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"AVKeyValueStatusUnknown"] = @0;
	context[@"AVKeyValueStatusLoading"] = @1;
	context[@"AVKeyValueStatusLoaded"] = @2;
	context[@"AVKeyValueStatusFailed"] = @3;
	context[@"AVKeyValueStatusCancelled"] = @4;

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
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
