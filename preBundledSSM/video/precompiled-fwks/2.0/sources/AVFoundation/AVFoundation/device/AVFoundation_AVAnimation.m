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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &AVLayerVideoGravityResizeAspectFill;
	if (p != NULL) context[@"AVLayerVideoGravityResizeAspectFill"] = AVLayerVideoGravityResizeAspectFill;
	p = (void*) &AVLayerVideoGravityResize;
	if (p != NULL) context[@"AVLayerVideoGravityResize"] = AVLayerVideoGravityResize;
	p = (void*) &AVLayerVideoGravityResizeAspect;
	if (p != NULL) context[@"AVLayerVideoGravityResizeAspect"] = AVLayerVideoGravityResizeAspect;
	p = (void*) &AVCoreAnimationBeginTimeAtZero;
	if (p != NULL) context[@"AVCoreAnimationBeginTimeAtZero"] = @(AVCoreAnimationBeginTimeAtZero);
}
void load_AVFoundation_AVAnimation_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
