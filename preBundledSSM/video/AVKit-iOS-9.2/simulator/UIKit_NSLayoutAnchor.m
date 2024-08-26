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
	class_addProtocol([NSLayoutDimension class], @protocol(NSLayoutDimensionInstanceExports));
	class_addProtocol([NSLayoutDimension class], @protocol(NSLayoutDimensionClassExports));
	class_addProtocol([NSLayoutXAxisAnchor class], @protocol(NSLayoutXAxisAnchorInstanceExports));
	class_addProtocol([NSLayoutXAxisAnchor class], @protocol(NSLayoutXAxisAnchorClassExports));
	class_addProtocol([NSLayoutYAxisAnchor class], @protocol(NSLayoutYAxisAnchorInstanceExports));
	class_addProtocol([NSLayoutYAxisAnchor class], @protocol(NSLayoutYAxisAnchorClassExports));
	class_addProtocol([NSLayoutAnchor class], @protocol(NSLayoutAnchorInstanceExports));
	class_addProtocol([NSLayoutAnchor class], @protocol(NSLayoutAnchorClassExports));
}
static void registerEnumConstants(JSContext* context)
{
}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_UIKit_NSLayoutAnchor_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
