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
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &kCVOpenGLESTextureCacheMaximumTextureAgeKey;
	if (p != NULL) context[@"kCVOpenGLESTextureCacheMaximumTextureAgeKey"] = [JSValue valueWithObject: (__bridge id) kCVOpenGLESTextureCacheMaximumTextureAgeKey inContext: context];
}
void load_CoreVideo_CVOpenGLESTextureCache_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
