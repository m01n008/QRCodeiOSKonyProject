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
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIAccessibilityNavigationStyleAutomatic"] = @0L;
	context[@"UIAccessibilityNavigationStyleSeparate"] = @1L;
	context[@"UIAccessibilityNavigationStyleCombined"] = @2L;

	context[@"UIAccessibilityContainerTypeNone"] = @0L;
	context[@"UIAccessibilityContainerTypeDataTable"] = @1L;
	context[@"UIAccessibilityContainerTypeList"] = @2L;
	context[@"UIAccessibilityContainerTypeLandmark"] = @3L;
	context[@"UIAccessibilityContainerTypeSemanticGroup"] = @4L;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIAccessibilityTraitUpdatesFrequently;
	if (p != NULL) context[@"UIAccessibilityTraitUpdatesFrequently"] = @(UIAccessibilityTraitUpdatesFrequently);
	p = (void*) &UIAccessibilityTextualContextMessaging;
	if (p != NULL) context[@"UIAccessibilityTextualContextMessaging"] = UIAccessibilityTextualContextMessaging;
	p = (void*) &UIAccessibilitySpeechAttributeQueueAnnouncement;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributeQueueAnnouncement"] = UIAccessibilitySpeechAttributeQueueAnnouncement;
	p = (void*) &UIAccessibilityTextAttributeContext;
	if (p != NULL) context[@"UIAccessibilityTextAttributeContext"] = UIAccessibilityTextAttributeContext;
	p = (void*) &UIAccessibilityNotificationVoiceOverIdentifier;
	if (p != NULL) context[@"UIAccessibilityNotificationVoiceOverIdentifier"] = UIAccessibilityNotificationVoiceOverIdentifier;
	p = (void*) &UIAccessibilitySpeechAttributeIPANotation;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributeIPANotation"] = UIAccessibilitySpeechAttributeIPANotation;
	p = (void*) &UIAccessibilityTraitStartsMediaSession;
	if (p != NULL) context[@"UIAccessibilityTraitStartsMediaSession"] = @(UIAccessibilityTraitStartsMediaSession);
	p = (void*) &UIAccessibilityTraitCausesPageTurn;
	if (p != NULL) context[@"UIAccessibilityTraitCausesPageTurn"] = @(UIAccessibilityTraitCausesPageTurn);
	p = (void*) &UIAccessibilityTraitHeader;
	if (p != NULL) context[@"UIAccessibilityTraitHeader"] = @(UIAccessibilityTraitHeader);
	p = (void*) &UIAccessibilityTextAttributeCustom;
	if (p != NULL) context[@"UIAccessibilityTextAttributeCustom"] = UIAccessibilityTextAttributeCustom;
	p = (void*) &UIAccessibilitySpeechAttributeLanguage;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributeLanguage"] = UIAccessibilitySpeechAttributeLanguage;
	p = (void*) &UIAccessibilityTraitPlaysSound;
	if (p != NULL) context[@"UIAccessibilityTraitPlaysSound"] = @(UIAccessibilityTraitPlaysSound);
	p = (void*) &UIAccessibilityTraitLink;
	if (p != NULL) context[@"UIAccessibilityTraitLink"] = @(UIAccessibilityTraitLink);
	p = (void*) &UIAccessibilityPauseAssistiveTechnologyNotification;
	if (p != NULL) context[@"UIAccessibilityPauseAssistiveTechnologyNotification"] = @(UIAccessibilityPauseAssistiveTechnologyNotification);
	p = (void*) &UIAccessibilityTraitSummaryElement;
	if (p != NULL) context[@"UIAccessibilityTraitSummaryElement"] = @(UIAccessibilityTraitSummaryElement);
	p = (void*) &UIAccessibilityTextualContextNarrative;
	if (p != NULL) context[@"UIAccessibilityTextualContextNarrative"] = UIAccessibilityTextualContextNarrative;
	p = (void*) &UIAccessibilityAnnouncementKeyWasSuccessful;
	if (p != NULL) context[@"UIAccessibilityAnnouncementKeyWasSuccessful"] = UIAccessibilityAnnouncementKeyWasSuccessful;
	p = (void*) &UIAccessibilityUnfocusedElementKey;
	if (p != NULL) context[@"UIAccessibilityUnfocusedElementKey"] = UIAccessibilityUnfocusedElementKey;
	p = (void*) &UIAccessibilityTraitStaticText;
	if (p != NULL) context[@"UIAccessibilityTraitStaticText"] = @(UIAccessibilityTraitStaticText);
	p = (void*) &UIAccessibilityTraitSearchField;
	if (p != NULL) context[@"UIAccessibilityTraitSearchField"] = @(UIAccessibilityTraitSearchField);
	p = (void*) &UIAccessibilityTextualContextFileSystem;
	if (p != NULL) context[@"UIAccessibilityTextualContextFileSystem"] = UIAccessibilityTextualContextFileSystem;
	p = (void*) &UIAccessibilityTraitSelected;
	if (p != NULL) context[@"UIAccessibilityTraitSelected"] = @(UIAccessibilityTraitSelected);
	p = (void*) &UIAccessibilityResumeAssistiveTechnologyNotification;
	if (p != NULL) context[@"UIAccessibilityResumeAssistiveTechnologyNotification"] = @(UIAccessibilityResumeAssistiveTechnologyNotification);
	p = (void*) &UIAccessibilityTraitNotEnabled;
	if (p != NULL) context[@"UIAccessibilityTraitNotEnabled"] = @(UIAccessibilityTraitNotEnabled);
	p = (void*) &UIAccessibilityTextualContextSpreadsheet;
	if (p != NULL) context[@"UIAccessibilityTextualContextSpreadsheet"] = UIAccessibilityTextualContextSpreadsheet;
	p = (void*) &UIAccessibilityTraitImage;
	if (p != NULL) context[@"UIAccessibilityTraitImage"] = @(UIAccessibilityTraitImage);
	p = (void*) &UIAccessibilityTraitButton;
	if (p != NULL) context[@"UIAccessibilityTraitButton"] = @(UIAccessibilityTraitButton);
	p = (void*) &UIAccessibilityTraitAdjustable;
	if (p != NULL) context[@"UIAccessibilityTraitAdjustable"] = @(UIAccessibilityTraitAdjustable);
	p = (void*) &UIAccessibilityNotificationSwitchControlIdentifier;
	if (p != NULL) context[@"UIAccessibilityNotificationSwitchControlIdentifier"] = UIAccessibilityNotificationSwitchControlIdentifier;
	p = (void*) &UIAccessibilityScreenChangedNotification;
	if (p != NULL) context[@"UIAccessibilityScreenChangedNotification"] = @(UIAccessibilityScreenChangedNotification);
	p = (void*) &UIAccessibilityAnnouncementKeyStringValue;
	if (p != NULL) context[@"UIAccessibilityAnnouncementKeyStringValue"] = UIAccessibilityAnnouncementKeyStringValue;
	p = (void*) &UIAccessibilityTextualContextSourceCode;
	if (p != NULL) context[@"UIAccessibilityTextualContextSourceCode"] = UIAccessibilityTextualContextSourceCode;
	p = (void*) &UIAccessibilityTraitAllowsDirectInteraction;
	if (p != NULL) context[@"UIAccessibilityTraitAllowsDirectInteraction"] = @(UIAccessibilityTraitAllowsDirectInteraction);
	p = (void*) &UIAccessibilityAnnouncementDidFinishNotification;
	if (p != NULL) context[@"UIAccessibilityAnnouncementDidFinishNotification"] = UIAccessibilityAnnouncementDidFinishNotification;
	p = (void*) &UIAccessibilityTextualContextWordProcessing;
	if (p != NULL) context[@"UIAccessibilityTextualContextWordProcessing"] = UIAccessibilityTextualContextWordProcessing;
	p = (void*) &UIAccessibilityTraitTabBar;
	if (p != NULL) context[@"UIAccessibilityTraitTabBar"] = @(UIAccessibilityTraitTabBar);
	p = (void*) &UIAccessibilityTextAttributeHeadingLevel;
	if (p != NULL) context[@"UIAccessibilityTextAttributeHeadingLevel"] = UIAccessibilityTextAttributeHeadingLevel;
	p = (void*) &UIAccessibilityAssistiveTechnologyKey;
	if (p != NULL) context[@"UIAccessibilityAssistiveTechnologyKey"] = UIAccessibilityAssistiveTechnologyKey;
	p = (void*) &UIAccessibilityPageScrolledNotification;
	if (p != NULL) context[@"UIAccessibilityPageScrolledNotification"] = @(UIAccessibilityPageScrolledNotification);
	p = (void*) &UIAccessibilityFocusedElementKey;
	if (p != NULL) context[@"UIAccessibilityFocusedElementKey"] = UIAccessibilityFocusedElementKey;
	p = (void*) &UIAccessibilityTextualContextConsole;
	if (p != NULL) context[@"UIAccessibilityTextualContextConsole"] = UIAccessibilityTextualContextConsole;
	p = (void*) &UIAccessibilitySpeechAttributePitch;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributePitch"] = UIAccessibilitySpeechAttributePitch;
	p = (void*) &UIAccessibilitySpeechAttributeSpellOut;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributeSpellOut"] = UIAccessibilitySpeechAttributeSpellOut;
	p = (void*) &UIAccessibilityTraitNone;
	if (p != NULL) context[@"UIAccessibilityTraitNone"] = @(UIAccessibilityTraitNone);
	p = (void*) &UIAccessibilityAnnouncementNotification;
	if (p != NULL) context[@"UIAccessibilityAnnouncementNotification"] = @(UIAccessibilityAnnouncementNotification);
	p = (void*) &UIAccessibilityTraitKeyboardKey;
	if (p != NULL) context[@"UIAccessibilityTraitKeyboardKey"] = @(UIAccessibilityTraitKeyboardKey);
	p = (void*) &UIAccessibilityElementFocusedNotification;
	if (p != NULL) context[@"UIAccessibilityElementFocusedNotification"] = UIAccessibilityElementFocusedNotification;
	p = (void*) &UIAccessibilitySpeechAttributePunctuation;
	if (p != NULL) context[@"UIAccessibilitySpeechAttributePunctuation"] = UIAccessibilitySpeechAttributePunctuation;
	p = (void*) &UIAccessibilityLayoutChangedNotification;
	if (p != NULL) context[@"UIAccessibilityLayoutChangedNotification"] = @(UIAccessibilityLayoutChangedNotification);
}
void load_UIKit_UIAccessibilityConstants_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerCFunctions(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
