#import <objc/runtime.h>
#import "allincludes.h"
#import <NFIUtility/CallbackSupport.h>
#import <NFIUtility/PointerSupport.h>
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
static void addProtocols()
{
}
static void registerCFunctions(JSContext* context)
{
	context[@"CMPropagateAttachments"] = ^void(id arg0, id arg1) {
		CMPropagateAttachments(arg0, arg1);
	};
	context[@"CMRemoveAttachment"] = ^void(id arg0, id arg1) {
		CMRemoveAttachment(arg0, arg1);
	};
	context[@"CMCopyDictionaryOfAttachments"] = ^id(id arg0, id arg1, CMAttachmentMode arg2) {
		return CMCopyDictionaryOfAttachments(arg0, arg1, arg2);
	};
	context[@"CMRemoveAllAttachments"] = ^void(id arg0) {
		CMRemoveAllAttachments(arg0);
	};
	context[@"CMSetAttachment"] = ^void(id arg0, id arg1, id arg2, CMAttachmentMode arg3) {
		CMSetAttachment(arg0, arg1, arg2, arg3);
	};
	context[@"CMSetAttachments"] = ^void(id arg0, id arg1, CMAttachmentMode arg2) {
		CMSetAttachments(arg0, arg1, arg2);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"kCMAttachmentMode_ShouldNotPropagate"] = @0U;
	context[@"kCMAttachmentMode_ShouldPropagate"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
}
void load_CoreMedia_CMAttachment_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
