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
	context[@"kCGImageAlphaNone"] = @0U;
	context[@"kCGImageAlphaPremultipliedLast"] = @1U;
	context[@"kCGImageAlphaPremultipliedFirst"] = @2U;
	context[@"kCGImageAlphaLast"] = @3U;
	context[@"kCGImageAlphaFirst"] = @4U;
	context[@"kCGImageAlphaNoneSkipLast"] = @5U;
	context[@"kCGImageAlphaNoneSkipFirst"] = @6U;
	context[@"kCGImageAlphaOnly"] = @7U;

	context[@"kCGBitmapAlphaInfoMask"] = @31U;
	context[@"kCGBitmapFloatComponents"] = @256U;
	context[@"kCGBitmapByteOrderMask"] = @28672U;
	context[@"kCGBitmapByteOrderDefault"] = @0U;
	context[@"kCGBitmapByteOrder16Little"] = @4096U;
	context[@"kCGBitmapByteOrder32Little"] = @8192U;
	context[@"kCGBitmapByteOrder16Big"] = @12288U;
	context[@"kCGBitmapByteOrder32Big"] = @16384U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreGraphics_CGImage_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
