#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreFoundationModules(JSContext* context);
JSValue* extractNFICoreFoundationStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreFoundationStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
