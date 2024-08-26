#import <JavaScriptCore/JavaScriptCore.h>

void loadNFISecurityModules(JSContext* context);
JSValue* extractNFISecurityStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFISecurityStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
