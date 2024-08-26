#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreGraphicsModules(JSContext* context);
JSValue* extractNFICoreGraphicsStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreGraphicsStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
