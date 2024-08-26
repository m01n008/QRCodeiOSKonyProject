#import <objc/runtime.h>
#import "allincludes.h"
#import "ClassExtension.h"
#import "PointerSupport.h"
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wformat-security"
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wincompatible-pointer-types"
#pragma clang diagnostic ignored "-Wnullability-completeness"
@implementation UIUserNotificationCategory (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
@implementation UIUserNotificationAction (Exports)
-(id) jsinit
{
	id resultVal__;
	resultVal__ = [[self init] autorelease];
	return resultVal__;
}
-(id) jsinitWithCoder: (NSCoder *) aDecoder 
{
	id resultVal__;
	resultVal__ = [[self initWithCoder: aDecoder ] autorelease];
	return resultVal__;
}
@end
static void addProtocols()
{
	class_addProtocol([UIMutableUserNotificationAction class], @protocol(UIMutableUserNotificationActionInstanceExports));
	class_addProtocol([UIMutableUserNotificationAction class], @protocol(UIMutableUserNotificationActionClassExports));
	class_addProtocol([UIUserNotificationCategory class], @protocol(UIUserNotificationCategoryInstanceExports));
	class_addProtocol([UIUserNotificationCategory class], @protocol(UIUserNotificationCategoryClassExports));
	class_addProtocol([UIUserNotificationSettings class], @protocol(UIUserNotificationSettingsInstanceExports));
	class_addProtocol([UIUserNotificationSettings class], @protocol(UIUserNotificationSettingsClassExports));
	class_addProtocol([UIMutableUserNotificationCategory class], @protocol(UIMutableUserNotificationCategoryInstanceExports));
	class_addProtocol([UIMutableUserNotificationCategory class], @protocol(UIMutableUserNotificationCategoryClassExports));
	class_addProtocol([UIUserNotificationAction class], @protocol(UIUserNotificationActionInstanceExports));
	class_addProtocol([UIUserNotificationAction class], @protocol(UIUserNotificationActionClassExports));
}
static void registerEnumConstants(JSContext* context)
{
	context[@"UIUserNotificationTypeNone"] = @0U;
	context[@"UIUserNotificationTypeBadge"] = @1U;
	context[@"UIUserNotificationTypeSound"] = @2U;
	context[@"UIUserNotificationTypeAlert"] = @4U;

	context[@"UIUserNotificationActionBehaviorDefault"] = @0U;
	context[@"UIUserNotificationActionBehaviorTextInput"] = @1U;

	context[@"UIUserNotificationActivationModeForeground"] = @0U;
	context[@"UIUserNotificationActivationModeBackground"] = @1U;

	context[@"UIUserNotificationActionContextDefault"] = @0U;
	context[@"UIUserNotificationActionContextMinimal"] = @1U;

}
static void registerGlobalConstants(JSContext* context)
{
	void* p; p = NULL;
	p = (void*) &UIUserNotificationTextInputActionButtonTitleKey;
	if (p != NULL) context[@"UIUserNotificationTextInputActionButtonTitleKey"] = UIUserNotificationTextInputActionButtonTitleKey;
}
void load_UIKit_UIUserNotificationSettings_symbols(JSContext* context)
{
    addProtocols();
    registerEnumConstants(context);
    registerGlobalConstants(context);
}
#pragma clang diagnostic pop
