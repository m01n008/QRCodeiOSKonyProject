#import <JavaScriptCore/JavaScriptCore.h>

void loadNFIUIKitModules(JSContext* context);
JSValue* extractNFIUIKitStructArgument(const char* type, NSInvocation* invocation, NSUInteger index, JSContext* context);
BOOL setNFIUIKitStructReturnValue(const char* type, JSValue* value, NSInvocation* invocation);
