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
	class_addProtocol([NSCoder class], @protocol(NSCoderAVTimeCodingCategoryInstanceExports));
	class_addProtocol([NSCoder class], @protocol(NSCoderAVTimeCodingCategoryClassExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueAVFoundationExtensionsCategoryInstanceExports));
	class_addProtocol([NSValue class], @protocol(NSValueNSValueAVFoundationExtensionsCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_AVFoundation_AVTime_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
