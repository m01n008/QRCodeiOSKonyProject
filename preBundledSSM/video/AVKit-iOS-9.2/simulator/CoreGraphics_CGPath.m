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
	context[@"kCGLineJoinMiter"] = @0;
	context[@"kCGLineJoinRound"] = @1;
	context[@"kCGLineJoinBevel"] = @2;

	context[@"kCGLineCapButt"] = @0;
	context[@"kCGLineCapRound"] = @1;
	context[@"kCGLineCapSquare"] = @2;

	context[@"kCGPathElementMoveToPoint"] = @0;
	context[@"kCGPathElementAddLineToPoint"] = @1;
	context[@"kCGPathElementAddQuadCurveToPoint"] = @2;
	context[@"kCGPathElementAddCurveToPoint"] = @3;
	context[@"kCGPathElementCloseSubpath"] = @4;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreGraphics_CGPath_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
