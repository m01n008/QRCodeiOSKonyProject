#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICFNetworkModules(JSContext* context);
JSValue* extractNFICFNetworkStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICFNetworkStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
