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
	context[@"UIGuidedAccessRestrictionStateForIdentifier"] = ^UIGuidedAccessRestrictionState(NSString * arg0) {
		return UIGuidedAccessRestrictionStateForIdentifier(arg0);
	};
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIGuidedAccessErrorPermissionDenied"] = @0;
	context[@"UIGuidedAccessErrorFailed"] = @2147483647;

	context[@"UIGuidedAccessRestrictionStateAllow"] = @0;
	context[@"UIGuidedAccessRestrictionStateDeny"] = @1;

	context[@"UIGuidedAccessAccessibilityFeatureVoiceOver"] = @1U;
	context[@"UIGuidedAccessAccessibilityFeatureZoom"] = @2U;
	context[@"UIGuidedAccessAccessibilityFeatureAssistiveTouch"] = @4U;
	context[@"UIGuidedAccessAccessibilityFeatureInvertColors"] = @8U;
	context[@"UIGuidedAccessAccessibilityFeatureGrayscaleDisplay"] = @16U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIGuidedAccessErrorDomain;
	if (p != NULL) context[@"UIGuidedAccessErrorDomain"] = UIGuidedAccessErrorDomain;
}
void UIKit_UIGuidedAccessProtocols()
{
	(void)@protocol(UIGuidedAccessRestrictionDelegate);
}
void load_UIKit_UIGuidedAccess_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
