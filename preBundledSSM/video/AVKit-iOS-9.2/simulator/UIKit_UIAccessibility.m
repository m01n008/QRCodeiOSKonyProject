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
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityContainerCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityContainerCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityFocusCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityFocusCategoryClassExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityActionCategoryInstanceExports));
	class_addProtocol([NSObject class], @protocol(NSObjectUIAccessibilityActionCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIAccessibilityScrollDirectionRight"] = @1;
	context[@"UIAccessibilityScrollDirectionLeft"] = @2;
	context[@"UIAccessibilityScrollDirectionUp"] = @3;
	context[@"UIAccessibilityScrollDirectionDown"] = @4;
	context[@"UIAccessibilityScrollDirectionNext"] = @5;
	context[@"UIAccessibilityScrollDirectionPrevious"] = @6;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIAccessibilityInvertColorsStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityInvertColorsStatusDidChangeNotification"] = UIAccessibilityInvertColorsStatusDidChangeNotification;
	p = (void*) &UIAccessibilityReduceMotionStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityReduceMotionStatusDidChangeNotification"] = UIAccessibilityReduceMotionStatusDidChangeNotification;
	p = (void*) &UIAccessibilityReduceTransparencyStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityReduceTransparencyStatusDidChangeNotification"] = UIAccessibilityReduceTransparencyStatusDidChangeNotification;
	p = (void*) &UIAccessibilityGuidedAccessStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityGuidedAccessStatusDidChangeNotification"] = UIAccessibilityGuidedAccessStatusDidChangeNotification;
	p = (void*) &UIAccessibilityVoiceOverStatusChanged;
	if (p != NULL) context[@"UIAccessibilityVoiceOverStatusChanged"] = UIAccessibilityVoiceOverStatusChanged;
	p = (void*) &UIAccessibilityClosedCaptioningStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityClosedCaptioningStatusDidChangeNotification"] = UIAccessibilityClosedCaptioningStatusDidChangeNotification;
	p = (void*) &UIAccessibilityBoldTextStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityBoldTextStatusDidChangeNotification"] = UIAccessibilityBoldTextStatusDidChangeNotification;
	p = (void*) &UIAccessibilityMonoAudioStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityMonoAudioStatusDidChangeNotification"] = UIAccessibilityMonoAudioStatusDidChangeNotification;
	p = (void*) &UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityDarkerSystemColorsStatusDidChangeNotification"] = UIAccessibilityDarkerSystemColorsStatusDidChangeNotification;
	p = (void*) &UIAccessibilityShakeToUndoDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityShakeToUndoDidChangeNotification"] = UIAccessibilityShakeToUndoDidChangeNotification;
	p = (void*) &UIAccessibilitySpeakScreenStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilitySpeakScreenStatusDidChangeNotification"] = UIAccessibilitySpeakScreenStatusDidChangeNotification;
	p = (void*) &UIAccessibilitySpeakSelectionStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilitySpeakSelectionStatusDidChangeNotification"] = UIAccessibilitySpeakSelectionStatusDidChangeNotification;
	p = (void*) &UIAccessibilitySwitchControlStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilitySwitchControlStatusDidChangeNotification"] = UIAccessibilitySwitchControlStatusDidChangeNotification;
	p = (void*) &UIAccessibilityGrayscaleStatusDidChangeNotification;
	if (p != NULL) context[@"UIAccessibilityGrayscaleStatusDidChangeNotification"] = UIAccessibilityGrayscaleStatusDidChangeNotification;
}
void UIKit_UIAccessibilityProtocols()
{
	(void)@protocol(UIAccessibilityReadingContent);
}
void load_UIKit_UIAccessibility_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
