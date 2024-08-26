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
	context[@"NSTextAlignmentLeft"] = @0;
	context[@"NSTextAlignmentCenter"] = @1;
	context[@"NSTextAlignmentRight"] = @2;
	context[@"NSTextAlignmentJustified"] = @3;
	context[@"NSTextAlignmentNatural"] = @4;

	context[@"NSWritingDirectionNatural"] = @-1;
	context[@"NSWritingDirectionLeftToRight"] = @0;
	context[@"NSWritingDirectionRightToLeft"] = @1;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_NSText_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
