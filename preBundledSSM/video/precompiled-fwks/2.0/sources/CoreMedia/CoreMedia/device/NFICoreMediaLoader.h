#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreMediaModules(JSContext* context);
JSValue* extractNFICoreMediaStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreMediaStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
