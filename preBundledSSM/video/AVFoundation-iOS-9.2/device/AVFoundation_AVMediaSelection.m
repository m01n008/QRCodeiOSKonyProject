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
	class_addProtocol([AVMediaSelection class], @protocol(AVMediaSelectionInstanceExports));
	class_addProtocol([AVMediaSelection class], @protocol(AVMediaSelectionClassExports));
	class_addProtocol([AVMutableMediaSelection class], @protocol(AVMutableMediaSelectionInstanceExports));
	class_addProtocol([AVMutableMediaSelection class], @protocol(AVMutableMediaSelectionClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVMediaSelection_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
