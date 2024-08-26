#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIApplication (Exports)
-(BOOL) jssendAction: (NSString *) action to: (id) target from: (id) sender forEvent: (UIEvent *) event 
{
	SEL action_ = NSSelectorFromString(action);
	BOOL resultVal__;
	resultVal__ = [self sendAction: action_ to: target from: sender forEvent: event ];
	return resultVal__;
}
-(UIBackgroundTaskIdentifier) jsbeginBackgroundTaskWithName: (NSString *) taskName expirationHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	UIBackgroundTaskIdentifier resultVal__;
	resultVal__ = [self beginBackgroundTaskWithName: taskName expirationHandler: handler_ ];
	return resultVal__;
}
-(UIBackgroundTaskIdentifier) jsbeginBackgroundTaskWithExpirationHandler: (JSValue *) handler 
{
	void (^ handler_)(void) = nil;
	if (!handler.isUndefined) {
		handler_ = ^void() {
			JSContext* __jsContext = handler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, handler, self, parameters);
		};
	}
	UIBackgroundTaskIdentifier resultVal__;
	resultVal__ = [self beginBackgroundTaskWithExpirationHandler: handler_ ];
	return resultVal__;
}
@end
@implementation UIApplication (UIApplicationUIApplicationDeprecatedCategoryExports)
-(BOOL) jssetKeepAliveTimeout: (NSTimeInterval) timeout handler: (JSValue *) keepAliveHandler 
{
	void (^ keepAliveHandler_)(void) = nil;
	if (!keepAliveHandler.isUndefined) {
		keepAliveHandler_ = ^void() {
			JSContext* __jsContext = keepAliveHandler.context;
			NSMutableArray* parameters = [NSMutableArray array];
			callJSFunction(__jsContext, keepAliveHandler, self, parameters);
		};
	}
	BOOL resultVal__;
	resultVal__ = [self setKeepAliveTimeout: timeout handler: keepAliveHandler_ ];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIUserNotificationSettingsCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIUserNotificationSettingsCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUINewsstandCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUINewsstandCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIRemoteControlEventsCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIRemoteControlEventsCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUILocalNotificationsCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUILocalNotificationsCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIRemoteNotificationsCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIRemoteNotificationsCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIStateRestorationCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIStateRestorationCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIShortcutItemsCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIShortcutItemsCategoryClassExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIApplicationDeprecatedCategoryInstanceExports));
	class_addProtocol([UIApplication class], @protocol(UIApplicationUIApplicationDeprecatedCategoryClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIStatusBarStyleDefault"] = @0;
	context[@"UIStatusBarStyleLightContent"] = @1;
	context[@"UIStatusBarStyleBlackTranslucent"] = @1;
	context[@"UIStatusBarStyleBlackOpaque"] = @2;

	context[@"UIStatusBarAnimationNone"] = @0;
	context[@"UIStatusBarAnimationFade"] = @1;
	context[@"UIStatusBarAnimationSlide"] = @2;

	context[@"UIInterfaceOrientationUnknown"] = @0;
	context[@"UIInterfaceOrientationPortrait"] = @1;
	context[@"UIInterfaceOrientationPortraitUpsideDown"] = @2;
	context[@"UIInterfaceOrientationLandscapeLeft"] = @4;
	context[@"UIInterfaceOrientationLandscapeRight"] = @3;

	context[@"UIInterfaceOrientationMaskPortrait"] = @2U;
	context[@"UIInterfaceOrientationMaskLandscapeLeft"] = @16U;
	context[@"UIInterfaceOrientationMaskLandscapeRight"] = @8U;
	context[@"UIInterfaceOrientationMaskPortraitUpsideDown"] = @4U;
	context[@"UIInterfaceOrientationMaskLandscape"] = @24U;
	context[@"UIInterfaceOrientationMaskAll"] = @30U;
	context[@"UIInterfaceOrientationMaskAllButUpsideDown"] = @26U;

	context[@"UIRemoteNotificationTypeNone"] = @0U;
	context[@"UIRemoteNotificationTypeBadge"] = @1U;
	context[@"UIRemoteNotificationTypeSound"] = @2U;
	context[@"UIRemoteNotificationTypeAlert"] = @4U;
	context[@"UIRemoteNotificationTypeNewsstandContentAvailability"] = @8U;

	context[@"UIBackgroundFetchResultNewData"] = @0U;
	context[@"UIBackgroundFetchResultNoData"] = @1U;
	context[@"UIBackgroundFetchResultFailed"] = @2U;

	context[@"UIBackgroundRefreshStatusRestricted"] = @0;
	context[@"UIBackgroundRefreshStatusDenied"] = @1;
	context[@"UIBackgroundRefreshStatusAvailable"] = @2;

	context[@"UIApplicationStateActive"] = @0;
	context[@"UIApplicationStateInactive"] = @1;
	context[@"UIApplicationStateBackground"] = @2;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIContentSizeCategoryDidChangeNotification;
	if (p != NULL) context[@"UIContentSizeCategoryDidChangeNotification"] = UIContentSizeCategoryDidChangeNotification;
	p = (void*) &UIApplicationStatusBarFrameUserInfoKey;
	if (p != NULL) context[@"UIApplicationStatusBarFrameUserInfoKey"] = UIApplicationStatusBarFrameUserInfoKey;
	p = (void*) &UIApplicationLaunchOptionsUserActivityDictionaryKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsUserActivityDictionaryKey"] = UIApplicationLaunchOptionsUserActivityDictionaryKey;
	p = (void*) &UIApplicationLaunchOptionsAnnotationKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsAnnotationKey"] = UIApplicationLaunchOptionsAnnotationKey;
	p = (void*) &UIApplicationWillTerminateNotification;
	if (p != NULL) context[@"UIApplicationWillTerminateNotification"] = UIApplicationWillTerminateNotification;
	p = (void*) &UITrackingRunLoopMode;
	if (p != NULL) context[@"UITrackingRunLoopMode"] = UITrackingRunLoopMode;
	p = (void*) &UIApplicationLaunchOptionsRemoteNotificationKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsRemoteNotificationKey"] = UIApplicationLaunchOptionsRemoteNotificationKey;
	p = (void*) &UIApplicationLaunchOptionsLocationKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsLocationKey"] = UIApplicationLaunchOptionsLocationKey;
	p = (void*) &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryAccessibilityExtraExtraExtraLarge"] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
	p = (void*) &UIApplicationWillEnterForegroundNotification;
	if (p != NULL) context[@"UIApplicationWillEnterForegroundNotification"] = UIApplicationWillEnterForegroundNotification;
	p = (void*) &UIContentSizeCategoryExtraExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryExtraExtraLarge"] = UIContentSizeCategoryExtraExtraLarge;
	p = (void*) &UIContentSizeCategoryAccessibilityMedium;
	if (p != NULL) context[@"UIContentSizeCategoryAccessibilityMedium"] = UIContentSizeCategoryAccessibilityMedium;
	p = (void*) &UIApplicationDidChangeStatusBarOrientationNotification;
	if (p != NULL) context[@"UIApplicationDidChangeStatusBarOrientationNotification"] = UIApplicationDidChangeStatusBarOrientationNotification;
	p = (void*) &UIApplicationLaunchOptionsLocalNotificationKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsLocalNotificationKey"] = UIApplicationLaunchOptionsLocalNotificationKey;
	p = (void*) &UIApplicationInvalidInterfaceOrientationException;
	if (p != NULL) context[@"UIApplicationInvalidInterfaceOrientationException"] = UIApplicationInvalidInterfaceOrientationException;
	p = (void*) &UIApplicationLaunchOptionsUserActivityTypeKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsUserActivityTypeKey"] = UIApplicationLaunchOptionsUserActivityTypeKey;
	p = (void*) &UIContentSizeCategoryExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryExtraLarge"] = UIContentSizeCategoryExtraLarge;
	p = (void*) &UIApplicationWillChangeStatusBarFrameNotification;
	if (p != NULL) context[@"UIApplicationWillChangeStatusBarFrameNotification"] = UIApplicationWillChangeStatusBarFrameNotification;
	p = (void*) &UIContentSizeCategoryLarge;
	if (p != NULL) context[@"UIContentSizeCategoryLarge"] = UIContentSizeCategoryLarge;
	p = (void*) &UIContentSizeCategoryAccessibilityLarge;
	if (p != NULL) context[@"UIContentSizeCategoryAccessibilityLarge"] = UIContentSizeCategoryAccessibilityLarge;
	p = (void*) &UIApplicationDidFinishLaunchingNotification;
	if (p != NULL) context[@"UIApplicationDidFinishLaunchingNotification"] = UIApplicationDidFinishLaunchingNotification;
	p = (void*) &UIContentSizeCategorySmall;
	if (p != NULL) context[@"UIContentSizeCategorySmall"] = UIContentSizeCategorySmall;
	p = (void*) &UIBackgroundTaskInvalid;
	if (p != NULL) context[@"UIBackgroundTaskInvalid"] = @(UIBackgroundTaskInvalid);
	p = (void*) &UIApplicationLaunchOptionsURLKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsURLKey"] = UIApplicationLaunchOptionsURLKey;
	p = (void*) &UIContentSizeCategoryNewValueKey;
	if (p != NULL) context[@"UIContentSizeCategoryNewValueKey"] = UIContentSizeCategoryNewValueKey;
	p = (void*) &UIApplicationDidBecomeActiveNotification;
	if (p != NULL) context[@"UIApplicationDidBecomeActiveNotification"] = UIApplicationDidBecomeActiveNotification;
	p = (void*) &UIContentSizeCategoryAccessibilityExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryAccessibilityExtraLarge"] = UIContentSizeCategoryAccessibilityExtraLarge;
	p = (void*) &UIApplicationWillChangeStatusBarOrientationNotification;
	if (p != NULL) context[@"UIApplicationWillChangeStatusBarOrientationNotification"] = UIApplicationWillChangeStatusBarOrientationNotification;
	p = (void*) &UIContentSizeCategoryMedium;
	if (p != NULL) context[@"UIContentSizeCategoryMedium"] = UIContentSizeCategoryMedium;
	p = (void*) &UIContentSizeCategoryExtraExtraExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryExtraExtraExtraLarge"] = UIContentSizeCategoryExtraExtraExtraLarge;
	p = (void*) &UIApplicationOpenURLOptionsSourceApplicationKey;
	if (p != NULL) context[@"UIApplicationOpenURLOptionsSourceApplicationKey"] = UIApplicationOpenURLOptionsSourceApplicationKey;
	p = (void*) &UIApplicationBackgroundFetchIntervalMinimum;
	if (p != NULL) context[@"UIApplicationBackgroundFetchIntervalMinimum"] = @(UIApplicationBackgroundFetchIntervalMinimum);
	p = (void*) &UIApplicationProtectedDataWillBecomeUnavailable;
	if (p != NULL) context[@"UIApplicationProtectedDataWillBecomeUnavailable"] = UIApplicationProtectedDataWillBecomeUnavailable;
	p = (void*) &UIMinimumKeepAliveTimeout;
	if (p != NULL) context[@"UIMinimumKeepAliveTimeout"] = @(UIMinimumKeepAliveTimeout);
	p = (void*) &UIApplicationStatusBarOrientationUserInfoKey;
	if (p != NULL) context[@"UIApplicationStatusBarOrientationUserInfoKey"] = UIApplicationStatusBarOrientationUserInfoKey;
	p = (void*) &UIApplicationUserDidTakeScreenshotNotification;
	if (p != NULL) context[@"UIApplicationUserDidTakeScreenshotNotification"] = UIApplicationUserDidTakeScreenshotNotification;
	p = (void*) &UIApplicationOpenSettingsURLString;
	if (p != NULL) context[@"UIApplicationOpenSettingsURLString"] = UIApplicationOpenSettingsURLString;
	p = (void*) &UIApplicationKeyboardExtensionPointIdentifier;
	if (p != NULL) context[@"UIApplicationKeyboardExtensionPointIdentifier"] = UIApplicationKeyboardExtensionPointIdentifier;
	p = (void*) &UIApplicationLaunchOptionsBluetoothCentralsKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsBluetoothCentralsKey"] = UIApplicationLaunchOptionsBluetoothCentralsKey;
	p = (void*) &UIApplicationWillResignActiveNotification;
	if (p != NULL) context[@"UIApplicationWillResignActiveNotification"] = UIApplicationWillResignActiveNotification;
	p = (void*) &UIApplicationLaunchOptionsShortcutItemKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsShortcutItemKey"] = UIApplicationLaunchOptionsShortcutItemKey;
	p = (void*) &UIApplicationProtectedDataDidBecomeAvailable;
	if (p != NULL) context[@"UIApplicationProtectedDataDidBecomeAvailable"] = UIApplicationProtectedDataDidBecomeAvailable;
	p = (void*) &UIApplicationBackgroundFetchIntervalNever;
	if (p != NULL) context[@"UIApplicationBackgroundFetchIntervalNever"] = @(UIApplicationBackgroundFetchIntervalNever);
	p = (void*) &UIApplicationDidReceiveMemoryWarningNotification;
	if (p != NULL) context[@"UIApplicationDidReceiveMemoryWarningNotification"] = UIApplicationDidReceiveMemoryWarningNotification;
	p = (void*) &UIApplicationDidEnterBackgroundNotification;
	if (p != NULL) context[@"UIApplicationDidEnterBackgroundNotification"] = UIApplicationDidEnterBackgroundNotification;
	p = (void*) &UIApplicationLaunchOptionsBluetoothPeripheralsKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsBluetoothPeripheralsKey"] = UIApplicationLaunchOptionsBluetoothPeripheralsKey;
	p = (void*) &UIApplicationSignificantTimeChangeNotification;
	if (p != NULL) context[@"UIApplicationSignificantTimeChangeNotification"] = UIApplicationSignificantTimeChangeNotification;
	p = (void*) &UIApplicationDidChangeStatusBarFrameNotification;
	if (p != NULL) context[@"UIApplicationDidChangeStatusBarFrameNotification"] = UIApplicationDidChangeStatusBarFrameNotification;
	p = (void*) &UIContentSizeCategoryAccessibilityExtraExtraLarge;
	if (p != NULL) context[@"UIContentSizeCategoryAccessibilityExtraExtraLarge"] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
	p = (void*) &UIApplicationOpenURLOptionsOpenInPlaceKey;
	if (p != NULL) context[@"UIApplicationOpenURLOptionsOpenInPlaceKey"] = UIApplicationOpenURLOptionsOpenInPlaceKey;
	p = (void*) &UIApplicationLaunchOptionsNewsstandDownloadsKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsNewsstandDownloadsKey"] = UIApplicationLaunchOptionsNewsstandDownloadsKey;
	p = (void*) &UIApplicationLaunchOptionsSourceApplicationKey;
	if (p != NULL) context[@"UIApplicationLaunchOptionsSourceApplicationKey"] = UIApplicationLaunchOptionsSourceApplicationKey;
	p = (void*) &UIApplicationOpenURLOptionsAnnotationKey;
	if (p != NULL) context[@"UIApplicationOpenURLOptionsAnnotationKey"] = UIApplicationOpenURLOptionsAnnotationKey;
	p = (void*) &UIApplicationBackgroundRefreshStatusDidChangeNotification;
	if (p != NULL) context[@"UIApplicationBackgroundRefreshStatusDidChangeNotification"] = UIApplicationBackgroundRefreshStatusDidChangeNotification;
	p = (void*) &UIContentSizeCategoryExtraSmall;
	if (p != NULL) context[@"UIContentSizeCategoryExtraSmall"] = UIContentSizeCategoryExtraSmall;
}
void UIKit_UIApplicationProtocols()
{
	(void)@protocol(UIApplicationDelegate);
}
void load_UIKit_UIApplication_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
