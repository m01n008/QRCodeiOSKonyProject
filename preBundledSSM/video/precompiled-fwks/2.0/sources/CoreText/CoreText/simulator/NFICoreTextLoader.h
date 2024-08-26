#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreTextModules(JSContext* context);
JSValue* extractNFICoreTextStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreTextStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
