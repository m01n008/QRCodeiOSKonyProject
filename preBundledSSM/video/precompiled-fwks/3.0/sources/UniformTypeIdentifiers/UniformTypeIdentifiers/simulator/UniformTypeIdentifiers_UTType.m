#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UTType (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UTType class], @protocol(UTTypeConformanceCategoryInstanceExports));
	class_addProtocol([UTType class], @protocol(UTTypeConformanceCategoryClassExports));
	class_addProtocol([UTType class], @protocol(UTTypeUTTagSpecificationCategoryInstanceExports));
	class_addProtocol([UTType class], @protocol(UTTypeUTTagSpecificationCategoryClassExports));
	class_addProtocol([UTType class], @protocol(UTTypeInstanceExports));
	class_addProtocol([UTType class], @protocol(UTTypeClassExports));
	class_addProtocol([UTType class], @protocol(UTTypeLocalConstantsCategoryInstanceExports));
	class_addProtocol([UTType class], @protocol(UTTypeLocalConstantsCategoryClassExports));
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
}
void load_UniformTypeIdentifiers_UTType_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
