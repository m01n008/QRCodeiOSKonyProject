#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIAVKitModules(JSContext* context);
JSValue* extractNFIAVKitStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIAVKitStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
