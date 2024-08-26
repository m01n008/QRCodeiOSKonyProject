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
	context[@"kCGImageAnimationStatus_ParameterError"] = @-22140L;
	context[@"kCGImageAnimationStatus_CorruptInputImage"] = @-22141L;
	context[@"kCGImageAnimationStatus_UnsupportedFormat"] = @-22142L;
	context[@"kCGImageAnimationStatus_IncompleteInputImage"] = @-22143L;
	context[@"kCGImageAnimationStatus_AllocationFailure"] = @-22144L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCGImageAnimationDelayTime;
	if (p != NULL) context[@"kCGImageAnimationDelayTime"] = [JSValue valueWithObject: (__bridge id) kCGImageAnimationDelayTime inContext: context];
	p = (void*) &kCGImageAnimationLoopCount;
	if (p != NULL) context[@"kCGImageAnimationLoopCount"] = [JSValue valueWithObject: (__bridge id) kCGImageAnimationLoopCount inContext: context];
	p = (void*) &kCGImageAnimationStartIndex;
	if (p != NULL) context[@"kCGImageAnimationStartIndex"] = [JSValue valueWithObject: (__bridge id) kCGImageAnimationStartIndex inContext: context];
}
void load_ImageIO_CGImageAnimation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
