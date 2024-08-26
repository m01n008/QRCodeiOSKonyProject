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
	context[@"UIGuidedAccessErrorPermissionDenied"] = @0L;
	context[@"UIGuidedAccessErrorFailed"] = @9223372036854775807L;

	context[@"UIGuidedAccessRestrictionStateAllow"] = @0L;
	context[@"UIGuidedAccessRestrictionStateDeny"] = @1L;

	context[@"UIGuidedAccessAccessibilityFeatureVoiceOver"] = @1UL;
	context[@"UIGuidedAccessAccessibilityFeatureZoom"] = @2UL;
	context[@"UIGuidedAccessAccessibilityFeatureAssistiveTouch"] = @4UL;
	context[@"UIGuidedAccessAccessibilityFeatureInvertColors"] = @8UL;
	context[@"UIGuidedAccessAccessibilityFeatureGrayscaleDisplay"] = @16UL;

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
