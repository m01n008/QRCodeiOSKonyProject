#import <JavaScriptCore/JavaScriptCore.h>

void loadNFICoreImageModules(JSContext* context);
JSValue* extractNFICoreImageStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFICoreImageStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
