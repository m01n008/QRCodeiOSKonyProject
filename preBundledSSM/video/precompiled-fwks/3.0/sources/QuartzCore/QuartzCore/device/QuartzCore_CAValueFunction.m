#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation CAValueFunction (Exports)
-(id) jsinitWithCoder: (NSCoder *) coder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: coder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([CAValueFunction class], @protocol(CAValueFunctionInstanceExports));
	class_addProtocol([CAValueFunction class], @protocol(CAValueFunctionClassExports));
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
	p = (void*) &kCAValueFunctionTranslate;
	if (p != NULL) context[@"kCAValueFunctionTranslate"] = kCAValueFunctionTranslate;
	p = (void*) &kCAValueFunctionRotateZ;
	if (p != NULL) context[@"kCAValueFunctionRotateZ"] = kCAValueFunctionRotateZ;
	p = (void*) &kCAValueFunctionTranslateZ;
	if (p != NULL) context[@"kCAValueFunctionTranslateZ"] = kCAValueFunctionTranslateZ;
	p = (void*) &kCAValueFunctionTranslateY;
	if (p != NULL) context[@"kCAValueFunctionTranslateY"] = kCAValueFunctionTranslateY;
	p = (void*) &kCAValueFunctionScale;
	if (p != NULL) context[@"kCAValueFunctionScale"] = kCAValueFunctionScale;
	p = (void*) &kCAValueFunctionScaleZ;
	if (p != NULL) context[@"kCAValueFunctionScaleZ"] = kCAValueFunctionScaleZ;
	p = (void*) &kCAValueFunctionScaleX;
	if (p != NULL) context[@"kCAValueFunctionScaleX"] = kCAValueFunctionScaleX;
	p = (void*) &kCAValueFunctionTranslateX;
	if (p != NULL) context[@"kCAValueFunctionTranslateX"] = kCAValueFunctionTranslateX;
	p = (void*) &kCAValueFunctionRotateX;
	if (p != NULL) context[@"kCAValueFunctionRotateX"] = kCAValueFunctionRotateX;
	p = (void*) &kCAValueFunctionRotateY;
	if (p != NULL) context[@"kCAValueFunctionRotateY"] = kCAValueFunctionRotateY;
	p = (void*) &kCAValueFunctionScaleY;
	if (p != NULL) context[@"kCAValueFunctionScaleY"] = kCAValueFunctionScaleY;
}
void load_QuartzCore_CAValueFunction_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
