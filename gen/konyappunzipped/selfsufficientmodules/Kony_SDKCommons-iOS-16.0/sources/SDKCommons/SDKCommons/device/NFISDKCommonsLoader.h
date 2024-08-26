#import <JavaScriptCore/JavaScriptCore.h>

void loadNFISDKCommonsModules(JSContext* context);
JSValue* extractNFISDKCommonsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFISDKCommonsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
