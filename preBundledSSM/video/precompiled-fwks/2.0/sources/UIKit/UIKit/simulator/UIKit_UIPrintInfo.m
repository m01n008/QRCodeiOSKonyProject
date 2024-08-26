#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIPrintInfo (Exports)
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIPrintInfo class], @protocol(UIPrintInfoInstanceExports));
	class_addProtocol([UIPrintInfo class], @protocol(UIPrintInfoClassExports));
}
static void registerCFunctions(JSContext* context)
{
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIPrintInfoOutputGeneral"] = @0L;
	context[@"UIPrintInfoOutputPhoto"] = @1L;
	context[@"UIPrintInfoOutputGrayscale"] = @2L;
	context[@"UIPrintInfoOutputPhotoGrayscale"] = @3L;

	context[@"UIPrintInfoOrientationPortrait"] = @0L;
	context[@"UIPrintInfoOrientationLandscape"] = @1L;

	context[@"UIPrintInfoDuplexNone"] = @0L;
	context[@"UIPrintInfoDuplexLongEdge"] = @1L;
	context[@"UIPrintInfoDuplexShortEdge"] = @2L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_UIPrintInfo_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
