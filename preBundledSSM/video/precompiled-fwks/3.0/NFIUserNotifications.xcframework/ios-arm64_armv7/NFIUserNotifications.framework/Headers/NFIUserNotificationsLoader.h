#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIUserNotificationsModules(JSContext* context);
JSValue* extractNFIUserNotificationsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIUserNotificationsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
