#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreVideoModules(JSContext* context);
JSValue* extractNFICoreVideoStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreVideoStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
